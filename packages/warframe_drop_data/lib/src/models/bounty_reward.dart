import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/rotation.dart';

part 'bounty_reward.mapper.dart';

@MappableClass()
class BountyRewardTable with BountyRewardTableMappable {
  BountyRewardTable({required this.id, required this.level, required this.rewards});

  /// Generated ID for this bounty table
  final String id;

  /// Enemy level for the specified bounty
  final String level;

  /// Rewards per ABC rotation
  final Rotations<BountyReward> rewards;
}

@MappableClass(discriminatorValue: 'BountyReward')
class BountyReward extends RotationReward with BountyRewardMappable {
  BountyReward({
    required super.id,
    required super.name,
    required super.rarity,
    required super.chance,
    required this.stages,
    required this.onFinalStage,
    required this.onFirstCompletion,
  });

  /// Stages the reward can drop in
  final List<int> stages;

  /// Whether or not this item drops on the final stage
  final bool onFinalStage;

  /// Whether this drops on subsequent Completions or not
  final bool? onFirstCompletion;

  @override
  double get chance => super.chance!;

  @override
  String get rarity => super.rarity!;
}
