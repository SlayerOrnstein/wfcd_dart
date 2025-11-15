import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/drop.dart';
import 'package:warframe_drop_data/src/models/rotation.dart';

part 'bounty_reward.mapper.dart';

/// {@template bounty_reward_table}
/// Bounty tier reward table
/// {@endtemplate}
@MappableClass()
class BountyRewardTable with BountyRewardTableMappable {
  /// {@macro bounty_reward_table}
  const BountyRewardTable({required this.id, required this.level, required this.rewards});

  /// Create a [BountyRewardTable] from a map
  static const fromMap = BountyRewardTableMapper.fromMap;

  /// Generated ID for this bounty table
  final String id;

  /// Enemy level for the specified bounty
  final String level;

  /// Rewards per ABC rotation
  final Rotations<BountyReward> rewards;
}

/// {@template bounty_reward}
/// [BountyRewardTable] rewards
/// {@endtemplate}
@MappableClass(discriminatorValue: 'BountyReward')
class BountyReward extends ItemDrop with BountyRewardMappable {
  /// {@macro bounty_reward}
  const BountyReward({
    required super.id,
    required super.item,
    required super.rarity,
    required super.chance,
    required this.stages,
    required this.onFinalStage,
    required this.onFirstCompletion,
    required super.status,
  });

  /// Stages the reward can drop in
  final List<int> stages;

  /// Whether or not this item drops on the final stage
  final bool onFinalStage;

  /// Whether this drops on subsequent Completions or not
  final bool? onFirstCompletion;
}
