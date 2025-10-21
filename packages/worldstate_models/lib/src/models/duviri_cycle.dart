import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'duviri_cycle.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.pascalCase)
enum DuviriState { sorrow, fear, joy, anger, envy }

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawCircuitChoice with RawCircuitChoiceMappable {
  RawCircuitChoice({required this.category, required this.choices});

  final String category;
  final List<String> choices;
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

  factory DuviriCycle.fromRaw(List<RawCircuitChoice> raw) {
    final phase = calculateCurrentDuviriPhase();

    return DuviriCycle(
      id: hash(phase.activation.toIso8601String() + phase.expiry.toIso8601String()),
      activation: phase.activation,
      expiry: phase.expiry,
      state: phase.state,
      choices: raw
          .map((c) => CircuitChoice(key: c.category, choices: c.choices.map(normalizeResourceName).toList()))
          .toList(),
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

  final String key;
  final List<String> choices;

  @MappableField()
  String get mode => switch (key) {
    'EXC_NORMAL' => 'Normal',
    'EXC_HARD' => 'Steel Path',
    _ => key,
  };
}
