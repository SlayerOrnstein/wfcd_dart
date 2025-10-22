import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/models/cetus_cycle.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'cambion_cycle.mapper.dart';

@MappableEnum()
enum CambionState { fass, vome }

@MappableClass()
class CambionCycle extends WorldstateObject with CambionCycleMappable {
  CambionCycle({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.isFass,
    required this.state,
  });

  factory CambionCycle.fromBountiesEndDate(DateTime bountiesEnd) {
    final cycle = calculateCurrentCetusCycle(bountiesEnd);

    return CambionCycle(
      id: hash('CambionCycle${cycle.expiry.toIso8601String()}'),
      activation: cycle.start,
      expiry: cycle.expiry,
      isFass: cycle.state == CetusState.day,
      state: cycle.state == CetusState.day ? CambionState.fass : CambionState.vome,
    );
  }

  final bool isFass;
  final CambionState state;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
