// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'upgrade_schema.dart';

class UpgradeSchemaMapper extends ClassMapperBase<UpgradeSchema> {
  UpgradeSchemaMapper._();

  static UpgradeSchemaMapper? _instance;
  static UpgradeSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpgradeSchemaMapper._());
      LevelStatMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UpgradeSchema';

  static String _$uniqueName(UpgradeSchema v) => v.uniqueName;
  static const Field<UpgradeSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(UpgradeSchema v) => v.name;
  static const Field<UpgradeSchema, String> _f$name = Field('name', _$name);
  static String? _$description(UpgradeSchema v) => v.description;
  static const Field<UpgradeSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(UpgradeSchema v) => v.codexSecret;
  static const Field<UpgradeSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static String _$polarity(UpgradeSchema v) => v.polarity;
  static const Field<UpgradeSchema, String> _f$polarity = Field(
    'polarity',
    _$polarity,
  );
  static String _$rarity(UpgradeSchema v) => v.rarity;
  static const Field<UpgradeSchema, String> _f$rarity = Field(
    'rarity',
    _$rarity,
  );
  static int _$baseDrain(UpgradeSchema v) => v.baseDrain;
  static const Field<UpgradeSchema, int> _f$baseDrain = Field(
    'baseDrain',
    _$baseDrain,
  );
  static int _$fusionLimit(UpgradeSchema v) => v.fusionLimit;
  static const Field<UpgradeSchema, int> _f$fusionLimit = Field(
    'fusionLimit',
    _$fusionLimit,
  );
  static bool _$isUtility(UpgradeSchema v) => v.isUtility;
  static const Field<UpgradeSchema, bool> _f$isUtility = Field(
    'isUtility',
    _$isUtility,
  );
  static String _$compatName(UpgradeSchema v) => v.compatName;
  static const Field<UpgradeSchema, String> _f$compatName = Field(
    'compatName',
    _$compatName,
  );
  static String _$type(UpgradeSchema v) => v.type;
  static const Field<UpgradeSchema, String> _f$type = Field('type', _$type);
  static String _$subtype(UpgradeSchema v) => v.subtype;
  static const Field<UpgradeSchema, String> _f$subtype = Field(
    'subtype',
    _$subtype,
  );
  static List<LevelStat> _$levelStats(UpgradeSchema v) => v.levelStats;
  static const Field<UpgradeSchema, List<LevelStat>> _f$levelStats = Field(
    'levelStats',
    _$levelStats,
  );
  static bool? _$excludeFromCodex(UpgradeSchema v) => v.excludeFromCodex;
  static const Field<UpgradeSchema, bool> _f$excludeFromCodex = Field(
    'excludeFromCodex',
    _$excludeFromCodex,
    opt: true,
  );
  static String? _$parentName(UpgradeSchema v) => v.parentName;
  static const Field<UpgradeSchema, String> _f$parentName = Field(
    'parentName',
    _$parentName,
    opt: true,
  );
  static String? _$productCategory(UpgradeSchema v) => v.productCategory;
  static const Field<UpgradeSchema, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
    opt: true,
  );

  @override
  final MappableFields<UpgradeSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #polarity: _f$polarity,
    #rarity: _f$rarity,
    #baseDrain: _f$baseDrain,
    #fusionLimit: _f$fusionLimit,
    #isUtility: _f$isUtility,
    #compatName: _f$compatName,
    #type: _f$type,
    #subtype: _f$subtype,
    #levelStats: _f$levelStats,
    #excludeFromCodex: _f$excludeFromCodex,
    #parentName: _f$parentName,
    #productCategory: _f$productCategory,
  };

  static UpgradeSchema _instantiate(DecodingData data) {
    return UpgradeSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      polarity: data.dec(_f$polarity),
      rarity: data.dec(_f$rarity),
      baseDrain: data.dec(_f$baseDrain),
      fusionLimit: data.dec(_f$fusionLimit),
      isUtility: data.dec(_f$isUtility),
      compatName: data.dec(_f$compatName),
      type: data.dec(_f$type),
      subtype: data.dec(_f$subtype),
      levelStats: data.dec(_f$levelStats),
      excludeFromCodex: data.dec(_f$excludeFromCodex),
      parentName: data.dec(_f$parentName),
      productCategory: data.dec(_f$productCategory),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UpgradeSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpgradeSchema>(map);
  }

  static UpgradeSchema fromJson(String json) {
    return ensureInitialized().decodeJson<UpgradeSchema>(json);
  }
}

