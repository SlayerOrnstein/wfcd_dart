import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

enum VallisState { warm, cold }

class VallisCycle extends WorldstateObject {
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
      id: hash(cycle.timeAtPrevious.toIso8601String()),
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
