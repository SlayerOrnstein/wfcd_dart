import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart' as data;
import 'package:worldstate_models/src/models/reward.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'invasion.mapper.dart';

@MappableClass()
class RawMissionInfo with RawMissionInfoMappable {
  RawMissionInfo({required this.seed, required this.faction});

  final int seed;
  final String faction;
}

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawInvasion extends BaseContentObject with RawInvasionMappable {
  RawInvasion({
    required super.id,
    required super.activation,
    required this.faction,
    required this.defenderFaction,
    required this.node,
    required this.count,
    required this.goal,
    required this.locTag,
    required this.completed,
    required dynamic attackerReward,
    required this.attackerMissionInfo,
    required this.defenderReward,
    required this.defenderMissionInfo,
  }) : attackerReward = attackerReward is List ? null : RawReward.fromMap(attackerReward as Map<String, dynamic>);

  static const fromMap = RawInvasionMapper.fromMap;

  final String faction;
  final String defenderFaction;
  final String node;
  final int count;
  final int goal;
  final String locTag;
  final bool completed;
  final RawReward? attackerReward;
  final RawMissionInfo attackerMissionInfo;
  final RawReward defenderReward;
  final RawMissionInfo defenderMissionInfo;

  Invasion toInvasion([String locale = 'en']) => Invasion.fromRaw(this, locale);
}

@MappableClass()
class Invasion extends WorldstateObject with InvasionMappable {
  Invasion({
    required super.id,
    required super.activation,
    required this.node,
    required this.nodeKey,
    required this.description,
    required this.attackingFaction,
    required this.attacker,
    required this.defendingFaction,
    required this.defender,
    required this.vsInfestation,
    required this.count,
    required this.requiredRuns,
    required this.completion,
    required this.isCompleted,
    required this.rewardTypes,
  });

  factory Invasion.fromRaw(RawInvasion raw, [String locale = 'en']) {
    final attacker = InvasionFaction.fromRaw(raw.attackerMissionInfo, raw.attackerReward, locale);
    final defender = InvasionFaction.fromRaw(raw.defenderMissionInfo, raw.defenderReward, locale);
    final vsInfestation = raw.faction == 'FC_INFESTATION';

    return Invasion(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      node: data.solNodes(locale).fetchNode(raw.node).name,
      nodeKey: data.solNodes().fetchNode(raw.node).name,
      description: data.languages(locale).fetchValue(raw.locTag),
      attackingFaction: attacker.faction,
      attacker: attacker,
      defendingFaction: defender.faction,
      defender: defender,
      vsInfestation: vsInfestation,
      count: raw.count,
      requiredRuns: raw.goal,
      completion: (1 + raw.count ~/ raw.goal) * (vsInfestation ? 100 : 50),
      isCompleted: raw.completed,
      rewardTypes: [
        ...?attacker.reward?.countedItems?.map((c) => c.type),
        ...?defender.reward?.countedItems?.map((c) => c.type),
      ],
    );
  }

  final String node;

  final String nodeKey;

  final String description;

  final String attackingFaction;

  final InvasionFaction attacker;

  final String defendingFaction;

  final InvasionFaction defender;

  final bool vsInfestation;

  final int count;

  final int requiredRuns;

  /// The invasion's completion percentage. Defenders win if it gets to 0
  /// Grineer vs. Corpus invasions start at 50, Infested invasions start at 100
  final int completion;

  final bool isCompleted;

  final List<String> rewardTypes;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  String? get eta {
    final estimatedRemainingTime = _estimateRemainingTime(activation, count, requiredRuns);
    return createEta(DateTime.fromMillisecondsSinceEpoch(estimatedRemainingTime));
  }

  static int _estimateRemainingTime(DateTime activation, int count, int requiredRuns) {
    final completedRuns = count.abs();
    final elapsedMs = DateTime.timestamp().difference(activation).inMilliseconds;
    final remaningRuns = requiredRuns - completedRuns;

    return remaningRuns * (elapsedMs ~/ completedRuns);
  }
}

@MappableClass()
class InvasionFaction with InvasionFactionMappable {
  InvasionFaction({required this.faction, required this.factionKey, required this.reward});

  factory InvasionFaction.fromRaw(RawMissionInfo raw, RawReward? reward, [String locale = 'en']) {
    return InvasionFaction(
      faction: data.faction(raw.faction, locale),
      factionKey: data.faction(raw.faction),
      reward: reward != null ? Reward.fromRaw(reward) : null,
    );
  }

  final String faction;

  final String factionKey;

  final Reward? reward;
}
