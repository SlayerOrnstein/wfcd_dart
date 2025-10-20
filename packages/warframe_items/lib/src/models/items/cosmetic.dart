import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/items/item.dart';
import 'package:warframe_items/warframe_items.dart';

part 'cosmetic.mapper.dart';

@MappableClass()
abstract class Cosmetic extends ItemObject with CosmeticMappable {
  Cosmetic({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imagePath,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.isHiddenInCodex,
  });

  factory Cosmetic.fromMap(Map<String, dynamic> map) => CosmeticMapper.fromMap(map);
}

@MappableClass(discriminatorValue: Skin.checkType)
class Skin extends Cosmetic with SkinMappable {
  Skin({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imagePath,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.isHiddenInCodex,
  });

  static bool checkType(dynamic value) {
    if (value! is Map) return false;
    final type = ItemType.findType((value as Map)['uniqueName'] as String);

    return type == ItemType.skin || type == ItemType.skins;
  }
}

@MappableClass()
class Sigil extends Cosmetic with SigilMappable {
  Sigil({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imagePath,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.isHiddenInCodex,
  });
}
