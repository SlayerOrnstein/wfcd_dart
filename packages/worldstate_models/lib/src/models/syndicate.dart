import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/warframe_drop_data.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'syndicate.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawSyndicate extends BaseContentObject with RawSyndicateMappable {
  RawSyndicate({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.tag,
    required this.nodes,
    required this.jobs,
  });

  static const fromMap = RawSyndicateMapper.fromMap;

  final String tag;
  final List<String> nodes;
  final List<RawJob>? jobs;

  SyndicateMission toSyndicate(Dependency deps) => SyndicateMission.fromRaw(this, deps);
}

@MappableClass()
class RawJob with RawJobMappable {
  RawJob({
    required this.jobType,
    required this.rewards,
    required this.masteryReq,
    required this.minEnemyLevel,
    required this.maxEnemyLevel,
    required this.endless,
    required this.xpAmounts,
    required this.isVault,
  });

  static const fromMap = RawJobMapper.fromMap;

  final String? jobType;
  final String rewards;
  final int masteryReq;
  final int minEnemyLevel;
  final int maxEnemyLevel;
  final bool? endless;
  final List<int> xpAmounts;
  final bool? isVault;

  SyndicateBounty toBounty(Dependency deps) => SyndicateBounty.fromRaw(this, deps);
}

@MappableClass()
class SyndicateMission extends WorldstateObject with SyndicateMissionMappable {
  SyndicateMission({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.name,
    required this.nodes,
    required this.bounties,
  });

  factory SyndicateMission.fromRaw(RawSyndicate raw, Dependency deps) {
    final nodes = raw.nodes.map((n) => deps.nodes.fetchNode(n).name).toList();

    return SyndicateMission(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      name: syndicate(raw.tag),
      nodes: nodes,
      bounties: raw.jobs != null ? raw.jobs!.map((j) => j.toBounty(deps)).toList() : <SyndicateBounty>[],
    );
  }

  final String name;
  final List<String>? nodes;
  final List<SyndicateBounty>? bounties;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}

@MappableClass()
class SyndicateBounty with SyndicateBountyMappable {
  SyndicateBounty({
    required this.type,
    required this.rewards,
    required this.masteryRequirment,
    required this.minLevel,
    required this.maxLevel,
    required this.isEndless,
    required this.standing,
    required this.isVault,
    this.rewardPool = const [],
  });

  factory SyndicateBounty.fromRaw(RawJob raw, Dependency deps) {
    final rewards = _fetchBountyRewards(raw.rewards, deps.dropData, raw, raw.isVault ?? false);
    final drops = rewards?.map((r) => RewardDrop.fromDrop(r.name, r.rarity, r.chance)).toList();

    return SyndicateBounty(
      type: raw.jobType != null ? deps.langs.fetchValue(raw.jobType!) : null,
      rewards: rewards?.isNotEmpty ?? false
          ? rewards!.map((r) => r.name).toSet().toList()
          : <String>['Pattern Mismatch. Results inaccurate.'],
      rewardPool: rewards?.isNotEmpty ?? false ? drops! : [],
      masteryRequirment: raw.masteryReq,
      minLevel: raw.minEnemyLevel,
      maxLevel: raw.maxEnemyLevel,
      isEndless: raw.endless ?? false ? raw.endless : null,
      standing: raw.xpAmounts.fold(0, (p, n) => p + n),
      isVault: raw.isVault ?? false ? raw.isVault : null,
    );
  }

  final String? type;
  final List<String> rewards;
  final List<RewardDrop> rewardPool;
  final int masteryRequirment;
  final int minLevel;
  final int maxLevel;
  final bool? isEndless;
  final int standing;
  final bool? isVault;

  static (String location, String rotation) _determineLocation(String resource, RawJob raw, bool isVault) {
    final bountyRewardRegex = RegExp('(?:Tier([ABCDE])|Narmer)Table([ABC])Rewards');
    final ghoulRewardRegex = RegExp('GhoulBountyTable([AB])Rewards');

    final table = resource.split('/').last;
    final bountyMatchs = bountyRewardRegex.firstMatch(table);
    final ghoulMatches = ghoulRewardRegex.firstMatch(table);

    final isBounty = bountyMatchs != null;
    final isGhoul = ghoulMatches != null;
    final isCetus = resource.contains('EidolonJob');
    final isVallis = resource.contains('VenusJob');
    final isDeimos = resource.contains('DeimosMissionRewards');

    final rotation = isBounty ? bountyMatchs.group(2) ?? '' : '';
    final levelString = '${raw.minEnemyLevel} - ${raw.maxEnemyLevel}';

    late String levelClause;
    if (isCetus) {
      levelClause = 'Level $levelString ${isGhoul ? 'Ghoul Bounty' : 'Cetus Bounty'}';
    }

    if (isVallis) {
      levelClause = 'Level $levelString Orb Vallis Bounty';
    }

    if (isDeimos) {
      final variant = isVault ? 'Isolation Vault' : 'Cambion Drift Bounty';
      levelClause = 'Level $levelString $variant';
    }

    return (levelClause, rotation.isNotEmpty ? rotation : 'A');
  }

  static List<BountyReward>? _fetchBountyRewards(
    String resource,
    DropData data,
    RawJob raw,
    bool isVault,
  ) {
    String level;
    String rotation;
    if (resource.endsWith('PlagueStarTableRewards')) {
      level = 'plague star';
      rotation = 'Earth/Cetus (Level 15 - 25 Plague Star), Rot A';
    } else {
      (level, rotation) = _determineLocation(resource, raw, isVault);
    }

    final table = data.bountyRewardTables.firstWhereOrNull((t) => t.level == level);
    if (table == null) return null;

    final rewards = table.rewards.fetchRotation(rotation);
    if (rewards.isEmpty) return [];

    return rewards;
  }
}

/// {@template reward_drop}
/// A bounty reward drop
/// {@endtemplate}
@MappableClass()
class RewardDrop with RewardDropMappable {
  /// {@macro reward_drop}
  const RewardDrop({required this.item, required this.rarity, required this.chance, required this.count});

  factory RewardDrop.fromDrop(String item, String rarity, num chance) {
    // Don't usually see drop counts this high but you know, cast a wide net
    final countReg = RegExp('([0-9]{1,10})X');
    final count = countReg.allMatches(item);

    return RewardDrop(
      item: item.replaceAll(countReg, ''),
      rarity: rarity,
      chance: chance,
      count: count.isNotEmpty ? int.parse(count.first.group(1)!) : 1,
    );
  }

  /// Item name
  final String item;

  /// Item rarity
  final String rarity;

  /// Drop chance
  final num chance;

  /// How many of this item the player will get
  final int count;
}
