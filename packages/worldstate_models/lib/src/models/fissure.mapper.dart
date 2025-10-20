// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'fissure.dart';

class RawActiveMissionMapper extends ClassMapperBase<RawActiveMission> {
  RawActiveMissionMapper._();

  static RawActiveMissionMapper? _instance;
  static RawActiveMissionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawActiveMissionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawActiveMission';

  static Map<String, dynamic> _$id(RawActiveMission v) => v.id;
  static const Field<RawActiveMission, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static Map<String, dynamic>? _$activation(RawActiveMission v) => v.activation;
  static const Field<RawActiveMission, Map<String, dynamic>> _f$activation =
      Field('activation', _$activation, key: r'Activation');
  static Map<String, dynamic>? _$expiry(RawActiveMission v) => v.expiry;
  static const Field<RawActiveMission, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String _$node(RawActiveMission v) => v.node;
  static const Field<RawActiveMission, String> _f$node = Field(
    'node',
    _$node,
    key: r'Node',
  );
  static String? _$missionType(RawActiveMission v) => v.missionType;
  static const Field<RawActiveMission, String> _f$missionType = Field(
    'missionType',
    _$missionType,
    key: r'MissionType',
  );
  static String? _$modifier(RawActiveMission v) => v.modifier;
  static const Field<RawActiveMission, String> _f$modifier = Field(
    'modifier',
    _$modifier,
    key: r'Modifier',
  );
  static bool? _$hard(RawActiveMission v) => v.hard;
  static const Field<RawActiveMission, bool> _f$hard = Field(
    'hard',
    _$hard,
    key: r'Hard',
  );
  static String? _$activeMissionTier(RawActiveMission v) => v.activeMissionTier;
  static const Field<RawActiveMission, String> _f$activeMissionTier = Field(
    'activeMissionTier',
    _$activeMissionTier,
    key: r'ActiveMissionTier',
  );

  @override
  final MappableFields<RawActiveMission> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #node: _f$node,
    #missionType: _f$missionType,
    #modifier: _f$modifier,
    #hard: _f$hard,
    #activeMissionTier: _f$activeMissionTier,
  };
  @override
  final bool ignoreNull = true;

  static RawActiveMission _instantiate(DecodingData data) {
    return RawActiveMission(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      node: data.dec(_f$node),
      missionType: data.dec(_f$missionType),
      modifier: data.dec(_f$modifier),
      hard: data.dec(_f$hard),
      activeMissionTier: data.dec(_f$activeMissionTier),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawActiveMission fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawActiveMission>(map);
  }

  static RawActiveMission fromJson(String json) {
    return ensureInitialized().decodeJson<RawActiveMission>(json);
  }
}

