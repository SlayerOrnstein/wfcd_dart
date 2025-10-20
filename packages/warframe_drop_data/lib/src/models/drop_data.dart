import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/blueprint_location.dart';
import 'package:warframe_drop_data/src/models/bounty_reward.dart';

part 'drop_data.mapper.dart';

@MappableClass()
class DropData with DropDataMappable {
  DropData({required this.blueprintLocations, required this.bountyRewards});

  final List<BlueprintLocation> blueprintLocations;
  final List<BountyReward> bountyRewards;
}
