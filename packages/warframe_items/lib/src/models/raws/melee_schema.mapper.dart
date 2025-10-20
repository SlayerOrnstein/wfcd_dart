// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'melee_schema.dart';

class MeleeSchemaMapper extends ClassMapperBase<MeleeSchema> {
  MeleeSchemaMapper._();

  static MeleeSchemaMapper? _instance;
  static MeleeSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MeleeSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MeleeSchema';

  static String _$uniqueName(MeleeSchema v) => v.uniqueName;
  static const Field<MeleeSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(MeleeSchema v) => v.name;
  static const Field<MeleeSchema, String> _f$name = Field('name', _$name);
  static String? _$description(MeleeSchema v) => v.description;
  static const Field<MeleeSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(MeleeSchema v) => v.codexSecret;
  static const Field<MeleeSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static String? _$productCategory(MeleeSchema v) => v.productCategory;
  static const Field<MeleeSchema, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
  );
  static bool? _$excludeFromCodex(MeleeSchema v) => v.excludeFromCodex;
  static const Field<MeleeSchema, bool> _f$excludeFromCodex = Field(
    'excludeFromCodex',
    _$excludeFromCodex,
  );
  static List<double> _$damagePerShot(MeleeSchema v) => v.damagePerShot;
  static const Field<MeleeSchema, List<double>> _f$damagePerShot = Field(
    'damagePerShot',
    _$damagePerShot,
  );
  static double _$totalDamage(MeleeSchema v) => v.totalDamage;
  static const Field<MeleeSchema, double> _f$totalDamage = Field(
    'totalDamage',
    _$totalDamage,
  );
  static double _$criticalChance(MeleeSchema v) => v.criticalChance;
  static const Field<MeleeSchema, double> _f$criticalChance = Field(
    'criticalChance',
    _$criticalChance,
  );
  static double _$criticalMultiplier(MeleeSchema v) => v.criticalMultiplier;
  static const Field<MeleeSchema, double> _f$criticalMultiplier = Field(
    'criticalMultiplier',
    _$criticalMultiplier,
  );
  static double _$procChance(MeleeSchema v) => v.procChance;
  static const Field<MeleeSchema, double> _f$procChance = Field(
    'procChance',
    _$procChance,
  );
  static int _$masteryReq(MeleeSchema v) => v.masteryReq;
  static const Field<MeleeSchema, int> _f$masteryReq = Field(
    'masteryReq',
    _$masteryReq,
  );
  static int _$slot(MeleeSchema v) => v.slot;
  static const Field<MeleeSchema, int> _f$slot = Field('slot', _$slot);
  static double _$omegaAttenuation(MeleeSchema v) => v.omegaAttenuation;
  static const Field<MeleeSchema, double> _f$omegaAttenuation = Field(
    'omegaAttenuation',
    _$omegaAttenuation,
  );
  static int _$maxLevelCap(MeleeSchema v) => v.maxLevelCap;
  static const Field<MeleeSchema, int> _f$maxLevelCap = Field(
    'maxLevelCap',
    _$maxLevelCap,
  );
  static double _$fireRate(MeleeSchema v) => v.fireRate;
  static const Field<MeleeSchema, double> _f$fireRate = Field(
    'fireRate',
    _$fireRate,
  );
  static int _$blockingAngle(MeleeSchema v) => v.blockingAngle;
  static const Field<MeleeSchema, int> _f$blockingAngle = Field(
    'blockingAngle',
    _$blockingAngle,
  );
  static int _$comboDuration(MeleeSchema v) => v.comboDuration;
  static const Field<MeleeSchema, int> _f$comboDuration = Field(
    'comboDuration',
    _$comboDuration,
  );
  static double _$followThrough(MeleeSchema v) => v.followThrough;
  static const Field<MeleeSchema, double> _f$followThrough = Field(
    'followThrough',
    _$followThrough,
  );
  static double _$range(MeleeSchema v) => v.range;
  static const Field<MeleeSchema, double> _f$range = Field('range', _$range);
  static double _$slamAttack(MeleeSchema v) => v.slamAttack;
  static const Field<MeleeSchema, double> _f$slamAttack = Field(
    'slamAttack',
    _$slamAttack,
  );
  static double _$slamRadialDamage(MeleeSchema v) => v.slamRadialDamage;
  static const Field<MeleeSchema, double> _f$slamRadialDamage = Field(
    'slamRadialDamage',
    _$slamRadialDamage,
  );
  static double _$slamRadius(MeleeSchema v) => v.slamRadius;
  static const Field<MeleeSchema, double> _f$slamRadius = Field(
    'slamRadius',
    _$slamRadius,
  );
  static double _$slideAttack(MeleeSchema v) => v.slideAttack;
  static const Field<MeleeSchema, double> _f$slideAttack = Field(
    'slideAttack',
    _$slideAttack,
  );
  static double _$heavyAttackDamage(MeleeSchema v) => v.heavyAttackDamage;
  static const Field<MeleeSchema, double> _f$heavyAttackDamage = Field(
    'heavyAttackDamage',
    _$heavyAttackDamage,
  );
  static double _$heavyAttackSlam(MeleeSchema v) => v.heavyAttackSlam;
  static const Field<MeleeSchema, double> _f$heavyAttackSlam = Field(
    'heavyAttackSlam',
    _$heavyAttackSlam,
  );
  static double _$heavySlamRadialDamage(MeleeSchema v) =>
      v.heavySlamRadialDamage;
  static const Field<MeleeSchema, double> _f$heavySlamRadialDamage = Field(
    'heavySlamRadialDamage',
    _$heavySlamRadialDamage,
  );
  static double _$heavySlamRadius(MeleeSchema v) => v.heavySlamRadius;
  static const Field<MeleeSchema, double> _f$heavySlamRadius = Field(
    'heavySlamRadius',
    _$heavySlamRadius,
  );
  static double _$windUp(MeleeSchema v) => v.windUp;
  static const Field<MeleeSchema, double> _f$windUp = Field('windUp', _$windUp);

  @override
  final MappableFields<MeleeSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #productCategory: _f$productCategory,
    #excludeFromCodex: _f$excludeFromCodex,
    #damagePerShot: _f$damagePerShot,
    #totalDamage: _f$totalDamage,
    #criticalChance: _f$criticalChance,
    #criticalMultiplier: _f$criticalMultiplier,
    #procChance: _f$procChance,
    #masteryReq: _f$masteryReq,
    #slot: _f$slot,
    #omegaAttenuation: _f$omegaAttenuation,
    #maxLevelCap: _f$maxLevelCap,
    #fireRate: _f$fireRate,
    #blockingAngle: _f$blockingAngle,
    #comboDuration: _f$comboDuration,
    #followThrough: _f$followThrough,
    #range: _f$range,
    #slamAttack: _f$slamAttack,
    #slamRadialDamage: _f$slamRadialDamage,
    #slamRadius: _f$slamRadius,
    #slideAttack: _f$slideAttack,
    #heavyAttackDamage: _f$heavyAttackDamage,
    #heavyAttackSlam: _f$heavyAttackSlam,
    #heavySlamRadialDamage: _f$heavySlamRadialDamage,
    #heavySlamRadius: _f$heavySlamRadius,
    #windUp: _f$windUp,
  };

  static MeleeSchema _instantiate(DecodingData data) {
    return MeleeSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      productCategory: data.dec(_f$productCategory),
      excludeFromCodex: data.dec(_f$excludeFromCodex),
      damagePerShot: data.dec(_f$damagePerShot),
      totalDamage: data.dec(_f$totalDamage),
      criticalChance: data.dec(_f$criticalChance),
      criticalMultiplier: data.dec(_f$criticalMultiplier),
      procChance: data.dec(_f$procChance),
      masteryReq: data.dec(_f$masteryReq),
      slot: data.dec(_f$slot),
      omegaAttenuation: data.dec(_f$omegaAttenuation),
      maxLevelCap: data.dec(_f$maxLevelCap),
      fireRate: data.dec(_f$fireRate),
      blockingAngle: data.dec(_f$blockingAngle),
      comboDuration: data.dec(_f$comboDuration),
      followThrough: data.dec(_f$followThrough),
      range: data.dec(_f$range),
      slamAttack: data.dec(_f$slamAttack),
      slamRadialDamage: data.dec(_f$slamRadialDamage),
      slamRadius: data.dec(_f$slamRadius),
      slideAttack: data.dec(_f$slideAttack),
      heavyAttackDamage: data.dec(_f$heavyAttackDamage),
      heavyAttackSlam: data.dec(_f$heavyAttackSlam),
      heavySlamRadialDamage: data.dec(_f$heavySlamRadialDamage),
      heavySlamRadius: data.dec(_f$heavySlamRadius),
      windUp: data.dec(_f$windUp),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MeleeSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MeleeSchema>(map);
  }

  static MeleeSchema fromJson(String json) {
    return ensureInitialized().decodeJson<MeleeSchema>(json);
  }
}

