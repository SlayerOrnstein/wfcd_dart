import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:warframe_items/src/enums.dart';
import 'package:warframe_items/src/exception.dart';
import 'package:warframe_items/src/item_context.dart';
import 'package:warframe_items/src/items.dart';
import 'package:warframe_items/src/models/i18n_data.dart';
import 'package:warframe_items/src/procesors/processors.dart';
import 'package:warframe_items/src/public_export.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

typedef Preprocessor = Map<String, dynamic> Function(ItemContext);

typedef OnProgress = void Function(String message, {int current, int total});

class WarframeItems {
  WarframeItems({Client? client, this.onProgress}) : _client = client ?? Client() {
    addPreprocessor(sanitizeItem);
    addPreprocessor(addTypes);
    addPreprocessor(addCategory);
    addPreprocessor(addImageName);
  }

  final Client _client;
  final OnProgress? onProgress;

  // Sortie rewards contain dynamic weekly data so get seperatly
  final List<ExportTypes> _types = [...ExportTypes.values]
    ..remove(ExportTypes.sortieRewards)
    ..remove(ExportTypes.manifest);

  final _preproccesors = <Preprocessor>[];

  void addPreprocessor(Preprocessor processor) => _preproccesors.add(processor);

  Future<Map<String, dynamic>> buildWeeklyRewards([Languages locale = .en]) async {
    final publicExport = PublicExport(_client);
    final index = await publicExport.fetchIndex(locale);
    final rewardEntry = _findEntry(index, ExportTypes.sortieRewards);
    final textureEntry = _findEntry(index, ExportTypes.manifest);

    final sortieRewards = await publicExport.fetchManifest(rewardEntry);

    final manifest = await publicExport.fetchManifest(textureEntry);
    final textures = List<Map<String, dynamic>>.from(manifest['Manifest'] as List<dynamic>);

    final results = <String, dynamic>{};
    for (final key in sortieRewards.keys) {
      final category = key.replaceAll('Export', '').trim();

      if (category == 'SortieRewards') {
        final rewards = <Map<String, dynamic>>[];
        for (final reward in List<Map<String, dynamic>>.from(sortieRewards[key] as List<dynamic>)) {
          reward.removeWhere((key, value) => value == null);

          reward['uniqueName'] = reward['rewardName'];
          reward['name'] = languages()
              .fetchValue(reward['rewardName'] as String)
              .replaceAll(RegExp('[0-9]'), '')
              .trim();

          reward
            ..remove('rewardName')
            ..update('rarity', (rarity) => toTitleCase(rarity as String));

          if (reward.containsKey('itemCount')) {
            reward['quantity'] = reward['itemCount'];
            reward.remove('itemCount');

            reward['chance'] = reward['probability'];
            reward.remove('probability');

            rewards.add(reward);
            continue;
          }

          rewards.add(reward);
        }

        results[category] = _parseItems(category, rewards, textures).toList();
      }

      if (category == 'Nightwave') {
        final nightwave = sortieRewards[key] as Map<String, dynamic>;
        nightwave['tag'] = nightwave['affiliationTag'] as String;
        nightwave.remove('affiliationTag');

        nightwave['challenges'] = _parseItems(
          category,
          List<Map<String, dynamic>>.from(nightwave['challenges'] as List<dynamic>),
          textures,
        ).toList();

        final rewards = <Map<String, dynamic>>[];
        for (final reward in List<Map<String, dynamic>>.from(nightwave['rewards'] as List<dynamic>)) {
          if (reward.containsKey('itemCount')) {
            reward['quantity'] = reward['itemCount'];
            reward.remove('itemCount');
            rewards.add(reward);
            continue;
          }

          rewards.add(reward);
        }

        nightwave['rewards'] = rewards;

        results[category] = nightwave;
      }
    }

    return results;
  }

