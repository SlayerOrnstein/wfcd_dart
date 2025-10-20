import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

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
    final (state, activation, expiry) = _getStageInfo();

    return DuviriCycle(
      id: hash(activation.toIso8601String() + expiry.toIso8601String()),
      activation: activation,
      expiry: expiry,
      state: state,
      choices: raw
          .map((c) => CircuitChoice(key: c.category, choices: c.choices.map(normalizeResourceName).toList()))
          .toList(),
    );
  }

  final DuviriState state;
  final List<CircuitChoice> choices;

  static (DuviriState state, DateTime activation, DateTime expiry) _getStageInfo() {
    const cycleTime = 36000;
    const stateTime = 7200;

    final timestamp = DateTime.timestamp();
    final cycleDelta = ((timestamp.millisecondsSinceEpoch / 1000).floor() - 52) % cycleTime;
    final stateInd = (cycleDelta / stateTime).floor();
    final stateDelta = cycleDelta % stateTime;
    final untilNext = stateTime - stateDelta;
    final expiry = timestamp.add(Duration(milliseconds: untilNext * 1000));
    final activation = DateTime.fromMillisecondsSinceEpoch(expiry.millisecondsSinceEpoch - stateTime * 1000);

    return (DuviriState.values.elementAt(stateInd), activation, expiry);
  }
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
