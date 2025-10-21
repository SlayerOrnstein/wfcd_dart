// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'archimedea.dart';

class RawConquestMapper extends ClassMapperBase<RawConquest> {
  RawConquestMapper._();

  static RawConquestMapper? _instance;
  static RawConquestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawConquestMapper._());
      RawConquestMissionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawConquest';

  static Map<String, dynamic>? _$activation(RawConquest v) => v.activation;
  static const Field<RawConquest, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawConquest v) => v.expiry;
  static const Field<RawConquest, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String _$type(RawConquest v) => v.type;
  static const Field<RawConquest, String> _f$type = Field(
    'type',
    _$type,
    key: r'Type',
  );
  static List<RawConquestMission> _$missions(RawConquest v) => v.missions;
  static const Field<RawConquest, List<RawConquestMission>> _f$missions = Field(
    'missions',
    _$missions,
    key: r'Missions',
  );

  @override
  final MappableFields<RawConquest> fields = const {
    #activation: _f$activation,
    #expiry: _f$expiry,
    #type: _f$type,
    #missions: _f$missions,
  };
  @override
  final bool ignoreNull = true;

  static RawConquest _instantiate(DecodingData data) {
    return RawConquest(
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      type: data.dec(_f$type),
      missions: data.dec(_f$missions),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawConquest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawConquest>(map);
  }

  static RawConquest fromJson(String json) {
    return ensureInitialized().decodeJson<RawConquest>(json);
  }
}

