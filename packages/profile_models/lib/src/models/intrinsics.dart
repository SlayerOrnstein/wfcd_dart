import 'package:dart_mappable/dart_mappable.dart';

part 'intrinsics.mapper.dart';

@MappableClass(caseStyle: CaseStyle.upperSnakeCase)
class RawIntrinsics with RawIntrinsicsMappable {
  RawIntrinsics({
    required this.lppSpace,
    required this.lpsEngineering,
    required this.lpsGunnery,
    required this.lpsPiloting,
    required this.lpsTactical,
    required this.lpsCommand,
    required this.lppDrifter,
    required this.lpsDritRiding,
    required this.lpsDriftCombat,
    required this.lpsDriftOpportunity,
    required this.lpsDriftEndurance,
  });

  final int? lppSpace;
  final int? lpsEngineering;
  final int? lpsGunnery;
  final int? lpsPiloting;
  final int? lpsTactical;
  final int? lpsCommand;
  final int? lppDrifter;
  final int? lpsDritRiding;
  final int? lpsDriftCombat;
  final int? lpsDriftOpportunity;
  final int? lpsDriftEndurance;

  Intrinsics toInstrinsics() => Intrinsics.fromRaw(this);
}

@MappableClass()
class Intrinsics with IntrinsicsMappable {
  Intrinsics({
    required this.railJack,
    required this.engineering,
    required this.gunnery,
    required this.piloting,
    required this.tactical,
    required this.command,
    required this.drifter,
    required this.riding,
    required this.combat,
    required this.opportunity,
    required this.endurance,
  });

  factory Intrinsics.fromRaw(RawIntrinsics raw) {
    return Intrinsics(
      railJack: ((raw.lppSpace ?? 0) / 1000).floor(),
      engineering: raw.lpsEngineering ?? 0,
      gunnery: raw.lpsGunnery ?? 0,
      piloting: raw.lpsPiloting ?? 0,
      tactical: raw.lpsTactical ?? 0,
      command: raw.lpsCommand ?? 0,
      drifter: ((raw.lppDrifter ?? 0) / 1000).floor(),
      riding: raw.lpsDritRiding ?? 0,
      combat: raw.lpsDriftCombat ?? 0,
      opportunity: raw.lpsDriftOpportunity ?? 0,
      endurance: raw.lpsDriftEndurance ?? 0,
    );
  }

  final int railJack;
  final int engineering;
  final int gunnery;
  final int piloting;
  final int tactical;
  final int command;
  final int drifter;
  final int riding;
  final int combat;
  final int opportunity;
  final int endurance;
}