mixin RawActiveMissionMappable {
  String toJson() {
    return RawActiveMissionMapper.ensureInitialized()
        .encodeJson<RawActiveMission>(this as RawActiveMission);
  }

  Map<String, dynamic> toMap() {
    return RawActiveMissionMapper.ensureInitialized()
        .encodeMap<RawActiveMission>(this as RawActiveMission);
  }

  RawActiveMissionCopyWith<RawActiveMission, RawActiveMission, RawActiveMission>
  get copyWith =>
      _RawActiveMissionCopyWithImpl<RawActiveMission, RawActiveMission>(
        this as RawActiveMission,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawActiveMissionMapper.ensureInitialized().stringifyValue(
      this as RawActiveMission,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawActiveMissionMapper.ensureInitialized().equalsValue(
      this as RawActiveMission,
      other,
    );
  }

  @override
  int get hashCode {
    return RawActiveMissionMapper.ensureInitialized().hashValue(
      this as RawActiveMission,
    );
  }
}

extension RawActiveMissionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawActiveMission, $Out> {
  RawActiveMissionCopyWith<$R, RawActiveMission, $Out>
  get $asRawActiveMission =>
      $base.as((v, t, t2) => _RawActiveMissionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawActiveMissionCopyWith<$R, $In extends RawActiveMission, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  $R call({
    Map<String, dynamic>? id,
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? node,
    String? missionType,
    String? modifier,
    bool? hard,
    String? activeMissionTier,
  });
  RawActiveMissionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawActiveMissionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawActiveMission, $Out>
    implements RawActiveMissionCopyWith<$R, RawActiveMission, $Out> {
  _RawActiveMissionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawActiveMission> $mapper =
      RawActiveMissionMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get id => MapCopyWith(
    $value.id,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(id: v),
  );
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation => $value.activation != null
      ? MapCopyWith(
          $value.activation!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(activation: v),
        )
      : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry => $value.expiry != null
      ? MapCopyWith(
          $value.expiry!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(expiry: v),
        )
      : null;
  @override
  $R call({
    Map<String, dynamic>? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? node,
    Object? missionType = $none,
    Object? modifier = $none,
    Object? hard = $none,
    Object? activeMissionTier = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (node != null) #node: node,
      if (missionType != $none) #missionType: missionType,
      if (modifier != $none) #modifier: modifier,
      if (hard != $none) #hard: hard,
      if (activeMissionTier != $none) #activeMissionTier: activeMissionTier,
    }),
  );
  @override
  RawActiveMission $make(CopyWithData data) => RawActiveMission(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    node: data.get(#node, or: $value.node),
    missionType: data.get(#missionType, or: $value.missionType),
    modifier: data.get(#modifier, or: $value.modifier),
    hard: data.get(#hard, or: $value.hard),
    activeMissionTier: data.get(
      #activeMissionTier,
      or: $value.activeMissionTier,
    ),
  );

  @override
  RawActiveMissionCopyWith<$R2, RawActiveMission, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawActiveMissionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VoidFissureMapper extends ClassMapperBase<VoidFissure> {
  VoidFissureMapper._();

  static VoidFissureMapper? _instance;
  static VoidFissureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VoidFissureMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VoidFissure';

  static String _$id(VoidFissure v) => v.id;
  static const Field<VoidFissure, String> _f$id = Field('id', _$id);
  static DateTime _$activation(VoidFissure v) => v.activation;
  static const Field<VoidFissure, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(VoidFissure v) => v.expiry;
  static const Field<VoidFissure, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static String _$node(VoidFissure v) => v.node;
  static const Field<VoidFissure, String> _f$node = Field('node', _$node);
  static String _$nodeKey(VoidFissure v) => v.nodeKey;
  static const Field<VoidFissure, String> _f$nodeKey = Field(
    'nodeKey',
    _$nodeKey,
  );
  static String _$missionType(VoidFissure v) => v.missionType;
  static const Field<VoidFissure, String> _f$missionType = Field(
    'missionType',
    _$missionType,
  );
  static String _$missionKey(VoidFissure v) => v.missionKey;
  static const Field<VoidFissure, String> _f$missionKey = Field(
    'missionKey',
    _$missionKey,
  );
  static String _$faction(VoidFissure v) => v.faction;
  static const Field<VoidFissure, String> _f$faction = Field(
    'faction',
    _$faction,
  );
  static String _$factionKey(VoidFissure v) => v.factionKey;
  static const Field<VoidFissure, String> _f$factionKey = Field(
    'factionKey',
    _$factionKey,
  );
  static String _$tier(VoidFissure v) => v.tier;
  static const Field<VoidFissure, String> _f$tier = Field('tier', _$tier);
  static int _$tierNum(VoidFissure v) => v.tierNum;
  static const Field<VoidFissure, int> _f$tierNum = Field('tierNum', _$tierNum);
  static bool _$isStorm(VoidFissure v) => v.isStorm;
  static const Field<VoidFissure, bool> _f$isStorm = Field(
    'isStorm',
    _$isStorm,
  );
  static bool _$isSteelpath(VoidFissure v) => v.isSteelpath;
  static const Field<VoidFissure, bool> _f$isSteelpath = Field(
    'isSteelpath',
    _$isSteelpath,
  );

  @override
  final MappableFields<VoidFissure> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #node: _f$node,
    #nodeKey: _f$nodeKey,
    #missionType: _f$missionType,
    #missionKey: _f$missionKey,
    #faction: _f$faction,
    #factionKey: _f$factionKey,
    #tier: _f$tier,
    #tierNum: _f$tierNum,
    #isStorm: _f$isStorm,
    #isSteelpath: _f$isSteelpath,
  };
  @override
  final bool ignoreNull = true;

  static VoidFissure _instantiate(DecodingData data) {
    return VoidFissure(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      node: data.dec(_f$node),
      nodeKey: data.dec(_f$nodeKey),
      missionType: data.dec(_f$missionType),
      missionKey: data.dec(_f$missionKey),
      faction: data.dec(_f$faction),
      factionKey: data.dec(_f$factionKey),
      tier: data.dec(_f$tier),
      tierNum: data.dec(_f$tierNum),
      isStorm: data.dec(_f$isStorm),
      isSteelpath: data.dec(_f$isSteelpath),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VoidFissure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VoidFissure>(map);
  }

  static VoidFissure fromJson(String json) {
    return ensureInitialized().decodeJson<VoidFissure>(json);
  }
}

mixin VoidFissureMappable {
  String toJson() {
    return VoidFissureMapper.ensureInitialized().encodeJson<VoidFissure>(
      this as VoidFissure,
    );
  }

  Map<String, dynamic> toMap() {
    return VoidFissureMapper.ensureInitialized().encodeMap<VoidFissure>(
      this as VoidFissure,
    );
  }

  VoidFissureCopyWith<VoidFissure, VoidFissure, VoidFissure> get copyWith =>
      _VoidFissureCopyWithImpl<VoidFissure, VoidFissure>(
        this as VoidFissure,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return VoidFissureMapper.ensureInitialized().stringifyValue(
      this as VoidFissure,
    );
  }

  @override
  bool operator ==(Object other) {
    return VoidFissureMapper.ensureInitialized().equalsValue(
      this as VoidFissure,
      other,
    );
  }

  @override
  int get hashCode {
    return VoidFissureMapper.ensureInitialized().hashValue(this as VoidFissure);
  }
}

extension VoidFissureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VoidFissure, $Out> {
  VoidFissureCopyWith<$R, VoidFissure, $Out> get $asVoidFissure =>
      $base.as((v, t, t2) => _VoidFissureCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VoidFissureCopyWith<$R, $In extends VoidFissure, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? node,
    String? nodeKey,
    String? missionType,
    String? missionKey,
    String? faction,
    String? factionKey,
    String? tier,
    int? tierNum,
    bool? isStorm,
    bool? isSteelpath,
  });
  VoidFissureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VoidFissureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VoidFissure, $Out>
    implements VoidFissureCopyWith<$R, VoidFissure, $Out> {
  _VoidFissureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VoidFissure> $mapper =
      VoidFissureMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? node,
    String? nodeKey,
    String? missionType,
    String? missionKey,
    String? faction,
    String? factionKey,
    String? tier,
    int? tierNum,
    bool? isStorm,
    bool? isSteelpath,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (node != null) #node: node,
      if (nodeKey != null) #nodeKey: nodeKey,
      if (missionType != null) #missionType: missionType,
      if (missionKey != null) #missionKey: missionKey,
      if (faction != null) #faction: faction,
      if (factionKey != null) #factionKey: factionKey,
      if (tier != null) #tier: tier,
      if (tierNum != null) #tierNum: tierNum,
      if (isStorm != null) #isStorm: isStorm,
      if (isSteelpath != null) #isSteelpath: isSteelpath,
    }),
  );
  @override
  VoidFissure $make(CopyWithData data) => VoidFissure(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    node: data.get(#node, or: $value.node),
    nodeKey: data.get(#nodeKey, or: $value.nodeKey),
    missionType: data.get(#missionType, or: $value.missionType),
    missionKey: data.get(#missionKey, or: $value.missionKey),
    faction: data.get(#faction, or: $value.faction),
    factionKey: data.get(#factionKey, or: $value.factionKey),
    tier: data.get(#tier, or: $value.tier),
    tierNum: data.get(#tierNum, or: $value.tierNum),
    isStorm: data.get(#isStorm, or: $value.isStorm),
    isSteelpath: data.get(#isSteelpath, or: $value.isSteelpath),
  );

  @override
  VoidFissureCopyWith<$R2, VoidFissure, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _VoidFissureCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

