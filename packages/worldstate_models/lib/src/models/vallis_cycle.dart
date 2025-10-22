import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'vallis_cycle.mapper.dart';

@MappableEnum()
enum VallisState { warm, cold }

@MappableClass()
class VallisCycle extends WorldstateObject with VallisCycleMappable {
  VallisCycle({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.isWarm,
    required this.state,
  });

  factory VallisCycle.init() {
    final cycle = calculateCurrentVallisCycle();

    return VallisCycle(
      id: hash('VallisCycle${cycle.timeAtNext}'),
      activation: cycle.timeAtPrevious,
      expiry: cycle.timeAtNext,
      isWarm: cycle.state == VallisState.warm,
      state: cycle.state,
    );
  }

  final bool isWarm;
  final VallisState state;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
