// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'flavour_schema.dart';

class FlavourSchemaMapper extends ClassMapperBase<FlavourSchema> {
  FlavourSchemaMapper._();

  static FlavourSchemaMapper? _instance;
  static FlavourSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FlavourSchemaMapper._());
      HexColourMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FlavourSchema';

  static String _$uniqueName(FlavourSchema v) => v.uniqueName;
  static const Field<FlavourSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(FlavourSchema v) => v.name;
  static const Field<FlavourSchema, String> _f$name = Field('name', _$name);
  static String? _$description(FlavourSchema v) => v.description;
  static const Field<FlavourSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(FlavourSchema v) => v.codexSecret;
  static const Field<FlavourSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static List<HexColour> _$hexColours(FlavourSchema v) => v.hexColours;
  static const Field<FlavourSchema, List<HexColour>> _f$hexColours = Field(
    'hexColours',
    _$hexColours,
  );

  @override
  final MappableFields<FlavourSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #hexColours: _f$hexColours,
  };

  static FlavourSchema _instantiate(DecodingData data) {
    return FlavourSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      hexColours: data.dec(_f$hexColours),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FlavourSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FlavourSchema>(map);
  }

  static FlavourSchema fromJson(String json) {
    return ensureInitialized().decodeJson<FlavourSchema>(json);
  }
}

mixin FlavourSchemaMappable {
  String toJson() {
    return FlavourSchemaMapper.ensureInitialized().encodeJson<FlavourSchema>(
      this as FlavourSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return FlavourSchemaMapper.ensureInitialized().encodeMap<FlavourSchema>(
      this as FlavourSchema,
    );
  }

  FlavourSchemaCopyWith<FlavourSchema, FlavourSchema, FlavourSchema>
  get copyWith => _FlavourSchemaCopyWithImpl<FlavourSchema, FlavourSchema>(
    this as FlavourSchema,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return FlavourSchemaMapper.ensureInitialized().stringifyValue(
      this as FlavourSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return FlavourSchemaMapper.ensureInitialized().equalsValue(
      this as FlavourSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return FlavourSchemaMapper.ensureInitialized().hashValue(
      this as FlavourSchema,
    );
  }
}

extension FlavourSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FlavourSchema, $Out> {
  FlavourSchemaCopyWith<$R, FlavourSchema, $Out> get $asFlavourSchema =>
      $base.as((v, t, t2) => _FlavourSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FlavourSchemaCopyWith<$R, $In extends FlavourSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, HexColour, HexColourCopyWith<$R, HexColour, HexColour>>
  get hexColours;
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    List<HexColour>? hexColours,
  });
  FlavourSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FlavourSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FlavourSchema, $Out>
    implements FlavourSchemaCopyWith<$R, FlavourSchema, $Out> {
  _FlavourSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FlavourSchema> $mapper =
      FlavourSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, HexColour, HexColourCopyWith<$R, HexColour, HexColour>>
  get hexColours => ListCopyWith(
    $value.hexColours,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(hexColours: v),
  );
  @override
  $R call({
    String? uniqueName,
    String? name,
    Object? description = $none,
    bool? codexSecret,
    List<HexColour>? hexColours,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (hexColours != null) #hexColours: hexColours,
    }),
  );
  @override
  FlavourSchema $make(CopyWithData data) => FlavourSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    hexColours: data.get(#hexColours, or: $value.hexColours),
  );

  @override
  FlavourSchemaCopyWith<$R2, FlavourSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FlavourSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class HexColourMapper extends ClassMapperBase<HexColour> {
  HexColourMapper._();

  static HexColourMapper? _instance;
  static HexColourMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HexColourMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HexColour';

  static String _$value(HexColour v) => v.value;
  static const Field<HexColour, String> _f$value = Field('value', _$value);

  @override
  final MappableFields<HexColour> fields = const {#value: _f$value};

  static HexColour _instantiate(DecodingData data) {
    return HexColour(value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static HexColour fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HexColour>(map);
  }

  static HexColour fromJson(String json) {
    return ensureInitialized().decodeJson<HexColour>(json);
  }
}

mixin HexColourMappable {
  String toJson() {
    return HexColourMapper.ensureInitialized().encodeJson<HexColour>(
      this as HexColour,
    );
  }

  Map<String, dynamic> toMap() {
    return HexColourMapper.ensureInitialized().encodeMap<HexColour>(
      this as HexColour,
    );
  }

  HexColourCopyWith<HexColour, HexColour, HexColour> get copyWith =>
      _HexColourCopyWithImpl<HexColour, HexColour>(
        this as HexColour,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return HexColourMapper.ensureInitialized().stringifyValue(
      this as HexColour,
    );
  }

  @override
  bool operator ==(Object other) {
    return HexColourMapper.ensureInitialized().equalsValue(
      this as HexColour,
      other,
    );
  }

  @override
  int get hashCode {
    return HexColourMapper.ensureInitialized().hashValue(this as HexColour);
  }
}

extension HexColourValueCopy<$R, $Out> on ObjectCopyWith<$R, HexColour, $Out> {
  HexColourCopyWith<$R, HexColour, $Out> get $asHexColour =>
      $base.as((v, t, t2) => _HexColourCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HexColourCopyWith<$R, $In extends HexColour, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value});
  HexColourCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HexColourCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HexColour, $Out>
    implements HexColourCopyWith<$R, HexColour, $Out> {
  _HexColourCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HexColour> $mapper =
      HexColourMapper.ensureInitialized();
  @override
  $R call({String? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  HexColour $make(CopyWithData data) =>
      HexColour(value: data.get(#value, or: $value.value));

  @override
  HexColourCopyWith<$R2, HexColour, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _HexColourCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

