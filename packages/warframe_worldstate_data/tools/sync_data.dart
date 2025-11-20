import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:path/path.dart';

const version = '3.1.8';
const archiveLink = 'https://github.com/WFCD/warframe-worldstate-data/archive/refs/tags/v$version.zip';

// Formats data into json structs that slang can use
String formatNewData(String data, String type) {
  const encoder = JsonEncoder.withIndent('    ');
  final json = jsonDecode(data);

  if (type == 'archonShards') {
    final map = <String, dynamic>{};
    for (final key in (json as Map<String, dynamic>).keys) {
      final shard = json[key] as Map<String, dynamic>;
      final upgradeTypes = shard['upgradeTypes'] as Map<String, dynamic>;

      map[key] = <String, dynamic>{
        'value': shard['value'] as String,
        'upgradeTypes(map)': upgradeTypes.map((key, type) => MapEntry(key, type['value'] as String)),
      };
    }

    return encoder.convert({'shards(map)': map});
  }

  if (type == 'conclaveData' || type == 'sortieData') {
    final map = <String, dynamic>{};
    for (final key in (json as Map<String, dynamic>).keys) {
      if (json[key] is List) {
        map[key] = json[key];
        continue;
      }

      if (key == 'challenges') {
        final dedupped = <String, dynamic>{};
        final challenges = json[key] as Map<String, dynamic>;
        for (final key in challenges.keys) {
          final sanitized = key.replaceAll('_', '');
          if (dedupped.containsKey(sanitized)) continue;
          dedupped[sanitized] = challenges[sanitized];
        }

        map['$key(map)'] = dedupped;
        continue;
      }

      map['$key(map)'] = json[key];
    }

    return encoder.convert(map);
  }

  if (type == 'factionsData') {
    return encoder.convert({
      'factions(map)': (json as Map<String, dynamic>).map(
        (key, value) => MapEntry(key, (value as Map<String, dynamic>)['value']),
      ),
    });
  }

  if (type == 'fissureModifiers') {
    return encoder.convert({'modifiers(map)': json});
  }

  if (type == 'languages') {
    return encoder.convert({'languages(map)': json});
  }

  if (type == 'missionTypes' || type == 'operationTypes' || type == 'upgradeTypes') {
    return encoder.convert({'types(map)': json});
  }

  if (type == 'solNodes') {
    return encoder.convert({'nodes(map)': json});
  }

  if (type == 'syndicatesData') {
    return encoder.convert({'syndicates(map)': json});
  }

  if (type == 'synthTargets') {
    return encoder.convert({'targets': json});
  }

  // Assume it's a list or a map with key:list items
  return encoder.convert(json);
}

void moveDir(Directory dir, String out, [String? locale]) {
  const ignore = ['eventsData', 'index', 'persistentEnemyData', 'tutorials', 'arcanes'];

  for (final entity in dir.listSync()) {
    final basen = basename(entity.path);
    final name = basen.split('.').first;
    final ext = basen.split('.').last;
    final type = entity.statSync().type;

    if (ignore.contains(name)) continue;

    final lang = locale ?? 'en';
    if (type == FileSystemEntityType.file) {
      final newPath = join(out, '${name}_$lang.i18n.$ext');
      File(entity.path).copySync(newPath);

      final file = File(newPath);
      final data = file.readAsStringSync();

      file.writeAsStringSync(formatNewData(data, name));
    }

    if (type == FileSystemEntityType.directory) {
      final newDir = Directory(join(out, name))..createSync(recursive: true);
      moveDir(Directory(entity.path), newDir.path, name);
    }
  }
}

/// Helps keep data synced up with the main warframe-worldstate-data repo
Future<void> main() async {
  final packageRoot = Platform.script.resolve('../');
  final root = Directory(packageRoot.toFilePath());

  final tools = Directory(packageRoot.resolve('tools/').toFilePath());
  final temp = tools.createTempSync();

  final request = await HttpClient().getUrl(Uri.parse(archiveLink));
  final response = await request.close();

  final bytes = BytesBuilder();
  await response.forEach(bytes.add);

  final archive = ZipDecoder().decodeBytes(bytes.takeBytes());
  await extractArchiveToDisk(archive, temp.path);

  final path = join(temp.path, 'warframe-worldstate-data-$version', 'data');
  final data = Directory(path);

  final newDir = Directory('${root.path}data')..createSync();
  moveDir(data, newDir.path);

  await temp.delete(recursive: true);
}
