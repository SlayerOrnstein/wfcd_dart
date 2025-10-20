import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:hive_ce/hive.dart';
import 'package:image/image.dart' as img;
import 'package:mason_logger/mason_logger.dart';
import 'package:path/path.dart' as path;
import 'package:warframe_items/src/warframe_items.dart';
import 'package:warframe_items/warframe_items.dart';

Future<void> main() async {
  final storage = await HiveItemsStorage.open();
  final items = WarframeItems(storage: storage);
  final progress = Logger().progress('Building Items');

  await items.generate(onProgress: (category, count, total) => progress.update('$category $count/$total'));
  progress.complete();

  await storage.close();
}

class HiveItemsStorage implements ItemStorage {
  HiveItemsStorage(this._box);

  final Box<Map<String, dynamic>> _box;

  final _logger = Logger();

  static Future<HiveItemsStorage> open({String? path}) async {
    final defaultPath = Directory.current.path;
    Hive.init('${path ?? defaultPath}/');

    return HiveItemsStorage(await Hive.openBox('./warframe_items'));
  }

  @override
  FutureOr<ItemObject?> getItem(String uniqueName) {
    final item = _box.get(uniqueName);
    if (item == null) return null;

    return ItemObject.fromMap(item);
  }

  @override
  List<ItemObject> getItems() {
    return _box.toMap().entries.map((e) => ItemObject.fromMap(e.value)).toList();
  }

  @override
  Future<String> storeImage(Schema schema, Uint8List image) async {
    final uniqueName = schema.uniqueName.split('/').last;

    return Isolate.run(() async {
      final images = Directory(path.join(Directory.current.path, 'images'));
      if (!images.existsSync()) images.createSync();

      final file = File(path.join(images.path, uniqueName));
      if (file.existsSync()) return file.path;

      try {
        final cmd = img.Command()
          ..decodeImage(image)
          ..writeToFile('${file.path}.png');

        await cmd.executeThread();
      } on Exception catch (e) {
        print(e);
      }

      return '${file.absolute.path}.png';
    });
  }

  @override
  Future<void> storeItems(List<ItemObject> items) async {
    final progress = _logger.progress('Storing ${items.length} items');

    var count = 0;
    for (final item in items) {
      await _box.put(item.uniqueName, item.toMap());
      count++;
      progress.update('Storing $count/${items.length} items');
    }

    progress.complete('All items stored');
  }

  Future<void> close() async {
    await File(path.join(Directory.current.path, 'dump.json')).writeAsString(json.encode(_box.toMap().values.toList()));
    await _box.close();
  }
}
