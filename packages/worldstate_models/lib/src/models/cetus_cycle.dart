import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'cetus_cycle.mapper.dart';

@MappableEnum()
enum CetusState { day, night }

@MappableClass()
class CetusCycle extends WorldstateObject with CetusCycleMappable {
  CetusCycle({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.isDay,
    required this.state,
  });

  factory CetusCycle.fromBountiesEndDate(DateTime bountiesEnd) {
    final cycle = calculateCurrentCetusCycle(bountiesEnd);

    return CetusCycle(
      id: hash('CetusCycle${cycle.expiry}'),
      activation: cycle.start,
      expiry: cycle.expiry,
      isDay: cycle.isDay,
      state: cycle.state,
    );
  }

  final bool isDay;
  final CetusState state;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
