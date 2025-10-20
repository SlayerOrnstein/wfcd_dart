// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'warframe_schema.dart';

class WarframeSchemaMapper extends ClassMapperBase<WarframeSchema> {
  WarframeSchemaMapper._();

  static WarframeSchemaMapper? _instance;
  static WarframeSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WarframeSchemaMapper._());
      AbilitySchemaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WarframeSchema';

  static String _$uniqueName(WarframeSchema v) => v.uniqueName;
  static const Field<WarframeSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(WarframeSchema v) => v.name;
  static const Field<WarframeSchema, String> _f$name = Field('name', _$name);
  static String? _$description(WarframeSchema v) => v.description;
  static const Field<WarframeSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(WarframeSchema v) => v.codexSecret;
  static const Field<WarframeSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static String? _$parentName(WarframeSchema v) => v.parentName;
  static const Field<WarframeSchema, String> _f$parentName = Field(
    'parentName',
    _$parentName,
  );
  static String? _$productCategory(WarframeSchema v) => v.productCategory;
  static const Field<WarframeSchema, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
  );
  static int _$health(WarframeSchema v) => v.health;
  static const Field<WarframeSchema, int> _f$health = Field('health', _$health);
  static int _$shield(WarframeSchema v) => v.shield;
  static const Field<WarframeSchema, int> _f$shield = Field('shield', _$shield);
  static int _$armor(WarframeSchema v) => v.armor;
  static const Field<WarframeSchema, int> _f$armor = Field('armor', _$armor);
  static int _$stamina(WarframeSchema v) => v.stamina;
  static const Field<WarframeSchema, int> _f$stamina = Field(
    'stamina',
    _$stamina,
  );
  static int _$power(WarframeSchema v) => v.power;
  static const Field<WarframeSchema, int> _f$power = Field('power', _$power);
  static int _$masteryReq(WarframeSchema v) => v.masteryReq;
  static const Field<WarframeSchema, int> _f$masteryReq = Field(
    'masteryReq',
    _$masteryReq,
  );
  static double _$sprintSpeed(WarframeSchema v) => v.sprintSpeed;
  static const Field<WarframeSchema, double> _f$sprintSpeed = Field(
    'sprintSpeed',
    _$sprintSpeed,
  );
  static String _$passiveDescription(WarframeSchema v) => v.passiveDescription;
  static const Field<WarframeSchema, String> _f$passiveDescription = Field(
    'passiveDescription',
    _$passiveDescription,
  );
  static List<String> _$exalted(WarframeSchema v) => v.exalted;
  static const Field<WarframeSchema, List<String>> _f$exalted = Field(
    'exalted',
    _$exalted,
  );
  static List<AbilitySchema> _$abilities(WarframeSchema v) => v.abilities;
  static const Field<WarframeSchema, List<AbilitySchema>> _f$abilities = Field(
    'abilities',
    _$abilities,
  );

  @override
  final MappableFields<WarframeSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #parentName: _f$parentName,
    #productCategory: _f$productCategory,
    #health: _f$health,
    #shield: _f$shield,
    #armor: _f$armor,
    #stamina: _f$stamina,
    #power: _f$power,
    #masteryReq: _f$masteryReq,
    #sprintSpeed: _f$sprintSpeed,
    #passiveDescription: _f$passiveDescription,
    #exalted: _f$exalted,
    #abilities: _f$abilities,
  };

  static WarframeSchema _instantiate(DecodingData data) {
    return WarframeSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      parentName: data.dec(_f$parentName),
      productCategory: data.dec(_f$productCategory),
      health: data.dec(_f$health),
      shield: data.dec(_f$shield),
      armor: data.dec(_f$armor),
      stamina: data.dec(_f$stamina),
      power: data.dec(_f$power),
      masteryReq: data.dec(_f$masteryReq),
      sprintSpeed: data.dec(_f$sprintSpeed),
      passiveDescription: data.dec(_f$passiveDescription),
      exalted: data.dec(_f$exalted),
      abilities: data.dec(_f$abilities),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WarframeSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WarframeSchema>(map);
  }

  static WarframeSchema fromJson(String json) {
    return ensureInitialized().decodeJson<WarframeSchema>(json);
  }
}

