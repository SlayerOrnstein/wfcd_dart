// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'weapon_schema.dart';

class WeaponSchemaMapper extends ClassMapperBase<WeaponSchema> {
  WeaponSchemaMapper._();

  static WeaponSchemaMapper? _instance;
  static WeaponSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WeaponSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'WeaponSchema';

  static String _$uniqueName(WeaponSchema v) => v.uniqueName;
  static const Field<WeaponSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(WeaponSchema v) => v.name;
  static const Field<WeaponSchema, String> _f$name = Field('name', _$name);
  static String _$description(WeaponSchema v) => v.description;
  static const Field<WeaponSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(WeaponSchema v) => v.codexSecret;
  static const Field<WeaponSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static List<double> _$damagePerShot(WeaponSchema v) => v.damagePerShot;
  static const Field<WeaponSchema, List<double>> _f$damagePerShot = Field(
    'damagePerShot',
    _$damagePerShot,
  );
  static double _$totalDamage(WeaponSchema v) => v.totalDamage;
  static const Field<WeaponSchema, double> _f$totalDamage = Field(
    'totalDamage',
    _$totalDamage,
  );
  static double _$criticalChance(WeaponSchema v) => v.criticalChance;
  static const Field<WeaponSchema, double> _f$criticalChance = Field(
    'criticalChance',
    _$criticalChance,
  );
  static double _$criticalMultiplier(WeaponSchema v) => v.criticalMultiplier;
  static const Field<WeaponSchema, double> _f$criticalMultiplier = Field(
    'criticalMultiplier',
    _$criticalMultiplier,
  );
  static double _$procChance(WeaponSchema v) => v.procChance;
  static const Field<WeaponSchema, double> _f$procChance = Field(
    'procChance',
    _$procChance,
  );
  static double _$fireRate(WeaponSchema v) => v.fireRate;
  static const Field<WeaponSchema, double> _f$fireRate = Field(
    'fireRate',
    _$fireRate,
  );
  static int _$masteryReq(WeaponSchema v) => v.masteryReq;
  static const Field<WeaponSchema, int> _f$masteryReq = Field(
    'masteryReq',
    _$masteryReq,
  );
  static String _$productCategory(WeaponSchema v) => v.productCategory;
  static const Field<WeaponSchema, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
  );
  static bool _$excludeFromCodex(WeaponSchema v) => v.excludeFromCodex;
  static const Field<WeaponSchema, bool> _f$excludeFromCodex = Field(
    'excludeFromCodex',
    _$excludeFromCodex,
  );
  static int _$slot(WeaponSchema v) => v.slot;
  static const Field<WeaponSchema, int> _f$slot = Field('slot', _$slot);
  static double _$accuracy(WeaponSchema v) => v.accuracy;
  static const Field<WeaponSchema, double> _f$accuracy = Field(
    'accuracy',
    _$accuracy,
  );
  static double _$omegaAttenuation(WeaponSchema v) => v.omegaAttenuation;
  static const Field<WeaponSchema, double> _f$omegaAttenuation = Field(
    'omegaAttenuation',
    _$omegaAttenuation,
  );
  static int _$maxLevelCap(WeaponSchema v) => v.maxLevelCap;
  static const Field<WeaponSchema, int> _f$maxLevelCap = Field(
    'maxLevelCap',
    _$maxLevelCap,
  );
  static String _$noise(WeaponSchema v) => v.noise;
  static const Field<WeaponSchema, String> _f$noise = Field('noise', _$noise);
  static String _$trigger(WeaponSchema v) => v.trigger;
  static const Field<WeaponSchema, String> _f$trigger = Field(
    'trigger',
    _$trigger,
  );
  static int _$magazineSize(WeaponSchema v) => v.magazineSize;
  static const Field<WeaponSchema, int> _f$magazineSize = Field(
    'magazineSize',
    _$magazineSize,
  );
  static double _$reloadTime(WeaponSchema v) => v.reloadTime;
  static const Field<WeaponSchema, double> _f$reloadTime = Field(
    'reloadTime',
    _$reloadTime,
  );
  static bool _$sentinel(WeaponSchema v) => v.sentinel;
  static const Field<WeaponSchema, bool> _f$sentinel = Field(
    'sentinel',
    _$sentinel,
  );
  static int _$multishot(WeaponSchema v) => v.multishot;
  static const Field<WeaponSchema, int> _f$multishot = Field(
    'multishot',
    _$multishot,
  );

  @override
  final MappableFields<WeaponSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #damagePerShot: _f$damagePerShot,
    #totalDamage: _f$totalDamage,
    #criticalChance: _f$criticalChance,
    #criticalMultiplier: _f$criticalMultiplier,
    #procChance: _f$procChance,
    #fireRate: _f$fireRate,
    #masteryReq: _f$masteryReq,
    #productCategory: _f$productCategory,
    #excludeFromCodex: _f$excludeFromCodex,
    #slot: _f$slot,
    #accuracy: _f$accuracy,
    #omegaAttenuation: _f$omegaAttenuation,
    #maxLevelCap: _f$maxLevelCap,
    #noise: _f$noise,
    #trigger: _f$trigger,
    #magazineSize: _f$magazineSize,
    #reloadTime: _f$reloadTime,
    #sentinel: _f$sentinel,
    #multishot: _f$multishot,
  };

  static WeaponSchema _instantiate(DecodingData data) {
    return WeaponSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      damagePerShot: data.dec(_f$damagePerShot),
      totalDamage: data.dec(_f$totalDamage),
      criticalChance: data.dec(_f$criticalChance),
      criticalMultiplier: data.dec(_f$criticalMultiplier),
      procChance: data.dec(_f$procChance),
      fireRate: data.dec(_f$fireRate),
      masteryReq: data.dec(_f$masteryReq),
      productCategory: data.dec(_f$productCategory),
      excludeFromCodex: data.dec(_f$excludeFromCodex),
      slot: data.dec(_f$slot),
      accuracy: data.dec(_f$accuracy),
      omegaAttenuation: data.dec(_f$omegaAttenuation),
      maxLevelCap: data.dec(_f$maxLevelCap),
      noise: data.dec(_f$noise),
      trigger: data.dec(_f$trigger),
      magazineSize: data.dec(_f$magazineSize),
      reloadTime: data.dec(_f$reloadTime),
      sentinel: data.dec(_f$sentinel),
      multishot: data.dec(_f$multishot),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WeaponSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WeaponSchema>(map);
  }

  static WeaponSchema fromJson(String json) {
    return ensureInitialized().decodeJson<WeaponSchema>(json);
  }
}

