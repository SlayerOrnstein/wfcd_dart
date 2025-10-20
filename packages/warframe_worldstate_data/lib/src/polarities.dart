import 'package:collection/collection.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

/// Polarities used for the Mod system
enum Polarities {
  /// Mauria
  madurai('AP_ATTACK'),

  /// Vazarin
  vazarin('AP_DEFENSE'),

  /// Naramon
  naramon('AP_TACTIC'),

  /// Zenurik
  zenurik('AP_POWER'),

  /// Unairu
  unairu('AP_WARD'),

  /// Umbra
  umbra('AP_UMBRA'),

  /// Aura
  aura('AP_ANY');

  const Polarities(this.value);

  /// Raw value
  final String value;

  /// Translate polarity to in-game name
  static String translatePolarity(String name) {
    final value = Polarities.values.firstWhereOrNull((v) => name == v.value);

    return value != null ? toTitleCase(value.name) : name;
  }
}
