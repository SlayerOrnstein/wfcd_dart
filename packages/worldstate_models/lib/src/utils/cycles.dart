// Keeping cycle calculations here because DE from time to time reuse cyc
import 'package:time/time.dart';
import 'package:worldstate_models/src/models/models.dart';

typedef CurrentDuviriPhase = ({DuviriState state, DateTime activation, DateTime expiry});

typedef CurrentCetusCycle = ({bool isDay, DateTime expiry, CetusState state, DateTime start});

typedef CurrentVallisCycle = ({
  VallisState state,
  int toNextMinor,
  int toNextFull,
  DateTime timeAtPrevious,
  DateTime timeAtNext,
});

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
    isUtc: true,
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
  final activation = DateTime.fromMillisecondsSinceEpoch(expiry.millisecondsSinceEpoch - stateTime * 1000, isUtc: true);

  return (state: DuviriState.values.elementAt(stateInd), activation: activation, expiry: expiry);
}

CurrentVallisCycle calculateCurrentVallisCycle() {
  final lStart = DateTime.parse('2018-11-10T08:13:48.000Z');
  const loopTime = 16_000_00;
  const warmTime = 400_000;
  const coldTime = loopTime - warmTime;

  final now = DateTime.timestamp();
  final sinceLast = (now.millisecondsSinceEpoch - lStart.millisecondsSinceEpoch) % loopTime;
  final toNextFull = loopTime - sinceLast;
  final state = toNextFull > coldTime ? VallisState.warm : VallisState.cold;

  final toNextMinor = toNextFull < coldTime ? toNextFull : toNextFull - coldTime;

  final milliAtNext = now.add(Duration(milliseconds: toNextMinor));
  final milliAtPrev = now.add(
    Duration(milliseconds: toNextFull - (state == VallisState.warm ? loopTime : coldTime)),
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
    isUtc: true,
  );

  return (
    expiry: expiry,
    start: expiry - stateMaximum.milliseconds,
    isCorpus: isCorpus,
    state: isCorpus ? ZarimanState.corpus : ZarimanState.grineer,
  );
}

({DateTime activation, DateTime expiry}) calculateSentientOutpost() {
  const duration = 1_800;

  final now = (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();
  final cycleSeconds = now % duration;

  final activation = (now - cycleSeconds) * 1000;
  final expiry = (now - cycleSeconds + duration) * 1000;

  return (
    activation: DateTime.fromMillisecondsSinceEpoch(activation, isUtc: true),
    expiry: DateTime.fromMillisecondsSinceEpoch(expiry, isUtc: true),
  );
}
