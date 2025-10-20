// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'extractor_schema.dart';

class ExtractorSchemaMapper extends ClassMapperBase<ExtractorSchema> {
  ExtractorSchemaMapper._();

  static ExtractorSchemaMapper? _instance;
  static ExtractorSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ExtractorSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ExtractorSchema';

  static String _$uniqueName(ExtractorSchema v) => v.uniqueName;
  static const Field<ExtractorSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(ExtractorSchema v) => v.name;
  static const Field<ExtractorSchema, String> _f$name = Field('name', _$name);
  static String? _$description(ExtractorSchema v) => v.description;
  static const Field<ExtractorSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(ExtractorSchema v) => v.codexSecret;
  static const Field<ExtractorSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static int _$binCount(ExtractorSchema v) => v.binCount;
  static const Field<ExtractorSchema, int> _f$binCount = Field(
    'binCount',
    _$binCount,
  );
  static int _$binCapacity(ExtractorSchema v) => v.binCapacity;
  static const Field<ExtractorSchema, int> _f$binCapacity = Field(
    'binCapacity',
    _$binCapacity,
  );
  static int _$fillRate(ExtractorSchema v) => v.fillRate;
  static const Field<ExtractorSchema, int> _f$fillRate = Field(
    'fillRate',
    _$fillRate,
  );
  static int _$durability(ExtractorSchema v) => v.durability;
  static const Field<ExtractorSchema, int> _f$durability = Field(
    'durability',
    _$durability,
  );
  static int _$repairRate(ExtractorSchema v) => v.repairRate;
  static const Field<ExtractorSchema, int> _f$repairRate = Field(
    'repairRate',
    _$repairRate,
  );
  static List<int> _$capacityMultiplier(ExtractorSchema v) =>
      v.capacityMultiplier;
  static const Field<ExtractorSchema, List<int>> _f$capacityMultiplier = Field(
    'capacityMultiplier',
    _$capacityMultiplier,
  );
  static List<String> _$specialities(ExtractorSchema v) => v.specialities;
  static const Field<ExtractorSchema, List<String>> _f$specialities = Field(
    'specialities',
    _$specialities,
  );
  static bool? _$excludeFromCodex(ExtractorSchema v) => v.excludeFromCodex;
  static const Field<ExtractorSchema, bool> _f$excludeFromCodex = Field(
    'excludeFromCodex',
    _$excludeFromCodex,
    opt: true,
  );

  @override
  final MappableFields<ExtractorSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #binCount: _f$binCount,
    #binCapacity: _f$binCapacity,
    #fillRate: _f$fillRate,
    #durability: _f$durability,
    #repairRate: _f$repairRate,
    #capacityMultiplier: _f$capacityMultiplier,
    #specialities: _f$specialities,
    #excludeFromCodex: _f$excludeFromCodex,
  };

  static ExtractorSchema _instantiate(DecodingData data) {
    return ExtractorSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      binCount: data.dec(_f$binCount),
      binCapacity: data.dec(_f$binCapacity),
      fillRate: data.dec(_f$fillRate),
      durability: data.dec(_f$durability),
      repairRate: data.dec(_f$repairRate),
      capacityMultiplier: data.dec(_f$capacityMultiplier),
      specialities: data.dec(_f$specialities),
      excludeFromCodex: data.dec(_f$excludeFromCodex),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ExtractorSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ExtractorSchema>(map);
  }

  static ExtractorSchema fromJson(String json) {
    return ensureInitialized().decodeJson<ExtractorSchema>(json);
  }
}

mixin ExtractorSchemaMappable {
  String toJson() {
    return ExtractorSchemaMapper.ensureInitialized()
        .encodeJson<ExtractorSchema>(this as ExtractorSchema);
  }

  Map<String, dynamic> toMap() {
    return ExtractorSchemaMapper.ensureInitialized().encodeMap<ExtractorSchema>(
      this as ExtractorSchema,
    );
  }

  ExtractorSchemaCopyWith<ExtractorSchema, ExtractorSchema, ExtractorSchema>
  get copyWith =>
      _ExtractorSchemaCopyWithImpl<ExtractorSchema, ExtractorSchema>(
        this as ExtractorSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ExtractorSchemaMapper.ensureInitialized().stringifyValue(
      this as ExtractorSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return ExtractorSchemaMapper.ensureInitialized().equalsValue(
      this as ExtractorSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return ExtractorSchemaMapper.ensureInitialized().hashValue(
      this as ExtractorSchema,
    );
  }
}

extension ExtractorSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ExtractorSchema, $Out> {
  ExtractorSchemaCopyWith<$R, ExtractorSchema, $Out> get $asExtractorSchema =>
      $base.as((v, t, t2) => _ExtractorSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ExtractorSchemaCopyWith<$R, $In extends ExtractorSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get capacityMultiplier;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get specialities;
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    int? binCount,
    int? binCapacity,
    int? fillRate,
    int? durability,
    int? repairRate,
    List<int>? capacityMultiplier,
    List<String>? specialities,
    bool? excludeFromCodex,
  });
  ExtractorSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ExtractorSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ExtractorSchema, $Out>
    implements ExtractorSchemaCopyWith<$R, ExtractorSchema, $Out> {
  _ExtractorSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ExtractorSchema> $mapper =
      ExtractorSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get capacityMultiplier =>
      ListCopyWith(
        $value.capacityMultiplier,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(capacityMultiplier: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get specialities => ListCopyWith(
    $value.specialities,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(specialities: v),
  );
  @override
  $R call({
    String? uniqueName,
    String? name,
    Object? description = $none,
    bool? codexSecret,
    int? binCount,
    int? binCapacity,
    int? fillRate,
    int? durability,
    int? repairRate,
    List<int>? capacityMultiplier,
    List<String>? specialities,
    Object? excludeFromCodex = $none,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (binCount != null) #binCount: binCount,
      if (binCapacity != null) #binCapacity: binCapacity,
      if (fillRate != null) #fillRate: fillRate,
      if (durability != null) #durability: durability,
      if (repairRate != null) #repairRate: repairRate,
      if (capacityMultiplier != null) #capacityMultiplier: capacityMultiplier,
      if (specialities != null) #specialities: specialities,
      if (excludeFromCodex != $none) #excludeFromCodex: excludeFromCodex,
    }),
  );
  @override
  ExtractorSchema $make(CopyWithData data) => ExtractorSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    binCount: data.get(#binCount, or: $value.binCount),
    binCapacity: data.get(#binCapacity, or: $value.binCapacity),
    fillRate: data.get(#fillRate, or: $value.fillRate),
    durability: data.get(#durability, or: $value.durability),
    repairRate: data.get(#repairRate, or: $value.repairRate),
    capacityMultiplier: data.get(
      #capacityMultiplier,
      or: $value.capacityMultiplier,
    ),
    specialities: data.get(#specialities, or: $value.specialities),
    excludeFromCodex: data.get(#excludeFromCodex, or: $value.excludeFromCodex),
  );

  @override
  ExtractorSchemaCopyWith<$R2, ExtractorSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ExtractorSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

