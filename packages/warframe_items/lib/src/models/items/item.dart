import 'package:dart_mappable/dart_mappable.dart';

part 'item.mapper.dart';

@MappableClass()
abstract class ItemObject with ItemObjectMappable {
  ItemObject({
    required this.uniqueName,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.type,
    required this.category,
    required this.productCategory,
    this.isHiddenInCodex = false,
  });

  factory ItemObject.fromMap(Map<String, dynamic> map) => ItemObjectMapper.fromMap(map);

  final String uniqueName;
  final String name;
  final String description;
  final String imagePath;
  final bool isHiddenInCodex;
  final String type;
  final String category;
  final String? productCategory;
}
