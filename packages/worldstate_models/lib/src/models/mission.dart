import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart' as data;
import 'package:worldstate_models/src/models/reward.dart';

part 'mission.mapper.dart';

@MappableClass()
class RawMission with RawMissionMappable {
  RawMission({
    required this.missionType,
    required this.faction,
    required this.location,
    required this.levelOverrride,
    required this.enemySpec,
    required this.minEnemyLevel,
    required this.maxEnemyLevel,
    required this.missionReward,
    required this.descText,
    required this.questReq,
    required this.maxWaveNum,
    required this.difficulty,
    required this.archwingRequired,
    required this.isSharkwingMission,
  });

  static const fromMap = RawMissionMapper.fromMap;

  final String missionType;
  final String faction;
  final String location;
  final String? levelOverrride;
  final String enemySpec;
  final int minEnemyLevel;
  final int maxEnemyLevel;
  final RawReward missionReward;
  final String? descText;
  final String? questReq;
  final int maxWaveNum;
  final int difficulty;
  final bool archwingRequired;
  final bool isSharkwingMission;

  Mission toMission([String locale = 'en']) => Mission.fromRaw(this, locale);
}

@MappableClass()
class Mission with MissionMappable {
  Mission({
    required this.type,
    required this.faction,
    required this.node,
    required this.override,
    required this.enemySpec,
    required this.minEnemyLevel,
    required this.maxEnemyLevel,
    required this.reward,
    required this.description,
    required this.questRequired,
    required this.maxWaves,
    required this.difficultyLevel,
    required this.archwingRequired,
  });

  factory Mission.fromRaw(RawMission raw, [String locale = 'en']) {
    final langs = data.languages(locale);

    return Mission(
      type: data.missionType(raw.missionType, locale),
      faction: data.faction(raw.faction, locale),
      node: data.solNodes(locale).fetchNode(raw.location).name,
      override: raw.levelOverrride != null ? langs.fetchValue(raw.levelOverrride!) : null,
      enemySpec: langs.fetchValue(raw.enemySpec),
      minEnemyLevel: raw.minEnemyLevel,
      maxEnemyLevel: raw.maxEnemyLevel,
      reward: raw.missionReward.toReward(locale),
      // probably need lang for this one later down the line. Seems to be for events based on quest i.e. Jade of Shadows
      description: raw.descText,
      questRequired: raw.questReq,
      maxWaves: raw.maxWaveNum,
      difficultyLevel: raw.difficulty,
      archwingRequired: raw.archwingRequired || raw.isSharkwingMission,
    );
  }

  final String type;
  final String faction;
  final String node;
  final String? override;
  final String enemySpec;
  final int minEnemyLevel;
  final int maxEnemyLevel;
  final Reward reward;
  final String? description;
  final String? questRequired;
  final int? maxWaves;
  final int difficultyLevel;
  final bool archwingRequired;
}
