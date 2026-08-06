import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/models.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'world_event.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawGoal extends BaseContentObject with RawGoalMappable {
  RawGoal({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.node,
    required this.victimNode,
    required this.scoreVar,
    required this.scoreLocTag,
    required this.count,
    required this.healthPct,
    required this.desc,
    required this.tooltip,
    required this.optionalInMission,
    required this.personal,
    required this.community,
    required this.goal,
    required this.bonusGoal,
    required this.clanGoal,
    required this.reward,
    required this.interimGoals,
    required this.interimRewards,
    required this.bonusReward,
    required this.tag,
    required this.jobAffiliationTag,
    required this.jobs,
  });

  // ignore: specify_nonobvious_property_types It is obvious
  static const fromMap = RawGoalMapper.fromMap;

  final String? node;
  final String? victimNode;
  final String? scoreVar;
  final String? scoreLocTag;
  final int? count;
  final double? healthPct;
  final String desc;

  // Mappable converts tooltip to Tooltip
  @MappableField(key: 'ToolTip')
  final String? tooltip;

  final bool? optionalInMission;
  final bool? personal;
  final bool? community;
  final int? goal;
  final int? bonusGoal;
  final List<int>? clanGoal;
  final RawReward? reward;
  final List<int>? interimGoals;
  final List<RawReward>? interimRewards;
  final RawReward? bonusReward;
  final String tag;
  final String? jobAffiliationTag;
  final List<RawJob>? jobs;

  WorldEvent toWorldEvent(Dependency deps) => WorldEvent.fromRaw(this, deps);
}

@MappableClass()
class WorldEvent extends WorldstateObject with WorldEventMappable {
  WorldEvent({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.node,
    required this.victimNode,
    required this.scoreVar,
    required this.scoreLocTag,
    required this.count,
    required this.health,
    required this.description,
    required this.tooltip,
    required this.optional,
    required this.personal,
    required this.community,
    required this.goal,
    required this.clanGoal,
    required this.rewards,
    required this.tag,
    required this.affiliationTag,
    required this.bounties,
  });

  factory WorldEvent.fromRaw(RawGoal raw, Dependency deps) {
    final langs = deps.langs;

    return WorldEvent(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      node: raw.node != null ? deps.nodes.fetchNode(raw.node!).name : null,
      victimNode: raw.victimNode != null ? deps.nodes.fetchNode(raw.victimNode!).name : null,
      scoreVar: raw.scoreVar != null ? normalizeResourceName(raw.scoreVar!) : null,
      scoreLocTag: raw.scoreLocTag != null ? langs.fetchValue(raw.scoreLocTag!) : null,
      count: raw.count,
      health: raw.healthPct,
      description: langs.fetchValue(raw.desc),
      tooltip: raw.tooltip != null ? langs.fetchValue(raw.tooltip!) : null,
      optional: raw.optionalInMission,
      personal: raw.personal,
      community: raw.community,
      goal: raw.goal,
      clanGoal: raw.clanGoal,
      rewards: _mapEventRewards(raw, deps),
      tag: raw.tag,
      affiliationTag: raw.jobAffiliationTag != null ? langs.fetchValue(raw.jobAffiliationTag!) : null,
      bounties: raw.jobs?.map((j) => j.toBounty(deps)).toList(),
    );
  }

  final String? node;

  final String? victimNode;

  final String? scoreVar;

  final String? scoreLocTag;

  final int? count;

  final num? health;

  final String description;

  final String? tooltip;

  final bool? optional;

  final bool? personal;

  final bool? community;

  final int? goal;

  final List<int>? clanGoal;

  final List<WorldEventReward>? rewards;

  final String tag;

  final String? affiliationTag;

  final List<SyndicateBounty>? bounties;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;

  static List<WorldEventReward> _mapEventRewards(RawGoal raw, Dependency deps) {
    final rewards = <RawReward>[...?raw.interimRewards, ?raw.reward];
    final goals = <int>[...?raw.interimGoals, ?raw.goal];
    if (rewards.isEmpty && goals.isEmpty) return [];

    final r = <WorldEventReward>[];
    for (var i = 0; i < goals.length; i++) {
      r.add(WorldEventReward(requiredScore: goals[i], reward: rewards[i].toReward(deps)));
    }

    // May need to change if they ever do more then one bonus reward.
    final bonusGoal = raw.bonusGoal;
    final bonusRewards = raw.bonusReward;
    if (bonusGoal != null && bonusRewards != null) {
      r.add(WorldEventReward(requiredScore: bonusGoal, reward: bonusRewards.toReward(deps)));
    }

    return r;
  }
}

@MappableClass()
class WorldEventReward with WorldEventRewardMappable {
  WorldEventReward({required this.requiredScore, required this.reward});

  /// Score required to earn reward
  final int requiredScore;

  /// The reward itself
  final Reward reward;
}
