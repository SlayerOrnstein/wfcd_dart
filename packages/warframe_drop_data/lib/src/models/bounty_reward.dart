import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/rotation.dart';

part 'bounty_reward.mapper.dart';

@MappableClass()
class BountyReward with BountyRewardMappable {
  BountyReward({required this.id, required this.level, required this.rewards});

  final String id;
  final String level;
  final Rotations rewards;
}
