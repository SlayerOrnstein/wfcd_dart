import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/reward.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
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
    required this.clanGoal,
    required this.reward,
    required this.interimGoals,
    required this.interimRewards,
    required this.tag,
  });

  static const fromMap = RawGoalMapper.fromMap;

  final String? node;
  final String? victimNode;
  final String? scoreVar;
  final String? scoreLocTag;
  final int count;
  final double? healthPct;
  final String desc;
  final String? tooltip;
  final bool? optionalInMission;
  final bool personal;
  final bool? community;
  final int? goal;
  final List<int>? clanGoal;
  final RawReward? reward;
  final List<int>? interimGoals;
  final List<RawReward>? interimRewards;
  final String tag;

  WorldEvent toWorldEvent([String locale = 'en']) => WorldEvent.fromRaw(this, locale);
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
    required this.reward,
    required this.interimGoals,
    required this.interimRewards,
    required this.tag,
  });

  factory WorldEvent.fromRaw(RawGoal raw, [String locale = 'en']) {
    final langs = languages(locale);

    return WorldEvent(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      node: raw.node != null ? solNodes(locale).fetchNode(raw.node!).name : null,
      victimNode: raw.victimNode != null ? solNodes(locale).fetchNode(raw.victimNode!).name : null,
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
      reward: raw.reward?.toReward(locale),
      interimGoals: raw.interimGoals,
      interimRewards: raw.interimRewards?.map((r) => r.toReward(locale)).toList(),
      tag: raw.tag,
    );
  }

  final String? node;

  final String? victimNode;

  final String? scoreVar;

  final String? scoreLocTag;

  final int count;

  final num? health;

  final String description;

  final String? tooltip;

  final bool? optional;

  final bool personal;

  final bool? community;

  final int? goal;

  final List<int>? clanGoal;

  final Reward? reward;

  final List<int>? interimGoals;

  final List<Reward>? interimRewards;

  final String tag;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