  Future<Items> build({bool includeL18n = false}) async {
    final publicExport = PublicExport(_client);
    final results = <Category, List<Map<String, dynamic>>>{};

    onProgress?.call('Fetching index...', total: 1);
    final enIndex = await publicExport.fetchIndex(Languages.en);

    onProgress?.call('Fetching resources...', total: enIndex.length);
    final resources = _types.mapIndexed((index, export) async {
      onProgress?.call('Fetching resources...', total: enIndex.length, current: index + 1);
      final entry = _findEntry(enIndex, export);
      return publicExport.fetchManifest(entry);
    });

    final exports = await Future.wait(resources);

    onProgress?.call('Fetching textures...', total: 1);
    final manifest = await publicExport.fetchManifest(_findEntry(enIndex, ExportTypes.manifest));
    final textures = List<Map<String, dynamic>>.from(manifest['Manifest'] as List<dynamic>);

    for (final export in exports) {
      var categoryCount = 1;
      for (final key in export.keys) {
        final category = key.replaceAll('Export', '').trim();
        onProgress?.call('Parsing $category', current: categoryCount, total: export.keys.length);

        var items = List<Map<String, dynamic>>.from(export[key] as List<dynamic>);
        items = _parseItems(category, items, textures).toList();

        for (final item in items) {
          if (includeL18n) {
            item['i18n'] = <String, Map<String, dynamic>>{
              'en': I18nData.fromMap(item).toMap(),
            };
          }

          results.update(
            Category.values.byName((item['category'] as String).toLowerCase()),
            (value) => value..add(item),
            ifAbsent: () => [item],
          );
        }

        categoryCount++;
      }
    }

    if (includeL18n) {
      onProgress?.call('Fetching l18n...', total: enIndex.length * Languages.values.length);

      var count = 1;
      for (final lang in Languages.values.where((l) => l != Languages.en)) {
        onProgress?.call('Fetching l18n...', current: count, total: enIndex.length * Languages.values.length);
        await _mergeLanguage(publicExport, results, lang);
        count++;
      }
    }

    return Items(results, textures);
  }

  Future<void> _mergeLanguage(
    PublicExport fetcher,
    Map<Category, List<Map<String, dynamic>>> results,
    Languages lang,
  ) async {
    final index = await fetcher.fetchIndex(lang);

    for (final type in _types) {
      final entry = _tryFindEntry(index, type);
      if (entry == null) continue;

      final json = await fetcher.fetchManifest(entry);
      for (final key in json.keys) {
        final category = key.replaceAll('Export', '').trim();
        var langItems = List<Map<String, dynamic>>.from(json[key] as List<dynamic>);
        langItems = _parseItems(category, langItems, []).toList();

        // Build uniqueName lookup
        final lookup = {
          for (final item in langItems.where((i) => i['uniqueName'] != null)) item['uniqueName'] as String: item,
        };

        for (final key in results.keys) {
          // Merge into base
          for (final item in results[key]!) {
            final langItem = lookup[item['uniqueName']];
            if (langItem != null) {
              (item['i18n'] as Map<String, Map<String, dynamic>>)[lang.code] = I18nData.fromMap(langItem).toMap();
            }
          }
        }
      }
    }
  }

  ManifestEntry _findEntry(List<ManifestEntry> index, ExportTypes type) {
    return index.firstWhere(
      (e) => e.exportType == type.rootKey,
      orElse: () => throw WarframeExportException('Not found: ${type.rootKey}'),
    );
  }

  ManifestEntry? _tryFindEntry(List<ManifestEntry> index, ExportTypes type) {
    return index.where((e) => e.exportType == type.rootKey).firstOrNull;
  }

  Iterable<Map<String, dynamic>> _parseItems(
    String category,
    List<Map<String, dynamic>> items,
    List<Map<String, dynamic>> manifest, {
    bool includeL18n = false,
  }) sync* {
    onProgress?.call('Parsing $category...', total: items.length);
    var count = 1;
    for (final item in items) {
      var i = {...item};

      onProgress?.call('Parsing $category...', total: items.length, current: count);
      for (final processor in _preproccesors) {
        final context = ItemContext(
          item: Map<String, dynamic>.unmodifiable(i),
          category: category,
          textures: manifest,
        );

        i = processor(context);
      }

      if (includeL18n) {
        i['i18n'] = <String, Map<String, dynamic>>{
          'en': I18nData.fromMap(i).toMap(),
        };
      }

      count++;
      yield item
        ..clear()
        ..addEntries(i.entries);
    }
  }
}
