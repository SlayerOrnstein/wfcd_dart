import 'package:dart_mappable/dart_mappable.dart';

part 'nightwave_schema.mapper.dart';

@MappableClass()
class NightwaveSchema with NightwaveSchemaMappable {
  NightwaveSchema({
    required this.affiliationTag,
    required this.challenges,
    required this.rewards,
  });

  factory NightwaveSchema.fromJson(String json) => NightwaveSchemaMapper.fromJson(json);

  factory NightwaveSchema.fromMap(Map<String, dynamic> map) => NightwaveSchemaMapper.fromMap(map);

  final String affiliationTag;
  final List<NightwaveChallenge> challenges;
  final List<NightwaveReward> rewards;
}

@MappableClass()
class NightwaveChallenge with NightwaveChallengeMappable {
  NightwaveChallenge({
    required this.uniqueName,
    required this.name,
    required this.standing,
    required this.req,
  });

  factory NightwaveChallenge.fromJson(String json) => NightwaveChallengeMapper.fromJson(json);

  factory NightwaveChallenge.fromMap(Map<String, dynamic> map) => NightwaveChallengeMapper.fromMap(map);

  final String uniqueName;
  final String name;
  final int standing;

  @MappableField(key: 'required')
  final int req;
}

@MappableClass()
class NightwaveReward with NightwaveRewardMappable {
  NightwaveReward({required this.uniqueName, required this.itemCount});

  factory NightwaveReward.fromJson(String json) => NightwaveRewardMapper.fromJson(json);

  factory NightwaveReward.fromMap(Map<String, dynamic> map) => NightwaveRewardMapper.fromMap(map);

  final String uniqueName;
  final int itemCount;
}
