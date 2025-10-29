import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/models.dart';

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
  });

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
}
