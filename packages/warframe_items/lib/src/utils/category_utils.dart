import 'package:warframe_items/src/configs/category_types.dart';

void handleWeaponCategory(Map<String, dynamic> item, String key) {
  final type = item['type'] as String;

  if (type.contains('Pet') || type.contains('Moa')) {
    item[key] = CategoryType.pets.value;
    return;
  } else if (type.contains('K-Drive')) {
    item[key] = CategoryType.misc.value;
    return;
  } else if (type.contains('Zaw')) {
    item[key] = CategoryType.melee.value;
    item['slot'] = 5;
    return;
  }

  final slot = item['slot'] as int?;
  final isArchwing = item.remove('isArchwing') as bool;

  String category;
  if (isArchwing) {
    category = switch (slot) {
      1 => item[key] = CategoryType.archGun.value,
      5 => item[key] = CategoryType.archMelee.value,
      _ => item[key] = CategoryType.archwing.value,
    };
  } else {
    category = switch (slot) {
      0 => CategoryType.secondary.value,
      1 => CategoryType.primary.value,
      5 => CategoryType.melee.value,
      14 => CategoryType.railjack.value,
      _ => CategoryType.misc.value,
    };
  }

  item[key] = category;
}

void handResourceCategory(Map<String, dynamic> item, String key) {
  final type = item['type'] as String;

  item[key] = switch (type) {
    'Pets' => CategoryType.pets,
    'Specter' => CategoryType.gear,
    'Resources' => CategoryType.resources,
    'Fish' => CategoryType.fish,
    'Ship Decoration' => CategoryType.skins,
    'Gem' => CategoryType.resources,
    'Plant' => CategoryType.resources,
    'Relic' => CategoryType.relics,
    _ => CategoryType.misc
  };
}
