// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'arcane_schema.dart';

class ArcaneSchemaMapper extends ClassMapperBase<ArcaneSchema> {
  ArcaneSchemaMapper._();

  static ArcaneSchemaMapper? _instance;
  static ArcaneSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArcaneSchemaMapper._());
      LevelStatMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ArcaneSchema';

  static String _$uniqueName(ArcaneSchema v) => v.uniqueName;
  static const Field<ArcaneSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(ArcaneSchema v) => v.name;
  static const Field<ArcaneSchema, String> _f$name = Field('name', _$name);
  static String? _$description(ArcaneSchema v) => v.description;
  static const Field<ArcaneSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(ArcaneSchema v) => v.codexSecret;
  static const Field<ArcaneSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static String _$rarity(ArcaneSchema v) => v.rarity;
  static const Field<ArcaneSchema, String> _f$rarity = Field(
    'rarity',
    _$rarity,
  );
  static List<LevelStat> _$levelStats(ArcaneSchema v) => v.levelStats;
  static const Field<ArcaneSchema, List<LevelStat>> _f$levelStats = Field(
    'levelStats',
    _$levelStats,
  );
  static bool? _$excludeFromCodex(ArcaneSchema v) => v.excludeFromCodex;
  static const Field<ArcaneSchema, bool> _f$excludeFromCodex = Field(
    'excludeFromCodex',
    _$excludeFromCodex,
    opt: true,
  );

  @override
  final MappableFields<ArcaneSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #rarity: _f$rarity,
    #levelStats: _f$levelStats,
    #excludeFromCodex: _f$excludeFromCodex,
  };

  static ArcaneSchema _instantiate(DecodingData data) {
    return ArcaneSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      rarity: data.dec(_f$rarity),
      levelStats: data.dec(_f$levelStats),
      excludeFromCodex: data.dec(_f$excludeFromCodex),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ArcaneSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ArcaneSchema>(map);
  }

  static ArcaneSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ArcaneSchema>(json);
  }
}

mixin ArcaneSchemaMappable {
  String toJson() {
    return ArcaneSchemaMapper.ensureInitialized().encodeJson<ArcaneSchema>(
      this as ArcaneSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return ArcaneSchemaMapper.ensureInitialized().encodeMap<ArcaneSchema>(
      this as ArcaneSchema,
    );
  }

  ArcaneSchemaCopyWith<ArcaneSchema, ArcaneSchema, ArcaneSchema> get copyWith =>
      _ArcaneSchemaCopyWithImpl<ArcaneSchema, ArcaneSchema>(
        this as ArcaneSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ArcaneSchemaMapper.ensureInitialized().stringifyValue(
      this as ArcaneSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return ArcaneSchemaMapper.ensureInitialized().equalsValue(
      this as ArcaneSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return ArcaneSchemaMapper.ensureInitialized().hashValue(
      this as ArcaneSchema,
    );
  }
}

extension ArcaneSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ArcaneSchema, $Out> {
  ArcaneSchemaCopyWith<$R, ArcaneSchema, $Out> get $asArcaneSchema =>
      $base.as((v, t, t2) => _ArcaneSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ArcaneSchemaCopyWith<$R, $In extends ArcaneSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, LevelStat, LevelStatCopyWith<$R, LevelStat, LevelStat>>
  get levelStats;
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    String? rarity,
    List<LevelStat>? levelStats,
    bool? excludeFromCodex,
  });
  ArcaneSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ArcaneSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ArcaneSchema, $Out>
    implements ArcaneSchemaCopyWith<$R, ArcaneSchema, $Out> {
  _ArcaneSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ArcaneSchema> $mapper =
      ArcaneSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, LevelStat, LevelStatCopyWith<$R, LevelStat, LevelStat>>
  get levelStats => ListCopyWith(
    $value.levelStats,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(levelStats: v),
  );
  @override
  $R call({
    String? uniqueName,
    String? name,
    Object? description = $none,
    bool? codexSecret,
    String? rarity,
    List<LevelStat>? levelStats,
    Object? excludeFromCodex = $none,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (rarity != null) #rarity: rarity,
      if (levelStats != null) #levelStats: levelStats,
      if (excludeFromCodex != $none) #excludeFromCodex: excludeFromCodex,
    }),
  );
  @override
  ArcaneSchema $make(CopyWithData data) => ArcaneSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    rarity: data.get(#rarity, or: $value.rarity),
    levelStats: data.get(#levelStats, or: $value.levelStats),
    excludeFromCodex: data.get(#excludeFromCodex, or: $value.excludeFromCodex),
  );

  @override
  ArcaneSchemaCopyWith<$R2, ArcaneSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ArcaneSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

