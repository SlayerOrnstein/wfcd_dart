import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'cetus_cycle.mapper.dart';

const _nightTime = 3_000;
const _maximums = {CetusState.day: 6_000_000, CetusState.night: 3_000_000};

@MappableEnum()
enum CetusState { day, night }

typedef _CurrentCetusCycle = ({bool isDay, DateTime expiry, CetusState state, DateTime start});

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
    final cycle = _calculateCurrentCycle(bountiesEnd);
    return CetusCycle(
      id: hash(cycle.start.toIso8601String()),
      activation: cycle.start,
      expiry: cycle.expiry,
      isDay: cycle.isDay,
      state: cycle.state,
    );
  }

  final bool isDay;
  final CetusState state;

  static _CurrentCetusCycle _calculateCurrentCycle(DateTime bountiesEnd) {
    final now = DateTime.timestamp();
    final clone = DateTime.utc(
      bountiesEnd.year,
      bountiesEnd.month,
      bountiesEnd.day,
      bountiesEnd.hour,
      bountiesEnd.minute,
    );

    var millisLeft = clone.difference(now).inMilliseconds;
    final secondsToNightEnd = int.parse((millisLeft / 1_000).toStringAsFixed(0));
    final isDay = secondsToNightEnd > _nightTime;

    final secondsRemainingInCycle = isDay ? secondsToNightEnd - _nightTime : secondsToNightEnd;
    millisLeft = secondsRemainingInCycle * 1_000;
    const minutesCoef = 1_000 * 60;

    final expiry = DateTime.fromMillisecondsSinceEpoch(
      (((now.millisecondsSinceEpoch + millisLeft) / minutesCoef) * minutesCoef).round(),
    );

    final state = isDay ? CetusState.day : CetusState.night;

    return (
      isDay: isDay,
      expiry: expiry,
      state: state,
      start: expiry.subtract(Duration(milliseconds: _maximums[state]!)),
    );
  }
}
