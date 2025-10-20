import 'package:warframe_items/src/builders/item_builder.dart';
import 'package:warframe_items/src/configs/category_types.dart';
import 'package:warframe_items/src/configs/configs.dart';
import 'package:warframe_items/src/models/models.dart';

class CustomsBuilder extends ItemBuilder<GenericSchema, Cosmetic> {
  CustomsBuilder({required super.raw});

  @override
  ItemType get type {
    final types = [ItemType.skin, ItemType.skin, ItemType.sigil];

    for (final type in types) {
      final regex = type.patterns.map(RegExp.new);
      for (final pattern in regex) {
        if (!pattern.hasMatch(raw.uniqueName)) continue;
        return type;
      }
    }

    return ItemType.misc;
  }

  @override
  CategoryType get category {
    return switch (type) {
      ItemType.sigil => CategoryType.sigils,
      ItemType.skin || ItemType.skins => CategoryType.skins,
      _ => CategoryType.misc,
    };
  }

  @override
  Cosmetic build(String imagePath) {
    return switch (category) {
      CategoryType.sigils => Sigil(
        uniqueName: raw.uniqueName,
        name: raw.name,
        description: raw.description ?? '',
        imagePath: imagePath,
        type: type.value,
        category: category.value,
        productCategory: raw.productCategory,
        isHiddenInCodex: raw.codexSecret,
      ),
      CategoryType.skins => Skin(
        uniqueName: raw.uniqueName,
        name: raw.name,
        description: raw.description ?? '',
        imagePath: imagePath,
        type: type.value,
        category: category.value,
        productCategory: raw.productCategory,
        isHiddenInCodex: raw.codexSecret,
      ),
      _ => Skin(
        // TODO(orn): change this to proper types later
        uniqueName: raw.uniqueName,
        name: raw.name,
        description: raw.description ?? '',
        imagePath: imagePath,
        type: type.value,
        category: category.value,
        productCategory: raw.productCategory,
        isHiddenInCodex: raw.codexSecret,
      ),
      // _ => throw Exception('Not a valid Cosmetic type'),
    };
  }
}
