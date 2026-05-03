import 'package:collection/collection.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

/// Type safe way of handling fissure tiers and their translations
enum FissureTier {
  /// Lith
  lith,

  /// Meso
  meso,

  /// Neo
  neo,

  /// Axi
  axi,

  /// Requiem
  requiem,

  /// Omnia
  omnia,

  /// Only for new tiers that haven't been added. That means that any new tiers need to be added before unknown
  unknown;

  const FissureTier();

  factory FissureTier.fromKey(String key) {
    return FissureTier.values.firstWhereOrNull((i) => i.key == key) ?? FissureTier.unknown;
  }

  /// Returns this as an internal key
  String get key => 'VoidT${FissureTier.values.indexOf(this) + 1}';

  /// See [fissureTranslations]
  FissureModifier translation([WorldstateDataLocale locale = .en]) => fissureTranslations(key, locale);
}

/// Get fissure tier info based on [resource]
///
/// Will fallback to sanitized version of [resource] if strings don't exist
FissureModifier fissureTranslations(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  return fissures(locale)[resource] ?? (value: resource, tier: int.parse(resource.replaceAll(RegExp('[a-zA-Z]+'), '')));
}
