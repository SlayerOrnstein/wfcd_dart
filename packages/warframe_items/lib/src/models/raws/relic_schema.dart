import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/schema.dart';

part 'relic_schema.mapper.dart';

@MappableClass()
class RelicSchema extends Schema with RelicSchemaMappable {
  RelicSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    required this.relicRewards,
  });

  factory RelicSchema.fromJson(String json) => RelicSchemaMapper.fromJson(json);

  factory RelicSchema.fromMap(Map<String, dynamic> map) => RelicSchemaMapper.fromMap(map);

  final List<RelicReward> relicRewards;
}

@MappableClass()
class RelicReward with RelicRewardMappable {
  RelicReward({
    required this.rewardName,
    required this.rarity,
    required this.tier,
    required this.itemCount,
  });

  factory RelicReward.fromJson(String json) => RelicRewardMapper.fromJson(json);

  factory RelicReward.fromMap(Map<String, dynamic> map) => RelicRewardMapper.fromMap(map);

  final String rewardName;
  final String rarity;
  final int tier;
  final int itemCount;
}
