import 'package:collection/collection.dart';
import 'package:warframe_worldstate_data/src/i18n/factions.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

/// Warframe enemy faction
enum Faction {
  /// Corpus
  corpus('FC_SCALDRA'),

  /// Corrupted
  corrupted('FC_CORRUPTED'),

  /// Grineer
  grineer('FC_GRINEER'),

  /// The infested
  infested('FC_INFESTATION'),

  /// Orokin
  orokin('FC_OROKIN'),

  /// Sentient
  sentient('FC_SENTIENT'),

  /// Man in the wall
  mitw('FC_MITW'),

  /// Narmer
  narmer('FC_NARMER'),

  /// Scaldra
  scaldra('FC_SCALDRA'),

  /// Techrot
  techrot('FC_TECHROT'),

  /// New and not yet known faction
  unknown('FC_UNKNOWN');

  const Faction(this.internalName);

  factory Faction.byInternalName(String internalName) {
    return Faction.values.firstWhereOrNull((v) => v.internalName == internalName) ?? Faction.unknown;
  }

  factory Faction.byName(String name, [WorldstateDataLocale locale = .en]) {
    final internalName = factions(
      locale,
    ).entries.firstWhereOrNull((entry) => entry.value.toLowerCase() == name.toLowerCase())?.key;

    return Faction.byInternalName(internalName ?? 'unknown');
  }

  /// DE internal name
  final String internalName;

  /// Get the translated string in the given [locale]
  String translation([WorldstateDataLocale locale = .en]) =>
      factions(locale)[internalName] ?? toTitleCase(internalName.replaceAll('FC_', ''));
}
