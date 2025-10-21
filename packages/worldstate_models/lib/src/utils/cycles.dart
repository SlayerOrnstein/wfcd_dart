// Keeping cycle calculations here because DE from time to time reuse cyc
import 'package:worldstate_models/src/models/models.dart';
import 'package:time/time.dart';

typedef CurrentDuviriPhase = ({DuviriState state, DateTime activation, DateTime expiry});

typedef CurrentCetusCycle = ({bool isDay, DateTime expiry, CetusState state, DateTime start});

typedef CurrentZarimanCycle = ({bool isCorpus, DateTime start, DateTime expiry, ZarimanState state});

CurrentCetusCycle calculateCurrentCetusCycle(DateTime bountiesEnd) {
  const cetusNightTime = 3_000;
  const cetusMaximums = {CetusState.day: 6_000_000, CetusState.night: 3_000_000};

  final now = DateTime.timestamp();
  final clone = bountiesEnd.copyWith(second: 0);

  var millisLeft = clone.difference(now).inMilliseconds;
  final secondsToNightEnd = int.parse((millisLeft / 1_000).toStringAsFixed(0));
  final isDay = secondsToNightEnd > cetusNightTime;

  final secondsRemainingInCycle = isDay ? secondsToNightEnd - cetusNightTime : secondsToNightEnd;
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
    start: expiry.subtract(Duration(milliseconds: cetusMaximums[state]!)),
  );
}

CurrentDuviriPhase calculateCurrentDuviriPhase() {
  const cycleTime = 36_000;
  const stateTime = 7_200;

  final timestamp = DateTime.timestamp();
  final cycleDelta = ((timestamp.millisecondsSinceEpoch / 1_000).floor() - 52) % cycleTime;
  final stateInd = (cycleDelta / stateTime).floor();
  final stateDelta = cycleDelta % stateTime;
  final untilNext = stateTime - stateDelta;
  final expiry = timestamp + Duration(milliseconds: untilNext * 1_000);
  final activation = DateTime.fromMillisecondsSinceEpoch(expiry.millisecondsSinceEpoch - stateTime * 1000);

  return (state: DuviriState.values.elementAt(stateInd), activation: activation, expiry: expiry);
}

CurrentZarimanCycle calculateCurrentZarimanCycle(DateTime bountiesEnd) {
  const corpusTimeMillis = 1_655_182_800_000;
  const fullCycle = 18_000_000;
  const stateMaximum = 9_000_000;

  final now = DateTime.timestamp();
  final clone = bountiesEnd - 5_000.milliseconds;
  final millisLeft = clone.difference(now).inMilliseconds;

  // the following line is a modulus operation
  // this ensures that our calculation is correct if bountiesClone is before corpusTimeMillis
  // if you really care, read https://torstencurdt.com/tech/posts/modulo-of-negative-numbers/
  //
  // I ported this and it was confusing enough for me to copy the original comment (Orn)
  final cycleTimeElapsed = (((clone.millisecondsSinceEpoch - corpusTimeMillis) % fullCycle) + fullCycle) % fullCycle;
  final cycleTimeLeft = fullCycle - cycleTimeElapsed;

  final isCorpus = cycleTimeLeft > stateMaximum;

  const minutesCoef = 1_000 * 60;
  final expiry = DateTime.fromMillisecondsSinceEpoch(
    ((now.millisecondsSinceEpoch + millisLeft) / minutesCoef).round() * minutesCoef,
  );

  return (
    expiry: expiry,
    start: expiry - stateMaximum.milliseconds,
    isCorpus: isCorpus,
    state: isCorpus ? ZarimanState.corpus : ZarimanState.grineer,
  );
}
