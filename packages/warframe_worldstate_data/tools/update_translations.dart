import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:path/path.dart';

const version = '3.10.1';
const archiveLink = 'https://github.com/WFCD/warframe-worldstate-data/archive/refs/tags/v$version.zip';

// Formats data into json structs that slang can use
String minifyJson(String data) {
  return json.encode(json.decode(data));
}

void moveDir(Directory dir, String out, [String? locale]) {
  const ignore = ['eventsData', 'index', 'persistentEnemyData', 'tutorials', 'arcanes'];

  for (final entity in dir.listSync()) {
    final basen = basename(entity.path);
    final name = basen.split('.').first;
    final type = entity.statSync().type;

    if (ignore.contains(basen.split('.').first)) continue;

    if (type == FileSystemEntityType.file) {
      final newPath = join(out, name);
      File(entity.path).copySync(newPath);

      final file = File(newPath);
      final data = file.readAsStringSync();

      file.writeAsStringSync(minifyJson(data));
    } else {
      final newDir = Directory(join(out, basen))..createSync(recursive: true);
      moveDir(Directory(entity.path), newDir.path, basen);
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
