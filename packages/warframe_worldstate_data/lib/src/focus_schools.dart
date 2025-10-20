import 'package:collection/collection.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

/// Focus School names
enum FocusSchools {
  /// Madurai
  madurai('Focus/Attack'),

  /// Vazarin
  vazarin('Focus/Defense'),

  /// Naramon
  naramon('Focus/Tactic'),

  /// Zenurik
  zenurik('Focus/Power'),

  /// Unairu
  unairu('Focus/Ward');

  const FocusSchools(this.value);

  /// Raw value
  final String value;

  /// Translate Focus to in-game name
  static String translateFocus(String name) {
    final value = FocusSchools.values.firstWhereOrNull((v) => name == v.value);

    return value != null ? toTitleCase(value.name) : name;
  }
}
