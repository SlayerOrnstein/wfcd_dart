import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/blueprint_part.dart';
import 'package:warframe_drop_data/src/models/bounty_reward.dart';

part 'drop_data.mapper.dart';

@MappableClass()
class DropData with DropDataMappable {
  DropData({required this.blueprintDrops, required this.bountyRewardTables});

  final List<BlueprintPart> blueprintDrops;
  final List<BountyRewardTable> bountyRewardTables;
}
