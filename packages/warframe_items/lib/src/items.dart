import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:warframe_items/src/enums.dart';
import 'package:warframe_items/src/extensions.dart';

class Items {
  Items(this._data, this._textures);

  final Map<Category, List<Map<String, dynamic>>> _data;
  final List<Map<String, dynamic>> _textures;

  List<Map<String, dynamic>> get all => _data.values.flattenedToList;

  List<Map<String, dynamic>> raw(Category category) => _data[category] ?? [];

  Iterable<T> encode<T>(Category category, T Function(Map<String, dynamic>) encoder) {
    return raw(category).map(encoder);
  }

  Iterable<T> encodeWhere<T>(
    Category category,
    T Function(Map<String, dynamic>) encoder, {
    required bool Function(Map<String, dynamic>) where,
  }) {
    return raw(category).where(where).map(encoder);
  }

  Set<Category> get categories => _data.keys.toSet();

  bool has(Category category) => _data.containsKey(category);

  Map<String, dynamic>? findByUniqueName(String uniqueName) {
    for (final items in _data.values) {
      final match = items.where((i) => i['uniqueName'] == uniqueName).firstOrNull;
      if (match != null) return match;
    }
    return null;
  }

  Future<void> saveImages(String path, [Client? client]) async {
    final http = client ?? Client();
    final lookup = {
      for (final texture in _textures) texture['uniqueName'] as String: texture['textureLocation'] as String,
    };

    for (final category in _data.keys) {
      for (final item in _data[category]!) {
        final textureLocation = lookup[item.uniqueName];
        if (textureLocation != null) {
          final response = await http.get(Uri.parse('http://content.warframe.com/PublicExport$textureLocation'));
          final image = File('$path/${item['imageName']}');

          if (!image.existsSync()) {
            image
              ..createSync(recursive: true)
              ..writeAsBytesSync(response.bodyBytes);
          }
        }
      }
    }
  }
}
