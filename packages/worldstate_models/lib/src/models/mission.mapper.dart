// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'mission.dart';

class RawMissionMapper extends ClassMapperBase<RawMission> {
  RawMissionMapper._();

  static RawMissionMapper? _instance;
  static RawMissionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawMissionMapper._());
      RawRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawMission';

  static String _$missionType(RawMission v) => v.missionType;
  static const Field<RawMission, String> _f$missionType = Field(
    'missionType',
    _$missionType,
  );
  static String _$faction(RawMission v) => v.faction;
  static const Field<RawMission, String> _f$faction = Field(
    'faction',
    _$faction,
  );
  static String _$location(RawMission v) => v.location;
  static const Field<RawMission, String> _f$location = Field(
    'location',
    _$location,
  );
  static String? _$levelOverrride(RawMission v) => v.levelOverrride;
  static const Field<RawMission, String> _f$levelOverrride = Field(
    'levelOverrride',
    _$levelOverrride,
  );
  static String _$enemySpec(RawMission v) => v.enemySpec;
  static const Field<RawMission, String> _f$enemySpec = Field(
    'enemySpec',
    _$enemySpec,
  );
  static int _$minEnemyLevel(RawMission v) => v.minEnemyLevel;
  static const Field<RawMission, int> _f$minEnemyLevel = Field(
    'minEnemyLevel',
    _$minEnemyLevel,
  );
  static int _$maxEnemyLevel(RawMission v) => v.maxEnemyLevel;
  static const Field<RawMission, int> _f$maxEnemyLevel = Field(
    'maxEnemyLevel',
    _$maxEnemyLevel,
  );
  static RawReward _$missionReward(RawMission v) => v.missionReward;
  static const Field<RawMission, RawReward> _f$missionReward = Field(
    'missionReward',
    _$missionReward,
  );
  static String? _$descText(RawMission v) => v.descText;
  static const Field<RawMission, String> _f$descText = Field(
    'descText',
    _$descText,
  );
  static String? _$questReq(RawMission v) => v.questReq;
  static const Field<RawMission, String> _f$questReq = Field(
    'questReq',
    _$questReq,
  );
  static int _$maxWaveNum(RawMission v) => v.maxWaveNum;
  static const Field<RawMission, int> _f$maxWaveNum = Field(
    'maxWaveNum',
    _$maxWaveNum,
  );
  static int _$difficulty(RawMission v) => v.difficulty;
  static const Field<RawMission, int> _f$difficulty = Field(
    'difficulty',
    _$difficulty,
  );
  static bool _$archwingRequired(RawMission v) => v.archwingRequired;
  static const Field<RawMission, bool> _f$archwingRequired = Field(
    'archwingRequired',
    _$archwingRequired,
  );
  static bool _$isSharkwingMission(RawMission v) => v.isSharkwingMission;
  static const Field<RawMission, bool> _f$isSharkwingMission = Field(
    'isSharkwingMission',
    _$isSharkwingMission,
  );

  @override
  final MappableFields<RawMission> fields = const {
    #missionType: _f$missionType,
    #faction: _f$faction,
    #location: _f$location,
    #levelOverrride: _f$levelOverrride,
    #enemySpec: _f$enemySpec,
    #minEnemyLevel: _f$minEnemyLevel,
    #maxEnemyLevel: _f$maxEnemyLevel,
    #missionReward: _f$missionReward,
    #descText: _f$descText,
    #questReq: _f$questReq,
    #maxWaveNum: _f$maxWaveNum,
    #difficulty: _f$difficulty,
    #archwingRequired: _f$archwingRequired,
    #isSharkwingMission: _f$isSharkwingMission,
  };
  @override
  final bool ignoreNull = true;

  static RawMission _instantiate(DecodingData data) {
    return RawMission(
      missionType: data.dec(_f$missionType),
      faction: data.dec(_f$faction),
      location: data.dec(_f$location),
      levelOverrride: data.dec(_f$levelOverrride),
      enemySpec: data.dec(_f$enemySpec),
      minEnemyLevel: data.dec(_f$minEnemyLevel),
      maxEnemyLevel: data.dec(_f$maxEnemyLevel),
      missionReward: data.dec(_f$missionReward),
      descText: data.dec(_f$descText),
      questReq: data.dec(_f$questReq),
      maxWaveNum: data.dec(_f$maxWaveNum),
      difficulty: data.dec(_f$difficulty),
      archwingRequired: data.dec(_f$archwingRequired),
      isSharkwingMission: data.dec(_f$isSharkwingMission),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawMission fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawMission>(map);
  }

  static RawMission fromJson(String json) {
    return ensureInitialized().decodeJson<RawMission>(json);
  }
}

