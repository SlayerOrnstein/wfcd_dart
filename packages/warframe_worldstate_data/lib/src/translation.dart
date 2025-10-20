import 'package:warframe_worldstate_data/src/i18n/worldstate_langs.g.dart' as langs;
import 'package:warframe_worldstate_data/src/tools.dart';
import 'package:warframe_worldstate_data/src/types.dart';

/// Get all faction strings in the given [locale]
Map<String, String> factions([String locale = 'en']) => i18n(locale).factionsData.factions;

/// Get a faction string from the given [resource] in the given [locale]
String faction(String resource, [String locale = 'en']) =>
    factions(locale)[resource] ?? toTitleCase(resource.replaceAll('FC_', ''));

/// Get all fissures
Map<String, FissureModifier> fissures([String locale = 'en']) =>
    i18n(locale).fissureModifiers.modifiers.map((s, f) => MapEntry(s, (name: f.value, tier: int.parse(f.num))));

/// Get fissure tier info based on [resource]
///
/// Will fallback to sanitized version of [resource] if strings don't exist
FissureModifier fissure(String resource, [String locale = 'en']) {
  return fissures(locale)[resource] ?? (name: resource, tier: int.parse(resource.replaceAll(RegExp('[a-zA-Z]+'), '')));
}

/// Get all mission types
Map<String, String> missionTypes([String locale = 'en']) =>
    i18n(locale).missionTypes.types.map((s, mt) => MapEntry(s, mt.value));

/// Get mission type string.
///
/// A normalized version of the [resource] will be returned if one is not found.
String missionType(String resource, [String locale = 'en']) {
  return missionTypes(locale)[resource] ?? toTitleCase(resource.replaceAll('MT_', '').replaceAll('_', ' '));
}

/// Get the sortie boss and respective faction from [resource]
SortieFaction sortieFaction(String resource, [String locale = 'en']) {
  final boss = i18n(locale).sortieData.bosses[resource];

  return (boss: boss?.name ?? resource, faction: boss?.faction ?? resource);
}

/// Get sortie modifier type and description from [resource]
SortieModifier sortieModifier(String resource, [String locale = 'en']) {
  final type = i18n(locale).sortieData.modifierTypes[resource] ?? toTitleCase(resource).replaceAll('_', ' ');
  final desc = i18n(locale).sortieData.modifierDescriptions[resource];

  return (type: type, description: desc ?? '[PH] $type Desc');
}

/// Get Steel path rotation and evergreen items
SteelPathData steelPath([String locale = 'en']) {
  final data = i18n(locale).steelPath;

  return (
    rotation: data.rotation.map((s) => (name: s.name, cost: int.parse(s.cost))).toList(),
    evergreen: data.evergreen.map((e) => (name: e.name, cost: int.parse(e.cost))).toList(),
  );
}

/// Translate Season to in-game names
// @Deprecated('use languages() for localized text of the given season')
String translateSeason(String season) => toTitleCase(season.replaceAll('CST_', ''));

/// Get syndicate name
String syndicate(String resource, [String locale = 'en']) {
  return i18n(locale).syndicatesData.syndicates[resource]?.name ?? normalizeResourceName(resource);
}

/// Return all synthTargets in the given [locale]
List<SynthTarget> synthTargets([String locale = 'en']) {
  SynthTargetLocation toLocation(langs.SynthTargetLocation l) {
    return (
      lastVerified: l.last_verified,
      level: l.level,
      faction: l.faction,
      spawnRate: l.spawn_rate,
      mission: l.mission,
      planet: l.planet,
      type: l.type,
    );
  }

  return i18n(locale).synthTargets.targets
      .map((t) => (name: t.name, imageKey: t.imageKey, locations: t.locations.map(toLocation).toList()))
      .toList();
}

/// Get global upgrade type
String upgradeType(String type, [String locale = 'en']) {
  return i18n(locale).upgradeTypes.types[type]?.value ?? type;
}

/// Get operation type
({String symbol, String value}) operationType(String type, [String locale = 'en']) {
  final op = i18n(locale).operationTypes.types[type];

  if (op == null) return (symbol: type, value: type);

  return (symbol: op.symbol, value: op.value);
}
