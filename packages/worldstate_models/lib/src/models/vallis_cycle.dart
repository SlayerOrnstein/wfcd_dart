import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

final _lStart = DateTime.parse('2018-11-10T08:13:48.000Z');
const _loopTime = 16_000_00;
const _warmTime = 400_000;
const _coldTime = _loopTime - _warmTime;

typedef _CurrentCycle = ({
  VallisState state,
  int toNextMinor,
  int toNextFull,
  DateTime timeAtPrevious,
  DateTime timeAtNext,
});

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
    final cycle = _calculateCurrentCycle();

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

  static _CurrentCycle _calculateCurrentCycle() {
    final now = DateTime.timestamp();
    final sinceLast = (now.millisecondsSinceEpoch - _lStart.millisecondsSinceEpoch) % _loopTime;
    final toNextFull = _loopTime - sinceLast;
    final state = toNextFull > _coldTime ? VallisState.warm : VallisState.cold;

    final toNextMinor = toNextFull < _coldTime ? toNextFull : toNextFull - _coldTime;

    final milliAtNext = now.add(Duration(milliseconds: toNextMinor));
    final milliAtPrev = now.add(
      Duration(milliseconds: toNextFull - (state == VallisState.warm ? _loopTime : _coldTime)),
    );

    final timeAtPrevious = DateTime.utc(
      milliAtPrev.year,
      milliAtPrev.month,
      milliAtPrev.day,
      milliAtPrev.hour,
      milliAtPrev.minute,
    );

    return (
      state: state,
      toNextMinor: toNextMinor,
      toNextFull: toNextFull,
      timeAtNext: milliAtNext,
      timeAtPrevious: timeAtPrevious,
    );
  }

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
