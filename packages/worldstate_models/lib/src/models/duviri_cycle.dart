import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'duviri_cycle.mapper.dart';

/// Durviri states in a static enum
@MappableEnum(caseStyle: CaseStyle.pascalCase)
enum DuviriState {
  ///
  sorrow,

  ///
  fear,

  ///
  joy,

  ///
  anger,

  ///
  envy,
}

/// {@template raw_choice_object}
/// Raw data for a choice object
/// {@endtemplate}
@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawChoiceObject with RawChoiceObjectMappable {
  /// Constructor
  RawChoiceObject({required this.categoryChoices});

  /// Constructor from map
  factory RawChoiceObject.fromMap(Map<String, dynamic> map) => RawChoiceObjectMapper.fromMap(map);

  /// Current rotation for normal and steel path
  final List<RawCategoryChoices> categoryChoices;
}

/// {@template raw_category_choices}
/// Raw Choice data
/// {@endtemplate}
@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawCategoryChoices with RawCategoryChoicesMappable {
  /// Constructor
  RawCategoryChoices({required this.category, required this.choices});

  /// Constructor from map
  factory RawCategoryChoices.fromMap(Map<String, dynamic> map) => RawCategoryChoicesMapper.fromMap(map);

  /// Whether this is normal or steel path
  final String category;

  /// The choices for the given mode
  final List<String> choices;

  /// Helper function to parse the raw data
  CircuitChoice toCircuitChoice() => CircuitChoice.fromRaw(this);
}

@MappableClass()
class DuviriCycle extends WorldstateObject with DuviriCycleMappable {
  DuviriCycle({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.state,
    required this.choices,
  });

  factory DuviriCycle.fromRaw(RawChoiceObject raw) {
    final phase = calculateCurrentDuviriPhase();
    final choices = raw.categoryChoices;

    return DuviriCycle(
      id: hash('DuviriCycle${phase.state}${phase.expiry.copyWith(millisecond: 0, microsecond: 0)}'),
      activation: phase.activation,
      expiry: phase.expiry,
      state: phase.state,
      choices: choices.map(CircuitChoice.fromRaw).toList(),
    );
  }

  final DuviriState state;
  final List<CircuitChoice> choices;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}

@MappableClass()
class CircuitChoice with CircuitChoiceMappable {
  CircuitChoice({required this.key, required this.choices});

  factory CircuitChoice.fromRaw(RawCategoryChoices raw) {
    return CircuitChoice(key: raw.category, choices: raw.choices.map(normalizeResourceName).toList());
  }

  final String key;
  final List<String> choices;

  @MappableField()
  String get mode => switch (key) {
    'EXC_NORMAL' => 'Normal',
    'EXC_HARD' => 'Steel Path',
    _ => key,
  };
}