mixin RawMissionMappable {
  String toJson() {
    return RawMissionMapper.ensureInitialized().encodeJson<RawMission>(
      this as RawMission,
    );
  }

  Map<String, dynamic> toMap() {
    return RawMissionMapper.ensureInitialized().encodeMap<RawMission>(
      this as RawMission,
    );
  }

  RawMissionCopyWith<RawMission, RawMission, RawMission> get copyWith =>
      _RawMissionCopyWithImpl<RawMission, RawMission>(
        this as RawMission,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawMissionMapper.ensureInitialized().stringifyValue(
      this as RawMission,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawMissionMapper.ensureInitialized().equalsValue(
      this as RawMission,
      other,
    );
  }

  @override
  int get hashCode {
    return RawMissionMapper.ensureInitialized().hashValue(this as RawMission);
  }
}

extension RawMissionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawMission, $Out> {
  RawMissionCopyWith<$R, RawMission, $Out> get $asRawMission =>
      $base.as((v, t, t2) => _RawMissionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawMissionCopyWith<$R, $In extends RawMission, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RawRewardCopyWith<$R, RawReward, RawReward> get missionReward;
  $R call({
    String? missionType,
    String? faction,
    String? location,
    String? levelOverrride,
    String? enemySpec,
    int? minEnemyLevel,
    int? maxEnemyLevel,
    RawReward? missionReward,
    String? descText,
    String? questReq,
    int? maxWaveNum,
    int? difficulty,
    bool? archwingRequired,
    bool? isSharkwingMission,
  });
  RawMissionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawMissionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawMission, $Out>
    implements RawMissionCopyWith<$R, RawMission, $Out> {
  _RawMissionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawMission> $mapper =
      RawMissionMapper.ensureInitialized();
  @override
  RawRewardCopyWith<$R, RawReward, RawReward> get missionReward =>
      $value.missionReward.copyWith.$chain((v) => call(missionReward: v));
  @override
  $R call({
    String? missionType,
    String? faction,
    String? location,
    Object? levelOverrride = $none,
    String? enemySpec,
    int? minEnemyLevel,
    int? maxEnemyLevel,
    RawReward? missionReward,
    Object? descText = $none,
    Object? questReq = $none,
    int? maxWaveNum,
    int? difficulty,
    bool? archwingRequired,
    bool? isSharkwingMission,
  }) => $apply(
    FieldCopyWithData({
      if (missionType != null) #missionType: missionType,
      if (faction != null) #faction: faction,
      if (location != null) #location: location,
      if (levelOverrride != $none) #levelOverrride: levelOverrride,
      if (enemySpec != null) #enemySpec: enemySpec,
      if (minEnemyLevel != null) #minEnemyLevel: minEnemyLevel,
      if (maxEnemyLevel != null) #maxEnemyLevel: maxEnemyLevel,
      if (missionReward != null) #missionReward: missionReward,
      if (descText != $none) #descText: descText,
      if (questReq != $none) #questReq: questReq,
      if (maxWaveNum != null) #maxWaveNum: maxWaveNum,
      if (difficulty != null) #difficulty: difficulty,
      if (archwingRequired != null) #archwingRequired: archwingRequired,
      if (isSharkwingMission != null) #isSharkwingMission: isSharkwingMission,
    }),
  );
  @override
  RawMission $make(CopyWithData data) => RawMission(
    missionType: data.get(#missionType, or: $value.missionType),
    faction: data.get(#faction, or: $value.faction),
    location: data.get(#location, or: $value.location),
    levelOverrride: data.get(#levelOverrride, or: $value.levelOverrride),
    enemySpec: data.get(#enemySpec, or: $value.enemySpec),
    minEnemyLevel: data.get(#minEnemyLevel, or: $value.minEnemyLevel),
    maxEnemyLevel: data.get(#maxEnemyLevel, or: $value.maxEnemyLevel),
    missionReward: data.get(#missionReward, or: $value.missionReward),
    descText: data.get(#descText, or: $value.descText),
    questReq: data.get(#questReq, or: $value.questReq),
    maxWaveNum: data.get(#maxWaveNum, or: $value.maxWaveNum),
    difficulty: data.get(#difficulty, or: $value.difficulty),
    archwingRequired: data.get(#archwingRequired, or: $value.archwingRequired),
    isSharkwingMission: data.get(
      #isSharkwingMission,
      or: $value.isSharkwingMission,
    ),
  );

  @override
  RawMissionCopyWith<$R2, RawMission, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawMissionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MissionMapper extends ClassMapperBase<Mission> {
  MissionMapper._();

  static MissionMapper? _instance;
  static MissionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MissionMapper._());
      RewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Mission';

  static String _$type(Mission v) => v.type;
  static const Field<Mission, String> _f$type = Field('type', _$type);
  static String _$faction(Mission v) => v.faction;
  static const Field<Mission, String> _f$faction = Field('faction', _$faction);
  static String _$node(Mission v) => v.node;
  static const Field<Mission, String> _f$node = Field('node', _$node);
  static String? _$override(Mission v) => v.override;
  static const Field<Mission, String> _f$override = Field(
    'override',
    _$override,
  );
  static String _$enemySpec(Mission v) => v.enemySpec;
  static const Field<Mission, String> _f$enemySpec = Field(
    'enemySpec',
    _$enemySpec,
  );
  static int _$minEnemyLevel(Mission v) => v.minEnemyLevel;
  static const Field<Mission, int> _f$minEnemyLevel = Field(
    'minEnemyLevel',
    _$minEnemyLevel,
  );
  static int _$maxEnemyLevel(Mission v) => v.maxEnemyLevel;
  static const Field<Mission, int> _f$maxEnemyLevel = Field(
    'maxEnemyLevel',
    _$maxEnemyLevel,
  );
  static Reward _$reward(Mission v) => v.reward;
  static const Field<Mission, Reward> _f$reward = Field('reward', _$reward);
  static String? _$description(Mission v) => v.description;
  static const Field<Mission, String> _f$description = Field(
    'description',
    _$description,
  );
  static String? _$questRequired(Mission v) => v.questRequired;
  static const Field<Mission, String> _f$questRequired = Field(
    'questRequired',
    _$questRequired,
  );
  static int? _$maxWaves(Mission v) => v.maxWaves;
  static const Field<Mission, int> _f$maxWaves = Field('maxWaves', _$maxWaves);
  static int _$difficultyLevel(Mission v) => v.difficultyLevel;
  static const Field<Mission, int> _f$difficultyLevel = Field(
    'difficultyLevel',
    _$difficultyLevel,
  );
  static bool _$archwingRequired(Mission v) => v.archwingRequired;
  static const Field<Mission, bool> _f$archwingRequired = Field(
    'archwingRequired',
    _$archwingRequired,
  );

  @override
  final MappableFields<Mission> fields = const {
    #type: _f$type,
    #faction: _f$faction,
    #node: _f$node,
    #override: _f$override,
    #enemySpec: _f$enemySpec,
    #minEnemyLevel: _f$minEnemyLevel,
    #maxEnemyLevel: _f$maxEnemyLevel,
    #reward: _f$reward,
    #description: _f$description,
    #questRequired: _f$questRequired,
    #maxWaves: _f$maxWaves,
    #difficultyLevel: _f$difficultyLevel,
    #archwingRequired: _f$archwingRequired,
  };
  @override
  final bool ignoreNull = true;

  static Mission _instantiate(DecodingData data) {
    return Mission(
      type: data.dec(_f$type),
      faction: data.dec(_f$faction),
      node: data.dec(_f$node),
      override: data.dec(_f$override),
      enemySpec: data.dec(_f$enemySpec),
      minEnemyLevel: data.dec(_f$minEnemyLevel),
      maxEnemyLevel: data.dec(_f$maxEnemyLevel),
      reward: data.dec(_f$reward),
      description: data.dec(_f$description),
      questRequired: data.dec(_f$questRequired),
      maxWaves: data.dec(_f$maxWaves),
      difficultyLevel: data.dec(_f$difficultyLevel),
      archwingRequired: data.dec(_f$archwingRequired),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Mission fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Mission>(map);
  }

  static Mission fromJson(String json) {
    return ensureInitialized().decodeJson<Mission>(json);
  }
}

mixin MissionMappable {
  String toJson() {
    return MissionMapper.ensureInitialized().encodeJson<Mission>(
      this as Mission,
    );
  }

  Map<String, dynamic> toMap() {
    return MissionMapper.ensureInitialized().encodeMap<Mission>(
      this as Mission,
    );
  }

  MissionCopyWith<Mission, Mission, Mission> get copyWith =>
      _MissionCopyWithImpl<Mission, Mission>(
        this as Mission,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MissionMapper.ensureInitialized().stringifyValue(this as Mission);
  }

  @override
  bool operator ==(Object other) {
    return MissionMapper.ensureInitialized().equalsValue(
      this as Mission,
      other,
    );
  }

  @override
  int get hashCode {
    return MissionMapper.ensureInitialized().hashValue(this as Mission);
  }
}

extension MissionValueCopy<$R, $Out> on ObjectCopyWith<$R, Mission, $Out> {
  MissionCopyWith<$R, Mission, $Out> get $asMission =>
      $base.as((v, t, t2) => _MissionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MissionCopyWith<$R, $In extends Mission, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RewardCopyWith<$R, Reward, Reward> get reward;
  $R call({
    String? type,
    String? faction,
    String? node,
    String? override,
    String? enemySpec,
    int? minEnemyLevel,
    int? maxEnemyLevel,
    Reward? reward,
    String? description,
    String? questRequired,
    int? maxWaves,
    int? difficultyLevel,
    bool? archwingRequired,
  });
  MissionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MissionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Mission, $Out>
    implements MissionCopyWith<$R, Mission, $Out> {
  _MissionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Mission> $mapper =
      MissionMapper.ensureInitialized();
  @override
  RewardCopyWith<$R, Reward, Reward> get reward =>
      $value.reward.copyWith.$chain((v) => call(reward: v));
  @override
  $R call({
    String? type,
    String? faction,
    String? node,
    Object? override = $none,
    String? enemySpec,
    int? minEnemyLevel,
    int? maxEnemyLevel,
    Reward? reward,
    Object? description = $none,
    Object? questRequired = $none,
    Object? maxWaves = $none,
    int? difficultyLevel,
    bool? archwingRequired,
  }) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (faction != null) #faction: faction,
      if (node != null) #node: node,
      if (override != $none) #override: override,
      if (enemySpec != null) #enemySpec: enemySpec,
      if (minEnemyLevel != null) #minEnemyLevel: minEnemyLevel,
      if (maxEnemyLevel != null) #maxEnemyLevel: maxEnemyLevel,
      if (reward != null) #reward: reward,
      if (description != $none) #description: description,
      if (questRequired != $none) #questRequired: questRequired,
      if (maxWaves != $none) #maxWaves: maxWaves,
      if (difficultyLevel != null) #difficultyLevel: difficultyLevel,
      if (archwingRequired != null) #archwingRequired: archwingRequired,
    }),
  );
  @override
  Mission $make(CopyWithData data) => Mission(
    type: data.get(#type, or: $value.type),
    faction: data.get(#faction, or: $value.faction),
    node: data.get(#node, or: $value.node),
    override: data.get(#override, or: $value.override),
    enemySpec: data.get(#enemySpec, or: $value.enemySpec),
    minEnemyLevel: data.get(#minEnemyLevel, or: $value.minEnemyLevel),
    maxEnemyLevel: data.get(#maxEnemyLevel, or: $value.maxEnemyLevel),
    reward: data.get(#reward, or: $value.reward),
    description: data.get(#description, or: $value.description),
    questRequired: data.get(#questRequired, or: $value.questRequired),
    maxWaves: data.get(#maxWaves, or: $value.maxWaves),
    difficultyLevel: data.get(#difficultyLevel, or: $value.difficultyLevel),
    archwingRequired: data.get(#archwingRequired, or: $value.archwingRequired),
  );

  @override
  MissionCopyWith<$R2, Mission, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MissionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

