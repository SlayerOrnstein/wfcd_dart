import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';

part 'clan_initiative.mapper.dart';

/// {@template vault_reward}
///
/// {@endtemplate}
@MappableClass(caseStyle: CaseStyle.pascalCase)
class VaultBonusReward with VaultBonusRewardMappable {
  /// {@macro vault_reward}
  VaultBonusReward({
    required this.reward,
    required this.itemCount,
    required this.pointThreshold,
    required this.rewardClaimed,
  });

  ///
  factory VaultBonusReward.fromMap(Map<String, dynamic> map) {
    return VaultBonusRewardMapper.fromMap(map);
  }

  /// Reward localized name
  final String reward;

  /// item cound
  final int itemCount;

  /// points required to get reward
  final int pointThreshold;

  /// Whether or not it has been claimed
  final bool rewardClaimed;
}

/// {@template weekly_clan}
/// Clan initiatve personal rewards
/// {@endtemplate}
@MappableClass(caseStyle: CaseStyle.pascalCase)
class WeeklyVaultBonusRewards with WeeklyVaultBonusRewardsMappable {
  /// {@macro weekly_clan}
  WeeklyVaultBonusRewards({required this.weekCount, required this.bonusRegion, required this.rewards});

  ///
  factory WeeklyVaultBonusRewards.fromMap(Map<String, dynamic> map) {
    return WeeklyVaultBonusRewardsMapper.fromMap(map);
  }

  /// week number since first
  final int weekCount;

  /// Region where resources are doubled
  final String bonusRegion;

  /// Personal rewards earned per tier
  final List<VaultBonusReward> rewards;
}

/// {@template personal_reward}
/// Localized version of [VaultBonusReward]
/// {@endtemplate}
@MappableClass()
class PersonalReward with PersonalRewardMappable {
  /// {@macro personal_reward}
  PersonalReward({
    required this.uniqueName,
    required this.reward,
    required this.count,
    required this.pointsRequired,
    required this.isClaimed,
  });

  ///
  factory PersonalReward.fromRaw(VaultBonusReward raw, Dependency deps) {
    return PersonalReward(
      uniqueName: raw.reward,
      reward: deps.langs.fetchValue(raw.reward),
      count: raw.itemCount,
      pointsRequired: raw.pointThreshold,
      isClaimed: raw.rewardClaimed,
    );
  }

  /// Reward unique name path
  final String uniqueName;

  /// Localized version of [VaultBonusReward.reward]
  final String reward;

  /// Reward count, used for bundle of items
  ///
  /// Credits can be bundled as well i.e. 50,000 credits will have a count of two
  final int count;

  /// Points needed to qualify for reward
  final int pointsRequired;

  /// Whether or not the reward was already claimed.
  final bool isClaimed;
}

/// {@template clan_initiative}
/// Localized version of [WeeklyVaultBonusRewards]
/// {@endtemplate}
@MappableClass()
class ClanInitiative with ClanInitiativeMappable {
  /// {@macro clan_initiative}
  ClanInitiative({required this.week, required this.bonusRegion, required this.rewards});

  ///
  factory ClanInitiative.fromRaw(WeeklyVaultBonusRewards raw, Dependency deps) {
    return ClanInitiative(
      week: raw.weekCount,
      bonusRegion: deps.langs.fetchValue(raw.bonusRegion),
      rewards: raw.rewards.map((r) => PersonalReward.fromRaw(r, deps)).toList(),
    );
  }

  /// week number
  final int week;

  /// Bonus region or planet that gives 2x clan resources
  final String bonusRegion;

  /// Personal rewards
  final List<PersonalReward> rewards;
}
