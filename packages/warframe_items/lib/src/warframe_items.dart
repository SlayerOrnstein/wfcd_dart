import 'dart:async';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:warframe_items/src/builders/customs_builder.dart';
import 'package:warframe_items/src/configs/export_category.dart';
import 'package:warframe_items/src/models/models.dart';
import 'package:warframe_items/src/public_export.dart';

typedef OnProgress = void Function(ExportCategory category, int count, int total);

typedef ProcessImage = FutureOr<void> Function(String imageName, Uint8List image);

abstract class ItemStorage {
  FutureOr<ItemObject?> getItem(String uniqueName);

  FutureOr<List<ItemObject>> getItems();

  FutureOr<String> storeImage(Schema schema, Uint8List image);

  FutureOr<void> storeItems(List<ItemObject> items);
}

class WarframeItems {
  WarframeItems({required this.storage, Client? client}) : _client = client ?? Client();

  final Client _client;
  final ItemStorage storage;

  final missingImages = <String>[];

  Future<void> generate({OnProgress? onProgress}) async {
    final publicExports = PublicExport('en', _client);
    final exports = await publicExports.fetchAllExports();
    final textures = await publicExports.fetchManifest();
    final items = <ItemObject>[];

    for (final export in exports) {
      if (export.category != ExportCategory.customs) continue;
      final category = export.category;
      final total = export.manifest.length;

      var count = 0;
      for (final item in export.manifest) {
        final schema = GenericSchema.fromMap(item);
        final object = CustomsBuilder(raw: schema);
        final texture = textures.firstWhereOrNull((t) => t.uniqueName == schema.uniqueName);
        if (texture == null) {
          missingImages.add(schema.uniqueName);
          items.add(object.build(''));
          continue;
        }

        final location = Uri.parse('http://content.warframe.com/PublicExport${texture.textureLocation}');
        final image = await _client.get(location).timeout(const Duration(seconds: 60));

        final imagePath = await storage.storeImage(schema, image.bodyBytes);
        items.add(object.build(imagePath));

        onProgress?.call(category, count, total);
        count++;
      }
    }

    await storage.storeItems(items);
  }
}
