// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'generic_schema.dart';

class GenericSchemaMapper extends ClassMapperBase<GenericSchema> {
  GenericSchemaMapper._();

  static GenericSchemaMapper? _instance;
  static GenericSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenericSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GenericSchema';

  static String _$uniqueName(GenericSchema v) => v.uniqueName;
  static const Field<GenericSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(GenericSchema v) => v.name;
  static const Field<GenericSchema, String> _f$name = Field('name', _$name);
  static String? _$description(GenericSchema v) => v.description;
  static const Field<GenericSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(GenericSchema v) => v.codexSecret;
  static const Field<GenericSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static String? _$parentName(GenericSchema v) => v.parentName;
  static const Field<GenericSchema, String> _f$parentName = Field(
    'parentName',
    _$parentName,
    opt: true,
  );

  @override
  final MappableFields<GenericSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #parentName: _f$parentName,
  };

  static GenericSchema _instantiate(DecodingData data) {
    return GenericSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      parentName: data.dec(_f$parentName),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GenericSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GenericSchema>(map);
  }

  static GenericSchema fromJson(String json) {
    return ensureInitialized().decodeJson<GenericSchema>(json);
  }
}

mixin GenericSchemaMappable {
  String toJson() {
    return GenericSchemaMapper.ensureInitialized().encodeJson<GenericSchema>(
      this as GenericSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return GenericSchemaMapper.ensureInitialized().encodeMap<GenericSchema>(
      this as GenericSchema,
    );
  }

  GenericSchemaCopyWith<GenericSchema, GenericSchema, GenericSchema>
  get copyWith => _GenericSchemaCopyWithImpl<GenericSchema, GenericSchema>(
    this as GenericSchema,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return GenericSchemaMapper.ensureInitialized().stringifyValue(
      this as GenericSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return GenericSchemaMapper.ensureInitialized().equalsValue(
      this as GenericSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return GenericSchemaMapper.ensureInitialized().hashValue(
      this as GenericSchema,
    );
  }
}

extension GenericSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GenericSchema, $Out> {
  GenericSchemaCopyWith<$R, GenericSchema, $Out> get $asGenericSchema =>
      $base.as((v, t, t2) => _GenericSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GenericSchemaCopyWith<$R, $In extends GenericSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    String? parentName,
  });
  GenericSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GenericSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GenericSchema, $Out>
    implements GenericSchemaCopyWith<$R, GenericSchema, $Out> {
  _GenericSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GenericSchema> $mapper =
      GenericSchemaMapper.ensureInitialized();
  @override
  $R call({
    String? uniqueName,
    String? name,
    Object? description = $none,
    bool? codexSecret,
    Object? parentName = $none,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (parentName != $none) #parentName: parentName,
    }),
  );
  @override
  GenericSchema $make(CopyWithData data) => GenericSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    parentName: data.get(#parentName, or: $value.parentName),
  );

  @override
  GenericSchemaCopyWith<$R2, GenericSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GenericSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

