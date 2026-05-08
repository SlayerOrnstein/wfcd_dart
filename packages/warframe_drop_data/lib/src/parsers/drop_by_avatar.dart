import 'dart:developer' as developer;

import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/models/models.dart';
import 'package:warframe_drop_data/src/utils.dart';

/// Enum of avatars for parsing
enum Avatars {
  /// Resource drops
  resources('resourceByAvatar'),

  /// Sigil drops
  sigils('sigilByAvatar'),

  /// Misc drops
  items('additionalItemByAvatar');

  const Avatars(this.id);

  /// HTML ID
  final String id;
}

/// Parse drop table for different avatars (enemies, items, etc...)
List<Avatar>? parseAvatarDropTables(Element body, Avatars avatar) {
  final table = body.getElementsByTagName('#${avatar.id}').first.nextElementSibling;
  final tbody = table?.children.first;
  if (tbody == null) {
    developer.log('no table for ${avatar.id}');
    return null;
  }

  final sources = <Avatar>[];

  Avatar? source;
  late double baseChance;
  for (final tr in tbody.children.where((tr) => tr.children.isNotEmpty && tr.className != 'blank-row')) {
    final element = tr.children[0];
    final text = element.text;

    if (element.localName == 'th') {
      if (source != null) sources.add(source);

      final chance = RegExp('([0-9]{1,3}.[0-9]{2})').firstMatch(tr.children[1].text)?.group(1);
      if (chance == null) {
        developer.log('Failed to parse ${tr.children[1].text}');
        continue;
      }

      baseChance = double.parse(chance) / 100;
      source = Avatar(id: hash(text), name: text, chance: baseChance, items: []);
    }

    if (element.localName == 'td') {
      final item = tr.children[1].text;
      final itemChance = parseChanceWithRarity(tr.children[2].text);
      if (itemChance == null) {
        developer.log('Failed to parse ${tr.children[2].text}');
        continue;
      }

      final fractional = itemChance.chance / 100 * baseChance;

      source?.items.add(
        ItemDrop(
          id: hash(item),
          item: item,
          rarity: itemChance.rarity,
          chance: double.parse((fractional * 100).toStringAsFixed(2)),
          status: itemChance.status,
        ),
      );
    }
  }
  // Push last item
  if (source != null) sources.add(source);

  return sources;
}
