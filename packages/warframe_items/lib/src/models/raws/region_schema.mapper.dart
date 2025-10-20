// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'region_schema.dart';

class RegionSchemaMapper extends ClassMapperBase<RegionSchema> {
  RegionSchemaMapper._();

  static RegionSchemaMapper? _instance;
  static RegionSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegionSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegionSchema';

  static String _$uniqueName(RegionSchema v) => v.uniqueName;
  static const Field<RegionSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(RegionSchema v) => v.name;
  static const Field<RegionSchema, String> _f$name = Field('name', _$name);
  static int _$systemIndex(RegionSchema v) => v.systemIndex;
  static const Field<RegionSchema, int> _f$systemIndex = Field(
    'systemIndex',
    _$systemIndex,
  );
  static String _$systemName(RegionSchema v) => v.systemName;
  static const Field<RegionSchema, String> _f$systemName = Field(
    'systemName',
    _$systemName,
  );
  static int _$nodeType(RegionSchema v) => v.nodeType;
  static const Field<RegionSchema, int> _f$nodeType = Field(
    'nodeType',
    _$nodeType,
  );
  static int _$masterReq(RegionSchema v) => v.masterReq;
  static const Field<RegionSchema, int> _f$masterReq = Field(
    'masterReq',
    _$masterReq,
  );
  static int _$missionIndex(RegionSchema v) => v.missionIndex;
  static const Field<RegionSchema, int> _f$missionIndex = Field(
    'missionIndex',
    _$missionIndex,
  );
  static int _$factionIndex(RegionSchema v) => v.factionIndex;
  static const Field<RegionSchema, int> _f$factionIndex = Field(
    'factionIndex',
    _$factionIndex,
  );
  static int _$minEnemyLevel(RegionSchema v) => v.minEnemyLevel;
  static const Field<RegionSchema, int> _f$minEnemyLevel = Field(
    'minEnemyLevel',
    _$minEnemyLevel,
  );
  static int _$maxEnemyLevel(RegionSchema v) => v.maxEnemyLevel;
  static const Field<RegionSchema, int> _f$maxEnemyLevel = Field(
    'maxEnemyLevel',
    _$maxEnemyLevel,
  );

  @override
  final MappableFields<RegionSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #systemIndex: _f$systemIndex,
    #systemName: _f$systemName,
    #nodeType: _f$nodeType,
    #masterReq: _f$masterReq,
    #missionIndex: _f$missionIndex,
    #factionIndex: _f$factionIndex,
    #minEnemyLevel: _f$minEnemyLevel,
    #maxEnemyLevel: _f$maxEnemyLevel,
  };

  static RegionSchema _instantiate(DecodingData data) {
    return RegionSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      systemIndex: data.dec(_f$systemIndex),
      systemName: data.dec(_f$systemName),
      nodeType: data.dec(_f$nodeType),
      masterReq: data.dec(_f$masterReq),
      missionIndex: data.dec(_f$missionIndex),
      factionIndex: data.dec(_f$factionIndex),
      minEnemyLevel: data.dec(_f$minEnemyLevel),
      maxEnemyLevel: data.dec(_f$maxEnemyLevel),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RegionSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegionSchema>(map);
  }

  static RegionSchema fromJson(String json) {
    return ensureInitialized().decodeJson<RegionSchema>(json);
  }
}

mixin RegionSchemaMappable {
  String toJson() {
    return RegionSchemaMapper.ensureInitialized().encodeJson<RegionSchema>(
      this as RegionSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return RegionSchemaMapper.ensureInitialized().encodeMap<RegionSchema>(
      this as RegionSchema,
    );
  }

  RegionSchemaCopyWith<RegionSchema, RegionSchema, RegionSchema> get copyWith =>
      _RegionSchemaCopyWithImpl<RegionSchema, RegionSchema>(
        this as RegionSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RegionSchemaMapper.ensureInitialized().stringifyValue(
      this as RegionSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return RegionSchemaMapper.ensureInitialized().equalsValue(
      this as RegionSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return RegionSchemaMapper.ensureInitialized().hashValue(
      this as RegionSchema,
    );
  }
}

extension RegionSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegionSchema, $Out> {
  RegionSchemaCopyWith<$R, RegionSchema, $Out> get $asRegionSchema =>
      $base.as((v, t, t2) => _RegionSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RegionSchemaCopyWith<$R, $In extends RegionSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? uniqueName,
    String? name,
    int? systemIndex,
    String? systemName,
    int? nodeType,
    int? masterReq,
    int? missionIndex,
    int? factionIndex,
    int? minEnemyLevel,
    int? maxEnemyLevel,
  });
  RegionSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RegionSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegionSchema, $Out>
    implements RegionSchemaCopyWith<$R, RegionSchema, $Out> {
  _RegionSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegionSchema> $mapper =
      RegionSchemaMapper.ensureInitialized();
  @override
  $R call({
    String? uniqueName,
    String? name,
    int? systemIndex,
    String? systemName,
    int? nodeType,
    int? masterReq,
    int? missionIndex,
    int? factionIndex,
    int? minEnemyLevel,
    int? maxEnemyLevel,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (systemIndex != null) #systemIndex: systemIndex,
      if (systemName != null) #systemName: systemName,
      if (nodeType != null) #nodeType: nodeType,
      if (masterReq != null) #masterReq: masterReq,
      if (missionIndex != null) #missionIndex: missionIndex,
      if (factionIndex != null) #factionIndex: factionIndex,
      if (minEnemyLevel != null) #minEnemyLevel: minEnemyLevel,
      if (maxEnemyLevel != null) #maxEnemyLevel: maxEnemyLevel,
    }),
  );
  @override
  RegionSchema $make(CopyWithData data) => RegionSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    systemIndex: data.get(#systemIndex, or: $value.systemIndex),
    systemName: data.get(#systemName, or: $value.systemName),
    nodeType: data.get(#nodeType, or: $value.nodeType),
    masterReq: data.get(#masterReq, or: $value.masterReq),
    missionIndex: data.get(#missionIndex, or: $value.missionIndex),
    factionIndex: data.get(#factionIndex, or: $value.factionIndex),
    minEnemyLevel: data.get(#minEnemyLevel, or: $value.minEnemyLevel),
    maxEnemyLevel: data.get(#maxEnemyLevel, or: $value.maxEnemyLevel),
  );

  @override
  RegionSchemaCopyWith<$R2, RegionSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RegionSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

