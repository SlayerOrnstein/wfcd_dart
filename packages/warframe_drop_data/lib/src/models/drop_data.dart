import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/models.dart';
import 'package:warframe_drop_data/src/models/quest_rewards.dart';
import 'package:warframe_drop_data/warframe_drop_data.dart';

part 'drop_data.mapper.dart';

/// {@template drop_data}
/// Contains all the parsed drop data
/// {@endtemplate}
@MappableClass()
class DropData with DropDataMappable {
  /// {@macro drop-data}
  const DropData({
    this.blueprintDrops = const [],
    this.bountyRewardTables = const [],
    this.resourcesByAvatar = const [],
    this.sigilsByAvatar = const [],
    this.additionalItemsByAvatar = const [],
    this.missionRewards = const [],
    this.relics = const [],
    this.modsByAvatar = const [],
    this.questRewards = const [],
  });

  /// Creates a [DropData] from map
  static const fromMap = DropDataMapper.fromMap;

  /// Blueprint drop data
  final List<BlueprintPart> blueprintDrops;

  /// Syndicate bounties drop data
  final List<BountyRewardTable> bountyRewardTables;

  /// Resource drops by avatar
  final List<Avatar> resourcesByAvatar;

  /// Sigil drops by avatar
  final List<Avatar> sigilsByAvatar;

  /// Misc item drops by avatar
  final List<Avatar> additionalItemsByAvatar;

  /// Rewards that drop in both endless and nonendless missions
  final List<Planet> missionRewards;

  /// Relic rewards per relic
  final List<Relic> relics;

  /// Mod drops by avatars
  final List<Avatar> modsByAvatar;

  /// Drops for quests
  final List<QuestRewards> questRewards;
}
