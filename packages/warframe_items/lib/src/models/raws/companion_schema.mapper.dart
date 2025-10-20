// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'companion_schema.dart';

class CompanionSchemaMapper extends ClassMapperBase<CompanionSchema> {
  CompanionSchemaMapper._();

  static CompanionSchemaMapper? _instance;
  static CompanionSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CompanionSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CompanionSchema';

  static String _$uniqueName(CompanionSchema v) => v.uniqueName;
  static const Field<CompanionSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(CompanionSchema v) => v.name;
  static const Field<CompanionSchema, String> _f$name = Field('name', _$name);
  static String? _$description(CompanionSchema v) => v.description;
  static const Field<CompanionSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(CompanionSchema v) => v.codexSecret;
  static const Field<CompanionSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static int _$health(CompanionSchema v) => v.health;
  static const Field<CompanionSchema, int> _f$health = Field(
    'health',
    _$health,
  );
  static int _$sheild(CompanionSchema v) => v.sheild;
  static const Field<CompanionSchema, int> _f$sheild = Field(
    'sheild',
    _$sheild,
  );
  static int _$armor(CompanionSchema v) => v.armor;
  static const Field<CompanionSchema, int> _f$armor = Field('armor', _$armor);
  static int _$stamina(CompanionSchema v) => v.stamina;
  static const Field<CompanionSchema, int> _f$stamina = Field(
    'stamina',
    _$stamina,
  );
  static int _$power(CompanionSchema v) => v.power;
  static const Field<CompanionSchema, int> _f$power = Field('power', _$power);
  static int _$masterReq(CompanionSchema v) => v.masterReq;
  static const Field<CompanionSchema, int> _f$masterReq = Field(
    'masterReq',
    _$masterReq,
  );
  static String? _$parentName(CompanionSchema v) => v.parentName;
  static const Field<CompanionSchema, String> _f$parentName = Field(
    'parentName',
    _$parentName,
    opt: true,
  );
  static String? _$productCategory(CompanionSchema v) => v.productCategory;
  static const Field<CompanionSchema, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
    opt: true,
  );

  @override
  final MappableFields<CompanionSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #health: _f$health,
    #sheild: _f$sheild,
    #armor: _f$armor,
    #stamina: _f$stamina,
    #power: _f$power,
    #masterReq: _f$masterReq,
    #parentName: _f$parentName,
    #productCategory: _f$productCategory,
  };

  static CompanionSchema _instantiate(DecodingData data) {
    return CompanionSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      health: data.dec(_f$health),
      sheild: data.dec(_f$sheild),
      armor: data.dec(_f$armor),
      stamina: data.dec(_f$stamina),
      power: data.dec(_f$power),
      masterReq: data.dec(_f$masterReq),
      parentName: data.dec(_f$parentName),
      productCategory: data.dec(_f$productCategory),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CompanionSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CompanionSchema>(map);
  }

  static CompanionSchema fromJson(String json) {
    return ensureInitialized().decodeJson<CompanionSchema>(json);
  }
}

mixin CompanionSchemaMappable {
  String toJson() {
    return CompanionSchemaMapper.ensureInitialized()
        .encodeJson<CompanionSchema>(this as CompanionSchema);
  }

  Map<String, dynamic> toMap() {
    return CompanionSchemaMapper.ensureInitialized().encodeMap<CompanionSchema>(
      this as CompanionSchema,
    );
  }

  CompanionSchemaCopyWith<CompanionSchema, CompanionSchema, CompanionSchema>
  get copyWith =>
      _CompanionSchemaCopyWithImpl<CompanionSchema, CompanionSchema>(
        this as CompanionSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CompanionSchemaMapper.ensureInitialized().stringifyValue(
      this as CompanionSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return CompanionSchemaMapper.ensureInitialized().equalsValue(
      this as CompanionSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return CompanionSchemaMapper.ensureInitialized().hashValue(
      this as CompanionSchema,
    );
  }
}

extension CompanionSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CompanionSchema, $Out> {
  CompanionSchemaCopyWith<$R, CompanionSchema, $Out> get $asCompanionSchema =>
      $base.as((v, t, t2) => _CompanionSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CompanionSchemaCopyWith<$R, $In extends CompanionSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    int? health,
    int? sheild,
    int? armor,
    int? stamina,
    int? power,
    int? masterReq,
    String? parentName,
    String? productCategory,
  });
  CompanionSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CompanionSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CompanionSchema, $Out>
    implements CompanionSchemaCopyWith<$R, CompanionSchema, $Out> {
  _CompanionSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CompanionSchema> $mapper =
      CompanionSchemaMapper.ensureInitialized();
  @override
  $R call({
    String? uniqueName,
    String? name,
    Object? description = $none,
    bool? codexSecret,
    int? health,
    int? sheild,
    int? armor,
    int? stamina,
    int? power,
    int? masterReq,
    Object? parentName = $none,
    Object? productCategory = $none,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (health != null) #health: health,
      if (sheild != null) #sheild: sheild,
      if (armor != null) #armor: armor,
      if (stamina != null) #stamina: stamina,
      if (power != null) #power: power,
      if (masterReq != null) #masterReq: masterReq,
      if (parentName != $none) #parentName: parentName,
      if (productCategory != $none) #productCategory: productCategory,
    }),
  );
  @override
  CompanionSchema $make(CopyWithData data) => CompanionSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    health: data.get(#health, or: $value.health),
    sheild: data.get(#sheild, or: $value.sheild),
    armor: data.get(#armor, or: $value.armor),
    stamina: data.get(#stamina, or: $value.stamina),
    power: data.get(#power, or: $value.power),
    masterReq: data.get(#masterReq, or: $value.masterReq),
    parentName: data.get(#parentName, or: $value.parentName),
    productCategory: data.get(#productCategory, or: $value.productCategory),
  );

  @override
  CompanionSchemaCopyWith<$R2, CompanionSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CompanionSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