mixin WarframeSchemaMappable {
  String toJson() {
    return WarframeSchemaMapper.ensureInitialized().encodeJson<WarframeSchema>(
      this as WarframeSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return WarframeSchemaMapper.ensureInitialized().encodeMap<WarframeSchema>(
      this as WarframeSchema,
    );
  }

  WarframeSchemaCopyWith<WarframeSchema, WarframeSchema, WarframeSchema>
  get copyWith => _WarframeSchemaCopyWithImpl<WarframeSchema, WarframeSchema>(
    this as WarframeSchema,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return WarframeSchemaMapper.ensureInitialized().stringifyValue(
      this as WarframeSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return WarframeSchemaMapper.ensureInitialized().equalsValue(
      this as WarframeSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return WarframeSchemaMapper.ensureInitialized().hashValue(
      this as WarframeSchema,
    );
  }
}

extension WarframeSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WarframeSchema, $Out> {
  WarframeSchemaCopyWith<$R, WarframeSchema, $Out> get $asWarframeSchema =>
      $base.as((v, t, t2) => _WarframeSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WarframeSchemaCopyWith<$R, $In extends WarframeSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get exalted;
  ListCopyWith<
    $R,
    AbilitySchema,
    AbilitySchemaCopyWith<$R, AbilitySchema, AbilitySchema>
  >
  get abilities;
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    String? parentName,
    String? productCategory,
    int? health,
    int? shield,
    int? armor,
    int? stamina,
    int? power,
    int? masteryReq,
    double? sprintSpeed,
    String? passiveDescription,
    List<String>? exalted,
    List<AbilitySchema>? abilities,
  });
  WarframeSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _WarframeSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WarframeSchema, $Out>
    implements WarframeSchemaCopyWith<$R, WarframeSchema, $Out> {
  _WarframeSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WarframeSchema> $mapper =
      WarframeSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get exalted =>
      ListCopyWith(
        $value.exalted,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(exalted: v),
      );
  @override
  ListCopyWith<
    $R,
    AbilitySchema,
    AbilitySchemaCopyWith<$R, AbilitySchema, AbilitySchema>
  >
  get abilities => ListCopyWith(
    $value.abilities,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(abilities: v),
  );
  @override
  $R call({
    String? uniqueName,
    String? name,
    Object? description = $none,
    bool? codexSecret,
    Object? parentName = $none,
    Object? productCategory = $none,
    int? health,
    int? shield,
    int? armor,
    int? stamina,
    int? power,
    int? masteryReq,
    double? sprintSpeed,
    String? passiveDescription,
    List<String>? exalted,
    List<AbilitySchema>? abilities,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (parentName != $none) #parentName: parentName,
      if (productCategory != $none) #productCategory: productCategory,
      if (health != null) #health: health,
      if (shield != null) #shield: shield,
      if (armor != null) #armor: armor,
      if (stamina != null) #stamina: stamina,
      if (power != null) #power: power,
      if (masteryReq != null) #masteryReq: masteryReq,
      if (sprintSpeed != null) #sprintSpeed: sprintSpeed,
      if (passiveDescription != null) #passiveDescription: passiveDescription,
      if (exalted != null) #exalted: exalted,
      if (abilities != null) #abilities: abilities,
    }),
  );
  @override
  WarframeSchema $make(CopyWithData data) => WarframeSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    parentName: data.get(#parentName, or: $value.parentName),
    productCategory: data.get(#productCategory, or: $value.productCategory),
    health: data.get(#health, or: $value.health),
    shield: data.get(#shield, or: $value.shield),
    armor: data.get(#armor, or: $value.armor),
    stamina: data.get(#stamina, or: $value.stamina),
    power: data.get(#power, or: $value.power),
    masteryReq: data.get(#masteryReq, or: $value.masteryReq),
    sprintSpeed: data.get(#sprintSpeed, or: $value.sprintSpeed),
    passiveDescription: data.get(
      #passiveDescription,
      or: $value.passiveDescription,
    ),
    exalted: data.get(#exalted, or: $value.exalted),
    abilities: data.get(#abilities, or: $value.abilities),
  );

  @override
  WarframeSchemaCopyWith<$R2, WarframeSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WarframeSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AbilitySchemaMapper extends ClassMapperBase<AbilitySchema> {
  AbilitySchemaMapper._();

  static AbilitySchemaMapper? _instance;
  static AbilitySchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AbilitySchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AbilitySchema';

  static String _$uniqueName(AbilitySchema v) => v.uniqueName;
  static const Field<AbilitySchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
    key: r'abilityUniqueName',
  );
  static String _$name(AbilitySchema v) => v.name;
  static const Field<AbilitySchema, String> _f$name = Field(
    'name',
    _$name,
    key: r'abilityName',
  );
  static String _$description(AbilitySchema v) => v.description;
  static const Field<AbilitySchema, String> _f$description = Field(
    'description',
    _$description,
  );

  @override
  final MappableFields<AbilitySchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
  };

  static AbilitySchema _instantiate(DecodingData data) {
    return AbilitySchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AbilitySchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AbilitySchema>(map);
  }

  static AbilitySchema fromJson(String json) {
    return ensureInitialized().decodeJson<AbilitySchema>(json);
  }
}

mixin AbilitySchemaMappable {
  String toJson() {
    return AbilitySchemaMapper.ensureInitialized().encodeJson<AbilitySchema>(
      this as AbilitySchema,
    );
  }

  Map<String, dynamic> toMap() {
    return AbilitySchemaMapper.ensureInitialized().encodeMap<AbilitySchema>(
      this as AbilitySchema,
    );
  }

  AbilitySchemaCopyWith<AbilitySchema, AbilitySchema, AbilitySchema>
  get copyWith => _AbilitySchemaCopyWithImpl<AbilitySchema, AbilitySchema>(
    this as AbilitySchema,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return AbilitySchemaMapper.ensureInitialized().stringifyValue(
      this as AbilitySchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return AbilitySchemaMapper.ensureInitialized().equalsValue(
      this as AbilitySchema,
      other,
    );
  }

  @override
  int get hashCode {
    return AbilitySchemaMapper.ensureInitialized().hashValue(
      this as AbilitySchema,
    );
  }
}

extension AbilitySchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AbilitySchema, $Out> {
  AbilitySchemaCopyWith<$R, AbilitySchema, $Out> get $asAbilitySchema =>
      $base.as((v, t, t2) => _AbilitySchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AbilitySchemaCopyWith<$R, $In extends AbilitySchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? uniqueName, String? name, String? description});
  AbilitySchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AbilitySchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AbilitySchema, $Out>
    implements AbilitySchemaCopyWith<$R, AbilitySchema, $Out> {
  _AbilitySchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AbilitySchema> $mapper =
      AbilitySchemaMapper.ensureInitialized();
  @override
  $R call({String? uniqueName, String? name, String? description}) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != null) #description: description,
    }),
  );
  @override
  AbilitySchema $make(CopyWithData data) => AbilitySchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
  );

  @override
  AbilitySchemaCopyWith<$R2, AbilitySchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AbilitySchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