mixin UpgradeSchemaMappable {
  String toJson() {
    return UpgradeSchemaMapper.ensureInitialized().encodeJson<UpgradeSchema>(
      this as UpgradeSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return UpgradeSchemaMapper.ensureInitialized().encodeMap<UpgradeSchema>(
      this as UpgradeSchema,
    );
  }

  UpgradeSchemaCopyWith<UpgradeSchema, UpgradeSchema, UpgradeSchema>
  get copyWith => _UpgradeSchemaCopyWithImpl<UpgradeSchema, UpgradeSchema>(
    this as UpgradeSchema,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return UpgradeSchemaMapper.ensureInitialized().stringifyValue(
      this as UpgradeSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return UpgradeSchemaMapper.ensureInitialized().equalsValue(
      this as UpgradeSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return UpgradeSchemaMapper.ensureInitialized().hashValue(
      this as UpgradeSchema,
    );
  }
}

extension UpgradeSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpgradeSchema, $Out> {
  UpgradeSchemaCopyWith<$R, UpgradeSchema, $Out> get $asUpgradeSchema =>
      $base.as((v, t, t2) => _UpgradeSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UpgradeSchemaCopyWith<$R, $In extends UpgradeSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, LevelStat, LevelStatCopyWith<$R, LevelStat, LevelStat>>
  get levelStats;
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    String? polarity,
    String? rarity,
    int? baseDrain,
    int? fusionLimit,
    bool? isUtility,
    String? compatName,
    String? type,
    String? subtype,
    List<LevelStat>? levelStats,
    bool? excludeFromCodex,
    String? parentName,
    String? productCategory,
  });
  UpgradeSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UpgradeSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpgradeSchema, $Out>
    implements UpgradeSchemaCopyWith<$R, UpgradeSchema, $Out> {
  _UpgradeSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpgradeSchema> $mapper =
      UpgradeSchemaMapper.ensureInitialized();
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
    String? polarity,
    String? rarity,
    int? baseDrain,
    int? fusionLimit,
    bool? isUtility,
    String? compatName,
    String? type,
    String? subtype,
    List<LevelStat>? levelStats,
    Object? excludeFromCodex = $none,
    Object? parentName = $none,
    Object? productCategory = $none,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (polarity != null) #polarity: polarity,
      if (rarity != null) #rarity: rarity,
      if (baseDrain != null) #baseDrain: baseDrain,
      if (fusionLimit != null) #fusionLimit: fusionLimit,
      if (isUtility != null) #isUtility: isUtility,
      if (compatName != null) #compatName: compatName,
      if (type != null) #type: type,
      if (subtype != null) #subtype: subtype,
      if (levelStats != null) #levelStats: levelStats,
      if (excludeFromCodex != $none) #excludeFromCodex: excludeFromCodex,
      if (parentName != $none) #parentName: parentName,
      if (productCategory != $none) #productCategory: productCategory,
    }),
  );
  @override
  UpgradeSchema $make(CopyWithData data) => UpgradeSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    polarity: data.get(#polarity, or: $value.polarity),
    rarity: data.get(#rarity, or: $value.rarity),
    baseDrain: data.get(#baseDrain, or: $value.baseDrain),
    fusionLimit: data.get(#fusionLimit, or: $value.fusionLimit),
    isUtility: data.get(#isUtility, or: $value.isUtility),
    compatName: data.get(#compatName, or: $value.compatName),
    type: data.get(#type, or: $value.type),
    subtype: data.get(#subtype, or: $value.subtype),
    levelStats: data.get(#levelStats, or: $value.levelStats),
    excludeFromCodex: data.get(#excludeFromCodex, or: $value.excludeFromCodex),
    parentName: data.get(#parentName, or: $value.parentName),
    productCategory: data.get(#productCategory, or: $value.productCategory),
  );

  @override
  UpgradeSchemaCopyWith<$R2, UpgradeSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UpgradeSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LevelStatMapper extends ClassMapperBase<LevelStat> {
  LevelStatMapper._();

  static LevelStatMapper? _instance;
  static LevelStatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LevelStatMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LevelStat';

  static List<String> _$stats(LevelStat v) => v.stats;
  static const Field<LevelStat, List<String>> _f$stats = Field(
    'stats',
    _$stats,
  );

  @override
  final MappableFields<LevelStat> fields = const {#stats: _f$stats};

  static LevelStat _instantiate(DecodingData data) {
    return LevelStat(stats: data.dec(_f$stats));
  }

  @override
  final Function instantiate = _instantiate;

  static LevelStat fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LevelStat>(map);
  }

  static LevelStat fromJson(String json) {
    return ensureInitialized().decodeJson<LevelStat>(json);
  }
}

mixin LevelStatMappable {
  String toJson() {
    return LevelStatMapper.ensureInitialized().encodeJson<LevelStat>(
      this as LevelStat,
    );
  }

  Map<String, dynamic> toMap() {
    return LevelStatMapper.ensureInitialized().encodeMap<LevelStat>(
      this as LevelStat,
    );
  }

  LevelStatCopyWith<LevelStat, LevelStat, LevelStat> get copyWith =>
      _LevelStatCopyWithImpl<LevelStat, LevelStat>(
        this as LevelStat,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LevelStatMapper.ensureInitialized().stringifyValue(
      this as LevelStat,
    );
  }

  @override
  bool operator ==(Object other) {
    return LevelStatMapper.ensureInitialized().equalsValue(
      this as LevelStat,
      other,
    );
  }

  @override
  int get hashCode {
    return LevelStatMapper.ensureInitialized().hashValue(this as LevelStat);
  }
}

extension LevelStatValueCopy<$R, $Out> on ObjectCopyWith<$R, LevelStat, $Out> {
  LevelStatCopyWith<$R, LevelStat, $Out> get $asLevelStat =>
      $base.as((v, t, t2) => _LevelStatCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LevelStatCopyWith<$R, $In extends LevelStat, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get stats;
  $R call({List<String>? stats});
  LevelStatCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LevelStatCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LevelStat, $Out>
    implements LevelStatCopyWith<$R, LevelStat, $Out> {
  _LevelStatCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LevelStat> $mapper =
      LevelStatMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get stats =>
      ListCopyWith(
        $value.stats,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(stats: v),
      );
  @override
  $R call({List<String>? stats}) =>
      $apply(FieldCopyWithData({if (stats != null) #stats: stats}));
  @override
  LevelStat $make(CopyWithData data) =>
      LevelStat(stats: data.get(#stats, or: $value.stats));

  @override
  LevelStatCopyWith<$R2, LevelStat, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LevelStatCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

