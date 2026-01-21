import 'package:warframe_items/src/item_context.dart';
import 'package:warframe_items/warframe_items.dart';

Map<String, dynamic> addCategory(ItemContext context) {
  final copy = {...context.item};
  if (context.item.containsKey('parent')) return copy;

  final itemType = copy['type'] as String?;
  final itemName = copy['name'] as String?;
  final compatName = copy['compatName'] as String?;
  final slot = copy['slot'] as int?;
  final isArchwing = copy['isArchwing'] as bool? ?? false;
  final systemName = copy['systemName'] as String?;
  final productCategory = copy['productCategory'];

  void setCategory(Category category) => copy.update('category', (_) => category.value, ifAbsent: () => category.value);

  switch (context.category) {
    case 'Customs':
      setCategory(itemType == 'Sigil' ? Category.sigils : Category.skins);

    case 'Drones':
      setCategory(Category.misc);

    case 'Flavour':
      if (itemName?.contains('Sigil') ?? false) setCategory(Category.sigils);
      if (itemName?.contains('Glyph') ?? false) setCategory(Category.glyphs);
      setCategory(Category.skins);

    case 'Gear':
      setCategory(Category.gear);

    case 'Keys':
      setCategory(itemName?.contains('Derelict') ?? false ? Category.relics : Category.quests);

    case 'RelicArcane':
      setCategory(itemType != 'Relic' ? Category.arcanes : Category.relics);

    case 'Sentinels':
      setCategory(itemType == 'Sentinel' ? Category.sentinels : Category.pets);

    case 'Upgrades':
      setCategory(Category.mods);
      if (compatName != 'Warframe' && copy['type'] == 'Warframe Mod') copy['isAugment '] = true;

    case 'Warframes':
      if (productCategory != null && productCategory == 'MechSuits') {
        setCategory(Category.necramech);
      } else {
        setCategory(isArchwing ? Category.archwing : Category.warframes);
      }

    case 'Weapons':
      if (isArchwing) {
        if (slot == null) setCategory(Category.archwing);
        if (slot == 1) setCategory(Category.archGun);
        if (slot == 5) setCategory(Category.archMelee);
      }

      if (itemType?.contains('Pet') ?? false) setCategory(Category.pets);
      if (itemType?.contains('Moa') ?? false) setCategory(Category.pets);
      if (itemType?.contains('K-Drive') ?? false) setCategory(Category.misc);
      if (itemType?.contains('Zaw') ?? false) setCategory(Category.melee);
      if (itemType == 'Pets') setCategory(Category.pets);

      switch (slot) {
        case 5:
          setCategory(Category.melee);
        case 0:
          setCategory(Category.secondary);
        case 1:
          setCategory(Category.primary);
        case 14:
          setCategory(Category.railjack);
        case 7:
          setCategory(Category.exalted);
        default:
          setCategory(Category.misc);
      }

    case 'Resources':
      switch (itemType) {
        case 'Pets':
          setCategory(Category.pets);
        case 'Specter':
          setCategory(Category.gear);
        case 'Resource':
          setCategory(Category.resources);
        case 'Fish':
          setCategory(Category.fish);
        case 'Ship Decoration':
          setCategory(Category.skins);
        case 'Gem':
          setCategory(Category.resources);
        case 'Plant':
          setCategory(Category.resources);
        case 'Relic':
          setCategory(Category.relics);
        default:
          setCategory(Category.misc);
      }
  }

  if (systemName != null) setCategory(Category.node);
  if (itemType == 'Conservation Tag') setCategory(Category.resources);
  if (copy['category'] == null) setCategory(Category.misc);

  return copy;
}