mixin WeaponSchemaMappable {
  String toJson() {
    return WeaponSchemaMapper.ensureInitialized().encodeJson<WeaponSchema>(
      this as WeaponSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return WeaponSchemaMapper.ensureInitialized().encodeMap<WeaponSchema>(
      this as WeaponSchema,
    );
  }

  WeaponSchemaCopyWith<WeaponSchema, WeaponSchema, WeaponSchema> get copyWith =>
      _WeaponSchemaCopyWithImpl<WeaponSchema, WeaponSchema>(
        this as WeaponSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WeaponSchemaMapper.ensureInitialized().stringifyValue(
      this as WeaponSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return WeaponSchemaMapper.ensureInitialized().equalsValue(
      this as WeaponSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return WeaponSchemaMapper.ensureInitialized().hashValue(
      this as WeaponSchema,
    );
  }
}

extension WeaponSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WeaponSchema, $Out> {
  WeaponSchemaCopyWith<$R, WeaponSchema, $Out> get $asWeaponSchema =>
      $base.as((v, t, t2) => _WeaponSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WeaponSchemaCopyWith<$R, $In extends WeaponSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, double, ObjectCopyWith<$R, double, double>>
  get damagePerShot;
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    List<double>? damagePerShot,
    double? totalDamage,
    double? criticalChance,
    double? criticalMultiplier,
    double? procChance,
    double? fireRate,
    int? masteryReq,
    String? productCategory,
    bool? excludeFromCodex,
    int? slot,
    double? accuracy,
    double? omegaAttenuation,
    int? maxLevelCap,
    String? noise,
    String? trigger,
    int? magazineSize,
    double? reloadTime,
    bool? sentinel,
    int? multishot,
  });
  WeaponSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WeaponSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WeaponSchema, $Out>
    implements WeaponSchemaCopyWith<$R, WeaponSchema, $Out> {
  _WeaponSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WeaponSchema> $mapper =
      WeaponSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, double, ObjectCopyWith<$R, double, double>>
  get damagePerShot => ListCopyWith(
    $value.damagePerShot,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(damagePerShot: v),
  );
  @override
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    List<double>? damagePerShot,
    double? totalDamage,
    double? criticalChance,
    double? criticalMultiplier,
    double? procChance,
    double? fireRate,
    int? masteryReq,
    String? productCategory,
    bool? excludeFromCodex,
    int? slot,
    double? accuracy,
    double? omegaAttenuation,
    int? maxLevelCap,
    String? noise,
    String? trigger,
    int? magazineSize,
    double? reloadTime,
    bool? sentinel,
    int? multishot,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != null) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (damagePerShot != null) #damagePerShot: damagePerShot,
      if (totalDamage != null) #totalDamage: totalDamage,
      if (criticalChance != null) #criticalChance: criticalChance,
      if (criticalMultiplier != null) #criticalMultiplier: criticalMultiplier,
      if (procChance != null) #procChance: procChance,
      if (fireRate != null) #fireRate: fireRate,
      if (masteryReq != null) #masteryReq: masteryReq,
      if (productCategory != null) #productCategory: productCategory,
      if (excludeFromCodex != null) #excludeFromCodex: excludeFromCodex,
      if (slot != null) #slot: slot,
      if (accuracy != null) #accuracy: accuracy,
      if (omegaAttenuation != null) #omegaAttenuation: omegaAttenuation,
      if (maxLevelCap != null) #maxLevelCap: maxLevelCap,
      if (noise != null) #noise: noise,
      if (trigger != null) #trigger: trigger,
      if (magazineSize != null) #magazineSize: magazineSize,
      if (reloadTime != null) #reloadTime: reloadTime,
      if (sentinel != null) #sentinel: sentinel,
      if (multishot != null) #multishot: multishot,
    }),
  );
  @override
  WeaponSchema $make(CopyWithData data) => WeaponSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    damagePerShot: data.get(#damagePerShot, or: $value.damagePerShot),
    totalDamage: data.get(#totalDamage, or: $value.totalDamage),
    criticalChance: data.get(#criticalChance, or: $value.criticalChance),
    criticalMultiplier: data.get(
      #criticalMultiplier,
      or: $value.criticalMultiplier,
    ),
    procChance: data.get(#procChance, or: $value.procChance),
    fireRate: data.get(#fireRate, or: $value.fireRate),
    masteryReq: data.get(#masteryReq, or: $value.masteryReq),
    productCategory: data.get(#productCategory, or: $value.productCategory),
    excludeFromCodex: data.get(#excludeFromCodex, or: $value.excludeFromCodex),
    slot: data.get(#slot, or: $value.slot),
    accuracy: data.get(#accuracy, or: $value.accuracy),
    omegaAttenuation: data.get(#omegaAttenuation, or: $value.omegaAttenuation),
    maxLevelCap: data.get(#maxLevelCap, or: $value.maxLevelCap),
    noise: data.get(#noise, or: $value.noise),
    trigger: data.get(#trigger, or: $value.trigger),
    magazineSize: data.get(#magazineSize, or: $value.magazineSize),
    reloadTime: data.get(#reloadTime, or: $value.reloadTime),
    sentinel: data.get(#sentinel, or: $value.sentinel),
    multishot: data.get(#multishot, or: $value.multishot),
  );

  @override
  WeaponSchemaCopyWith<$R2, WeaponSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WeaponSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

