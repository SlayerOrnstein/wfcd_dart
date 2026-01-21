import 'package:intl/intl.dart';
import 'package:warframe_items/src/item_context.dart';
import 'package:warframe_items/warframe_items.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

Map<String, dynamic> sanitizeItem(ItemContext context) {
  final copy = {...context.item};

  if (copy['rewardName'] != null) {
    copy['uniqueName'] = copy['rewardName'];
  }

  // Normalize helminth ability props
  if (copy['abilityUniqueName'] != null) {
    copy['uniqueName'] = copy['abilityUniqueName'];
    copy['name'] = toBeginningOfSentenceCase(copy['abilityName'] as String);
    copy['description'] = copy['description'];
    copy['isHelminthAbility'] = copy.uniqueName.contains('Helminth');

    copy
      ..remove('abilityUniqueName')
      ..remove('abilityName')
      ..remove('description');
  }

  // See WarframeItemMap extension
  if (copy['name'] == null) {
    final name = copy['uniqueName'] as String? ?? copy['affiliationTag'] as String? ?? '';
    copy['name'] = normalizeResourceName(name);
  }

  // Capitalize values which are usually all uppercase
  const keys = ['type', 'trigger', 'noise', 'rarity', 'faction'];
  for (final key in keys) {
    final value = copy[key] as String?;
    if (value != null) copy[key] = toBeginningOfSentenceCase(value);
  }

  // Capitalize name for every item that isn't a requiem relic
  if (copy.name.toLowerCase().contains('requiem') && copy.name.toLowerCase().contains('relic')) {
    copy['name'] = toBeginningOfSentenceCase(copy['name'] as String);
  }

  // Remove <Archwing> from archwing names, add archwing key instead
  if (copy.name.contains(RegExp('<Archwing>', caseSensitive: false)) ||
      copy.name.contains('Tenno/Archwing') ||
      copy.name.contains('HeavyWeapons')) {
    copy['name'] = copy.name.replaceAll(RegExp('<Archwing>', caseSensitive: false), '').trim();
    copy['isArchwing'] = true;
  }

  if (copy['type'] == 'Relic') {
    for (final grade in RelicGrades.values) {
      if (copy.uniqueName.contains(grade.id)) {
        copy['name'] = copy.name.replaceAll('Relic', toBeginningOfSentenceCase(grade.name));
      }
    }
  }

  // Normalize abilities so that it matches the expected structure of items
  if (copy['abilities'] != null) {
    copy['abilities'] = List<Map<String, dynamic>>.from(copy['abilities'] as List<dynamic>)
        .map(
          (a) => {
            'uniqueName': a['abilityUniqueName'],
            'name': toBeginningOfSentenceCase(a['abilityName'] as String),
            'description': a['description'],
          },
        )
        .toList();
  }

  // See WarframeItemMap extension
  copy['description'] = copy.description;

  // Use ingame name for polarities
  if (copy['polarity'] != null) {
    copy['polarity'] = Polarities.translatePolarity(copy['polarity'] as String);
  }

  // Remove keys that only increase output size
  if (copy['type'] != 'enemy') copy.remove('longDescription');

  return copy
    ..remove('codexSecret')
    ..remove('parentName')
    ..remove('relicRewards')
    ..remove('subType')
    ..remove('rewardName');
}