mixin RawConquestMappable {
  String toJson() {
    return RawConquestMapper.ensureInitialized().encodeJson<RawConquest>(
      this as RawConquest,
    );
  }

  Map<String, dynamic> toMap() {
    return RawConquestMapper.ensureInitialized().encodeMap<RawConquest>(
      this as RawConquest,
    );
  }

  RawConquestCopyWith<RawConquest, RawConquest, RawConquest> get copyWith =>
      _RawConquestCopyWithImpl<RawConquest, RawConquest>(
        this as RawConquest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawConquestMapper.ensureInitialized().stringifyValue(
      this as RawConquest,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawConquestMapper.ensureInitialized().equalsValue(
      this as RawConquest,
      other,
    );
  }

  @override
  int get hashCode {
    return RawConquestMapper.ensureInitialized().hashValue(this as RawConquest);
  }
}

extension RawConquestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawConquest, $Out> {
  RawConquestCopyWith<$R, RawConquest, $Out> get $asRawConquest =>
      $base.as((v, t, t2) => _RawConquestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawConquestCopyWith<$R, $In extends RawConquest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  ListCopyWith<
    $R,
    RawConquestMission,
    RawConquestMissionCopyWith<$R, RawConquestMission, RawConquestMission>
  >
  get missions;
  $R call({
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? type,
    List<RawConquestMission>? missions,
  });
  RawConquestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawConquestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawConquest, $Out>
    implements RawConquestCopyWith<$R, RawConquest, $Out> {
  _RawConquestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawConquest> $mapper =
      RawConquestMapper.ensureInitialized();
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
  ListCopyWith<
    $R,
    RawConquestMission,
    RawConquestMissionCopyWith<$R, RawConquestMission, RawConquestMission>
  >
  get missions => ListCopyWith(
    $value.missions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(missions: v),
  );
  @override
  $R call({
    Object? activation = $none,
    Object? expiry = $none,
    String? type,
    List<RawConquestMission>? missions,
  }) => $apply(
    FieldCopyWithData({
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (type != null) #type: type,
      if (missions != null) #missions: missions,
    }),
  );
  @override
  RawConquest $make(CopyWithData data) => RawConquest(
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    type: data.get(#type, or: $value.type),
    missions: data.get(#missions, or: $value.missions),
  );

  @override
  RawConquestCopyWith<$R2, RawConquest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawConquestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawConquestMissionMapper extends ClassMapperBase<RawConquestMission> {
  RawConquestMissionMapper._();

  static RawConquestMissionMapper? _instance;
  static RawConquestMissionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawConquestMissionMapper._());
      RawConquestDifficultyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawConquestMission';

  static String _$faction(RawConquestMission v) => v.faction;
  static const Field<RawConquestMission, String> _f$faction = Field(
    'faction',
    _$faction,
  );
  static String _$missionType(RawConquestMission v) => v.missionType;
  static const Field<RawConquestMission, String> _f$missionType = Field(
    'missionType',
    _$missionType,
  );
  static List<RawConquestDifficulty> _$difficulties(RawConquestMission v) =>
      v.difficulties;
  static const Field<RawConquestMission, List<RawConquestDifficulty>>
  _f$difficulties = Field('difficulties', _$difficulties);

  @override
  final MappableFields<RawConquestMission> fields = const {
    #faction: _f$faction,
    #missionType: _f$missionType,
    #difficulties: _f$difficulties,
  };
  @override
  final bool ignoreNull = true;

  static RawConquestMission _instantiate(DecodingData data) {
    return RawConquestMission(
      faction: data.dec(_f$faction),
      missionType: data.dec(_f$missionType),
      difficulties: data.dec(_f$difficulties),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawConquestMission fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawConquestMission>(map);
  }

  static RawConquestMission fromJson(String json) {
    return ensureInitialized().decodeJson<RawConquestMission>(json);
  }
}

mixin RawConquestMissionMappable {
  String toJson() {
    return RawConquestMissionMapper.ensureInitialized()
        .encodeJson<RawConquestMission>(this as RawConquestMission);
  }

  Map<String, dynamic> toMap() {
    return RawConquestMissionMapper.ensureInitialized()
        .encodeMap<RawConquestMission>(this as RawConquestMission);
  }

  RawConquestMissionCopyWith<
    RawConquestMission,
    RawConquestMission,
    RawConquestMission
  >
  get copyWith =>
      _RawConquestMissionCopyWithImpl<RawConquestMission, RawConquestMission>(
        this as RawConquestMission,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawConquestMissionMapper.ensureInitialized().stringifyValue(
      this as RawConquestMission,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawConquestMissionMapper.ensureInitialized().equalsValue(
      this as RawConquestMission,
      other,
    );
  }

  @override
  int get hashCode {
    return RawConquestMissionMapper.ensureInitialized().hashValue(
      this as RawConquestMission,
    );
  }
}

extension RawConquestMissionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawConquestMission, $Out> {
  RawConquestMissionCopyWith<$R, RawConquestMission, $Out>
  get $asRawConquestMission => $base.as(
    (v, t, t2) => _RawConquestMissionCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RawConquestMissionCopyWith<
  $R,
  $In extends RawConquestMission,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    RawConquestDifficulty,
    ObjectCopyWith<$R, RawConquestDifficulty, RawConquestDifficulty>
  >
  get difficulties;
  $R call({
    String? faction,
    String? missionType,
    List<RawConquestDifficulty>? difficulties,
  });
  RawConquestMissionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawConquestMissionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawConquestMission, $Out>
    implements RawConquestMissionCopyWith<$R, RawConquestMission, $Out> {
  _RawConquestMissionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawConquestMission> $mapper =
      RawConquestMissionMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    RawConquestDifficulty,
    ObjectCopyWith<$R, RawConquestDifficulty, RawConquestDifficulty>
  >
  get difficulties => ListCopyWith(
    $value.difficulties,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(difficulties: v),
  );
  @override
  $R call({
    String? faction,
    String? missionType,
    List<RawConquestDifficulty>? difficulties,
  }) => $apply(
    FieldCopyWithData({
      if (faction != null) #faction: faction,
      if (missionType != null) #missionType: missionType,
      if (difficulties != null) #difficulties: difficulties,
    }),
  );
  @override
  RawConquestMission $make(CopyWithData data) => RawConquestMission(
    faction: data.get(#faction, or: $value.faction),
    missionType: data.get(#missionType, or: $value.missionType),
    difficulties: data.get(#difficulties, or: $value.difficulties),
  );

  @override
  RawConquestMissionCopyWith<$R2, RawConquestMission, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawConquestMissionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawConquestDifficultyMapper
    extends RecordMapperBase<RawConquestDifficulty> {
  static RawConquestDifficultyMapper? _instance;
  RawConquestDifficultyMapper._();

  static RawConquestDifficultyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawConquestDifficultyMapper._());
      MapperBase.addType(<A, B, C>(f) => f<({A deviation, B risks, C type})>());
    }
    return _instance!;
  }

  static String _$type(RawConquestDifficulty v) => v.type;
  static const Field<RawConquestDifficulty, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$deviation(RawConquestDifficulty v) => v.deviation;
  static const Field<RawConquestDifficulty, String> _f$deviation = Field(
    'deviation',
    _$deviation,
  );
  static List<String> _$risks(RawConquestDifficulty v) => v.risks;
  static const Field<RawConquestDifficulty, List<String>> _f$risks = Field(
    'risks',
    _$risks,
  );

  @override
  final MappableFields<RawConquestDifficulty> fields = const {
    #type: _f$type,
    #deviation: _f$deviation,
    #risks: _f$risks,
  };

  @override
  Function get typeFactory =>
      (f) => f<RawConquestDifficulty>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static RawConquestDifficulty _instantiate(
    DecodingData<RawConquestDifficulty> data,
  ) {
    return (
      type: data.dec(_f$type),
      deviation: data.dec(_f$deviation),
      risks: data.dec(_f$risks),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawConquestDifficulty fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawConquestDifficulty>(map);
  }

  static RawConquestDifficulty fromJson(String json) {
    return ensureInitialized().decodeJson<RawConquestDifficulty>(json);
  }
}

extension RawConquestDifficultyMappable on RawConquestDifficulty {
  Map<String, dynamic> toMap() {
    return RawConquestDifficultyMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return RawConquestDifficultyMapper.ensureInitialized().encodeJson(this);
  }

  RawConquestDifficultyCopyWith<RawConquestDifficulty> get copyWith =>
      _RawConquestDifficultyCopyWithImpl(this, $identity, $identity);
}

extension RawConquestDifficultyValueCopy<$R>
    on ObjectCopyWith<$R, RawConquestDifficulty, RawConquestDifficulty> {
  RawConquestDifficultyCopyWith<$R> get $asRawConquestDifficulty =>
      $base.as((v, t, t2) => _RawConquestDifficultyCopyWithImpl(v, t, t2));
}

abstract class RawConquestDifficultyCopyWith<$R>
    implements RecordCopyWith<$R, RawConquestDifficulty> {
  $R call({String? type, String? deviation, List<String>? risks});
  RawConquestDifficultyCopyWith<$R2> $chain<$R2>(
    Then<RawConquestDifficulty, $R2> t,
  );
}

class _RawConquestDifficultyCopyWithImpl<$R>
    extends RecordCopyWithBase<$R, RawConquestDifficulty>
    implements RawConquestDifficultyCopyWith<$R> {
  _RawConquestDifficultyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<RawConquestDifficulty> $mapper =
      RawConquestDifficultyMapper.ensureInitialized();
  @override
  $R call({String? type, String? deviation, List<String>? risks}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (deviation != null) #deviation: deviation,
      if (risks != null) #risks: risks,
    }),
  );
  @override
  RawConquestDifficulty $make(CopyWithData data) => (
    type: data.get(#type, or: $value.type),
    deviation: data.get(#deviation, or: $value.deviation),
    risks: data.get(#risks, or: $value.risks),
  );

  @override
  RawConquestDifficultyCopyWith<$R2> $chain<$R2>(
    Then<RawConquestDifficulty, $R2> t,
  ) => _RawConquestDifficultyCopyWithImpl($value, $cast, t);
}

class ArchimedeaMapper extends ClassMapperBase<Archimedea> {
  ArchimedeaMapper._();

  static ArchimedeaMapper? _instance;
  static ArchimedeaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArchimedeaMapper._());
      ArchimedeaMissionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Archimedea';

  static String _$id(Archimedea v) => v.id;
  static const Field<Archimedea, String> _f$id = Field('id', _$id);
  static DateTime _$activation(Archimedea v) => v.activation;
  static const Field<Archimedea, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(Archimedea v) => v.expiry;
  static const Field<Archimedea, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static String _$type(Archimedea v) => v.type;
  static const Field<Archimedea, String> _f$type = Field('type', _$type);
  static List<ArchimedeaMission> _$missions(Archimedea v) => v.missions;
  static const Field<Archimedea, List<ArchimedeaMission>> _f$missions = Field(
    'missions',
    _$missions,
  );

  @override
  final MappableFields<Archimedea> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #type: _f$type,
    #missions: _f$missions,
  };
  @override
  final bool ignoreNull = true;

  static Archimedea _instantiate(DecodingData data) {
    return Archimedea(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      type: data.dec(_f$type),
      missions: data.dec(_f$missions),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Archimedea fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Archimedea>(map);
  }

  static Archimedea fromJson(String json) {
    return ensureInitialized().decodeJson<Archimedea>(json);
  }
}

mixin ArchimedeaMappable {
  String toJson() {
    return ArchimedeaMapper.ensureInitialized().encodeJson<Archimedea>(
      this as Archimedea,
    );
  }

  Map<String, dynamic> toMap() {
    return ArchimedeaMapper.ensureInitialized().encodeMap<Archimedea>(
      this as Archimedea,
    );
  }

  ArchimedeaCopyWith<Archimedea, Archimedea, Archimedea> get copyWith =>
      _ArchimedeaCopyWithImpl<Archimedea, Archimedea>(
        this as Archimedea,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ArchimedeaMapper.ensureInitialized().stringifyValue(
      this as Archimedea,
    );
  }

  @override
  bool operator ==(Object other) {
    return ArchimedeaMapper.ensureInitialized().equalsValue(
      this as Archimedea,
      other,
    );
  }

  @override
  int get hashCode {
    return ArchimedeaMapper.ensureInitialized().hashValue(this as Archimedea);
  }
}

extension ArchimedeaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Archimedea, $Out> {
  ArchimedeaCopyWith<$R, Archimedea, $Out> get $asArchimedea =>
      $base.as((v, t, t2) => _ArchimedeaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ArchimedeaCopyWith<$R, $In extends Archimedea, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ArchimedeaMission,
    ArchimedeaMissionCopyWith<$R, ArchimedeaMission, ArchimedeaMission>
  >
  get missions;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? type,
    List<ArchimedeaMission>? missions,
  });
  ArchimedeaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ArchimedeaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Archimedea, $Out>
    implements ArchimedeaCopyWith<$R, Archimedea, $Out> {
  _ArchimedeaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Archimedea> $mapper =
      ArchimedeaMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ArchimedeaMission,
    ArchimedeaMissionCopyWith<$R, ArchimedeaMission, ArchimedeaMission>
  >
  get missions => ListCopyWith(
    $value.missions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(missions: v),
  );
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? type,
    List<ArchimedeaMission>? missions,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (type != null) #type: type,
      if (missions != null) #missions: missions,
    }),
  );
  @override
  Archimedea $make(CopyWithData data) => Archimedea(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    type: data.get(#type, or: $value.type),
    missions: data.get(#missions, or: $value.missions),
  );

  @override
  ArchimedeaCopyWith<$R2, Archimedea, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ArchimedeaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ArchimedeaMissionMapper extends ClassMapperBase<ArchimedeaMission> {
  ArchimedeaMissionMapper._();

  static ArchimedeaMissionMapper? _instance;
  static ArchimedeaMissionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArchimedeaMissionMapper._());
      _t$_R0Mapper.ensureInitialized();
      _t$_R1Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ArchimedeaMission';

  static String _$faction(ArchimedeaMission v) => v.faction;
  static const Field<ArchimedeaMission, String> _f$faction = Field(
    'faction',
    _$faction,
  );
  static String _$missionType(ArchimedeaMission v) => v.missionType;
  static const Field<ArchimedeaMission, String> _f$missionType = Field(
    'missionType',
    _$missionType,
  );
  static _t$_R0<String, String> _$deviation(ArchimedeaMission v) => v.deviation;
  static const Field<ArchimedeaMission, _t$_R0<String, String>> _f$deviation =
      Field('deviation', _$deviation);
  static List<ArchimedeaRisk> _$risks(ArchimedeaMission v) => v.risks;
  static const Field<ArchimedeaMission, List<ArchimedeaRisk>> _f$risks = Field(
    'risks',
    _$risks,
  );

  @override
  final MappableFields<ArchimedeaMission> fields = const {
    #faction: _f$faction,
    #missionType: _f$missionType,
    #deviation: _f$deviation,
    #risks: _f$risks,
  };
  @override
  final bool ignoreNull = true;

  static ArchimedeaMission _instantiate(DecodingData data) {
    return ArchimedeaMission(
      faction: data.dec(_f$faction),
      missionType: data.dec(_f$missionType),
      deviation: data.dec(_f$deviation),
      risks: data.dec(_f$risks),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ArchimedeaMission fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ArchimedeaMission>(map);
  }

  static ArchimedeaMission fromJson(String json) {
    return ensureInitialized().decodeJson<ArchimedeaMission>(json);
  }
}

mixin ArchimedeaMissionMappable {
  String toJson() {
    return ArchimedeaMissionMapper.ensureInitialized()
        .encodeJson<ArchimedeaMission>(this as ArchimedeaMission);
  }

  Map<String, dynamic> toMap() {
    return ArchimedeaMissionMapper.ensureInitialized()
        .encodeMap<ArchimedeaMission>(this as ArchimedeaMission);
  }

  ArchimedeaMissionCopyWith<
    ArchimedeaMission,
    ArchimedeaMission,
    ArchimedeaMission
  >
  get copyWith =>
      _ArchimedeaMissionCopyWithImpl<ArchimedeaMission, ArchimedeaMission>(
        this as ArchimedeaMission,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ArchimedeaMissionMapper.ensureInitialized().stringifyValue(
      this as ArchimedeaMission,
    );
  }

  @override
  bool operator ==(Object other) {
    return ArchimedeaMissionMapper.ensureInitialized().equalsValue(
      this as ArchimedeaMission,
      other,
    );
  }

  @override
  int get hashCode {
    return ArchimedeaMissionMapper.ensureInitialized().hashValue(
      this as ArchimedeaMission,
    );
  }
}

extension ArchimedeaMissionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ArchimedeaMission, $Out> {
  ArchimedeaMissionCopyWith<$R, ArchimedeaMission, $Out>
  get $asArchimedeaMission => $base.as(
    (v, t, t2) => _ArchimedeaMissionCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ArchimedeaMissionCopyWith<
  $R,
  $In extends ArchimedeaMission,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ArchimedeaRisk,
    ObjectCopyWith<$R, ArchimedeaRisk, ArchimedeaRisk>
  >
  get risks;
  $R call({
    String? faction,
    String? missionType,
    _t$_R0<String, String>? deviation,
    List<ArchimedeaRisk>? risks,
  });
  ArchimedeaMissionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ArchimedeaMissionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ArchimedeaMission, $Out>
    implements ArchimedeaMissionCopyWith<$R, ArchimedeaMission, $Out> {
  _ArchimedeaMissionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ArchimedeaMission> $mapper =
      ArchimedeaMissionMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ArchimedeaRisk,
    ObjectCopyWith<$R, ArchimedeaRisk, ArchimedeaRisk>
  >
  get risks => ListCopyWith(
    $value.risks,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(risks: v),
  );
  @override
  $R call({
    String? faction,
    String? missionType,
    _t$_R0<String, String>? deviation,
    List<ArchimedeaRisk>? risks,
  }) => $apply(
    FieldCopyWithData({
      if (faction != null) #faction: faction,
      if (missionType != null) #missionType: missionType,
      if (deviation != null) #deviation: deviation,
      if (risks != null) #risks: risks,
    }),
  );
  @override
  ArchimedeaMission $make(CopyWithData data) => ArchimedeaMission(
    faction: data.get(#faction, or: $value.faction),
    missionType: data.get(#missionType, or: $value.missionType),
    deviation: data.get(#deviation, or: $value.deviation),
    risks: data.get(#risks, or: $value.risks),
  );

  @override
  ArchimedeaMissionCopyWith<$R2, ArchimedeaMission, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ArchimedeaMissionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

typedef _t$_R1<A, B, C> = ({A description, B isElite, C title});

class _t$_R1Mapper extends RecordMapperBase<_t$_R1> {
  static _t$_R1Mapper? _instance;
  _t$_R1Mapper._();

  static _t$_R1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R1Mapper._());
      MapperBase.addType(
        <A, B, C>(f) => f<({A description, B isElite, C title})>(),
      );
    }
    return _instance!;
  }

  static dynamic _$description(_t$_R1 v) => v.description;
  static dynamic _arg$description<A, B, C>(f) => f<A>();
  static const Field<_t$_R1, dynamic> _f$description = Field(
    'description',
    _$description,
    arg: _arg$description,
  );
  static dynamic _$isElite(_t$_R1 v) => v.isElite;
  static dynamic _arg$isElite<A, B, C>(f) => f<B>();
  static const Field<_t$_R1, dynamic> _f$isElite = Field(
    'isElite',
    _$isElite,
    arg: _arg$isElite,
  );
  static dynamic _$title(_t$_R1 v) => v.title;
  static dynamic _arg$title<A, B, C>(f) => f<C>();
  static const Field<_t$_R1, dynamic> _f$title = Field(
    'title',
    _$title,
    arg: _arg$title,
  );

  @override
  final MappableFields<_t$_R1> fields = const {
    #description: _f$description,
    #isElite: _f$isElite,
    #title: _f$title,
  };

  @override
  Function get typeFactory =>
      <A, B, C>(f) => f<_t$_R1<A, B, C>>();

  static _t$_R1<A, B, C> _instantiate<A, B, C>(DecodingData<_t$_R1> data) {
    return (
      description: data.dec(_f$description),
      isElite: data.dec(_f$isElite),
      title: data.dec(_f$title),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R1<A, B, C> fromMap<A, B, C>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R1<A, B, C>>(map);
  }

  static _t$_R1<A, B, C> fromJson<A, B, C>(String json) {
    return ensureInitialized().decodeJson<_t$_R1<A, B, C>>(json);
  }
}

typedef _t$_R0<A, B> = ({A description, B title});

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B>(f) => f<({A description, B title})>());
    }
    return _instance!;
  }

  static dynamic _$description(_t$_R0 v) => v.description;
  static dynamic _arg$description<A, B>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$description = Field(
    'description',
    _$description,
    arg: _arg$description,
  );
  static dynamic _$title(_t$_R0 v) => v.title;
  static dynamic _arg$title<A, B>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$title = Field(
    'title',
    _$title,
    arg: _arg$title,
  );

  @override
  final MappableFields<_t$_R0> fields = const {
    #description: _f$description,
    #title: _f$title,
  };

  @override
  Function get typeFactory =>
      <A, B>(f) => f<_t$_R0<A, B>>();

  static _t$_R0<A, B> _instantiate<A, B>(DecodingData<_t$_R0> data) {
    return (description: data.dec(_f$description), title: data.dec(_f$title));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B> fromMap<A, B>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B>>(map);
  }

  static _t$_R0<A, B> fromJson<A, B>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B>>(json);
  }
}

