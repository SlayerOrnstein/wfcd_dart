import 'package:dart_mappable/dart_mappable.dart';

part 'sortie_reward_schema.mapper.dart';

@MappableClass()
class SortieRewardSchema with SortieRewardSchemaMappable {
  SortieRewardSchema({
    required this.rewardName,
    required this.itemCount,
    required this.probability,
    required this.rarity,
    required this.tier,
  });

  factory SortieRewardSchema.fromJson(String json) => SortieRewardSchemaMapper.fromJson(json);

  factory SortieRewardSchema.fromMap(Map<String, dynamic> map) => SortieRewardSchemaMapper.fromMap(map);

  final String rewardName;
  final int itemCount;
  final double probability;
  final String rarity;
  final int tier;
}
