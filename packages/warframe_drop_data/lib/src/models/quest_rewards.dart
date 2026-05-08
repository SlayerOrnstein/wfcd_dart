import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/warframe_drop_data.dart';

part 'quest_rewards.mapper.dart';

@MappableClass()
class QuestRewards with QuestRewardsMappable {
  QuestRewards({required this.id, required this.quest, required this.rewards});

  /// Unique generated ID
  final String id;

  /// Quest name
  final String quest;

  /// Rewards per rotation
  final Rotations rewards;
}
