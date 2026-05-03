import 'package:warframe_worldstate_data/src/i18n/i18n.dart';
import 'package:warframe_worldstate_data/src/i18n/syndicates.dart';
import 'package:warframe_worldstate_data/src/tools.dart';
import 'package:warframe_worldstate_data/src/types.dart';

/// Get a faction string from the given [resource] in the given [locale]
String faction(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) =>
    factions(locale)[resource] ?? toTitleCase(resource.replaceAll('FC_', ''));

/// Get mission type string.
///
/// A normalized version of the [resource] will be returned if one is not found.
String missionType(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  return missionTypes(locale)[resource] ?? toTitleCase(resource.replaceAll('MT_', '').replaceAll('_', ' '));
}

/// Get the sortie boss and respective faction from [resource]
SortieFaction sortieFaction(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  final bosses = sortieData(locale)['bosses'] as Map<String, dynamic>;
  final boss = bosses[resource] as Map<String, dynamic>;

  return (boss: boss['name'] ?? resource, faction: boss['faction'] ?? resource);
}

/// Get sortie modifier type and description from [resource]
SortieModifier sortieModifier(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  final modifiers = sortieData(locale)['modifiers'] as Map<String, SortieModifier>;
  final type = modifiers[resource];
  if (type != null) return type;

  final placeholder = toTitleCase(resource).replaceAll('_', ' ');
  return (title: placeholder, description: '[PH] $placeholder Desc');
}

/// Translate Season to in-game names
// @Deprecated('use languages() for localized text of the given season')
String translateSeason(String season) => toTitleCase(season.replaceAll('CST_', ''));

/// Get syndicate name
String syndicate(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  return syndicates(locale)[resource] ?? normalizeResourceName(resource);
}

/// Return all synthTargets in the given [locale]
List<SynthTarget> synthTargets([WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  SynthTargetLocation toLocation(Map<String, dynamic> l) {
    return (
      lastVerified: l['last_verified'] as String,
      level: l['level'] as String,
      faction: l['faction'] as String,
      spawnRate: l['spawn_rate'] as String,
      mission: l['mission'] as String,
      planet: l['planet'] as String,
      type: l['type'] as String,
    );
  }

  return synthTargetsData(locale)
      .map(
        (t) => (
          name: t['name'] as String,
          imageKey: t['imageKey'] as String,
          locations: List<Map<String, dynamic>>.from(t['locations'] as List<dynamic>).map(toLocation).toList(),
        ),
      )
      .toList();
}

/// Get global upgrade type
String upgradeType(String type, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  return upgradeTypes(locale)[type] ?? type;
}

/// Get operation type
({String symbol, String value}) operationType(String type, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  final op = operationTypes(locale)[type] as Map<String, dynamic>?;

  if (op == null) return (symbol: type, value: type);

  return (symbol: op['symbol'], value: op['value']);
}