mixin MeleeSchemaMappable {
  String toJson() {
    return MeleeSchemaMapper.ensureInitialized().encodeJson<MeleeSchema>(
      this as MeleeSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return MeleeSchemaMapper.ensureInitialized().encodeMap<MeleeSchema>(
      this as MeleeSchema,
    );
  }

  MeleeSchemaCopyWith<MeleeSchema, MeleeSchema, MeleeSchema> get copyWith =>
      _MeleeSchemaCopyWithImpl<MeleeSchema, MeleeSchema>(
        this as MeleeSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MeleeSchemaMapper.ensureInitialized().stringifyValue(
      this as MeleeSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return MeleeSchemaMapper.ensureInitialized().equalsValue(
      this as MeleeSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return MeleeSchemaMapper.ensureInitialized().hashValue(this as MeleeSchema);
  }
}

extension MeleeSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MeleeSchema, $Out> {
  MeleeSchemaCopyWith<$R, MeleeSchema, $Out> get $asMeleeSchema =>
      $base.as((v, t, t2) => _MeleeSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MeleeSchemaCopyWith<$R, $In extends MeleeSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, double, ObjectCopyWith<$R, double, double>>
  get damagePerShot;
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    String? productCategory,
    bool? excludeFromCodex,
    List<double>? damagePerShot,
    double? totalDamage,
    double? criticalChance,
    double? criticalMultiplier,
    double? procChance,
    int? masteryReq,
    int? slot,
    double? omegaAttenuation,
    int? maxLevelCap,
    double? fireRate,
    int? blockingAngle,
    int? comboDuration,
    double? followThrough,
    double? range,
    double? slamAttack,
    double? slamRadialDamage,
    double? slamRadius,
    double? slideAttack,
    double? heavyAttackDamage,
    double? heavyAttackSlam,
    double? heavySlamRadialDamage,
    double? heavySlamRadius,
    double? windUp,
  });
  MeleeSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MeleeSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MeleeSchema, $Out>
    implements MeleeSchemaCopyWith<$R, MeleeSchema, $Out> {
  _MeleeSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MeleeSchema> $mapper =
      MeleeSchemaMapper.ensureInitialized();
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
    Object? description = $none,
    bool? codexSecret,
    Object? productCategory = $none,
    Object? excludeFromCodex = $none,
    List<double>? damagePerShot,
    double? totalDamage,
    double? criticalChance,
    double? criticalMultiplier,
    double? procChance,
    int? masteryReq,
    int? slot,
    double? omegaAttenuation,
    int? maxLevelCap,
    double? fireRate,
    int? blockingAngle,
    int? comboDuration,
    double? followThrough,
    double? range,
    double? slamAttack,
    double? slamRadialDamage,
    double? slamRadius,
    double? slideAttack,
    double? heavyAttackDamage,
    double? heavyAttackSlam,
    double? heavySlamRadialDamage,
    double? heavySlamRadius,
    double? windUp,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (productCategory != $none) #productCategory: productCategory,
      if (excludeFromCodex != $none) #excludeFromCodex: excludeFromCodex,
      if (damagePerShot != null) #damagePerShot: damagePerShot,
      if (totalDamage != null) #totalDamage: totalDamage,
      if (criticalChance != null) #criticalChance: criticalChance,
      if (criticalMultiplier != null) #criticalMultiplier: criticalMultiplier,
      if (procChance != null) #procChance: procChance,
      if (masteryReq != null) #masteryReq: masteryReq,
      if (slot != null) #slot: slot,
      if (omegaAttenuation != null) #omegaAttenuation: omegaAttenuation,
      if (maxLevelCap != null) #maxLevelCap: maxLevelCap,
      if (fireRate != null) #fireRate: fireRate,
      if (blockingAngle != null) #blockingAngle: blockingAngle,
      if (comboDuration != null) #comboDuration: comboDuration,
      if (followThrough != null) #followThrough: followThrough,
      if (range != null) #range: range,
      if (slamAttack != null) #slamAttack: slamAttack,
      if (slamRadialDamage != null) #slamRadialDamage: slamRadialDamage,
      if (slamRadius != null) #slamRadius: slamRadius,
      if (slideAttack != null) #slideAttack: slideAttack,
      if (heavyAttackDamage != null) #heavyAttackDamage: heavyAttackDamage,
      if (heavyAttackSlam != null) #heavyAttackSlam: heavyAttackSlam,
      if (heavySlamRadialDamage != null)
        #heavySlamRadialDamage: heavySlamRadialDamage,
      if (heavySlamRadius != null) #heavySlamRadius: heavySlamRadius,
      if (windUp != null) #windUp: windUp,
    }),
  );
  @override
  MeleeSchema $make(CopyWithData data) => MeleeSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    productCategory: data.get(#productCategory, or: $value.productCategory),
    excludeFromCodex: data.get(#excludeFromCodex, or: $value.excludeFromCodex),
    damagePerShot: data.get(#damagePerShot, or: $value.damagePerShot),
    totalDamage: data.get(#totalDamage, or: $value.totalDamage),
    criticalChance: data.get(#criticalChance, or: $value.criticalChance),
    criticalMultiplier: data.get(
      #criticalMultiplier,
      or: $value.criticalMultiplier,
    ),
    procChance: data.get(#procChance, or: $value.procChance),
    masteryReq: data.get(#masteryReq, or: $value.masteryReq),
    slot: data.get(#slot, or: $value.slot),
    omegaAttenuation: data.get(#omegaAttenuation, or: $value.omegaAttenuation),
    maxLevelCap: data.get(#maxLevelCap, or: $value.maxLevelCap),
    fireRate: data.get(#fireRate, or: $value.fireRate),
    blockingAngle: data.get(#blockingAngle, or: $value.blockingAngle),
    comboDuration: data.get(#comboDuration, or: $value.comboDuration),
    followThrough: data.get(#followThrough, or: $value.followThrough),
    range: data.get(#range, or: $value.range),
    slamAttack: data.get(#slamAttack, or: $value.slamAttack),
    slamRadialDamage: data.get(#slamRadialDamage, or: $value.slamRadialDamage),
    slamRadius: data.get(#slamRadius, or: $value.slamRadius),
    slideAttack: data.get(#slideAttack, or: $value.slideAttack),
    heavyAttackDamage: data.get(
      #heavyAttackDamage,
      or: $value.heavyAttackDamage,
    ),
    heavyAttackSlam: data.get(#heavyAttackSlam, or: $value.heavyAttackSlam),
    heavySlamRadialDamage: data.get(
      #heavySlamRadialDamage,
      or: $value.heavySlamRadialDamage,
    ),
    heavySlamRadius: data.get(#heavySlamRadius, or: $value.heavySlamRadius),
    windUp: data.get(#windUp, or: $value.windUp),
  );

  @override
  MeleeSchemaCopyWith<$R2, MeleeSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MeleeSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

