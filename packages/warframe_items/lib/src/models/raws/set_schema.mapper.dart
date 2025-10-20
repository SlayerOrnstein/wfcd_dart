// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'set_schema.dart';

class SetSchemaMapper extends ClassMapperBase<SetSchema> {
  SetSchemaMapper._();

  static SetSchemaMapper? _instance;
  static SetSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SetSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SetSchema';

  static String _$uniqueName(SetSchema v) => v.uniqueName;
  static const Field<SetSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static int _$numUpgradesInSet(SetSchema v) => v.numUpgradesInSet;
  static const Field<SetSchema, int> _f$numUpgradesInSet = Field(
    'numUpgradesInSet',
    _$numUpgradesInSet,
  );
  static List<String> _$stats(SetSchema v) => v.stats;
  static const Field<SetSchema, List<String>> _f$stats = Field(
    'stats',
    _$stats,
  );

  @override
  final MappableFields<SetSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #numUpgradesInSet: _f$numUpgradesInSet,
    #stats: _f$stats,
  };

  static SetSchema _instantiate(DecodingData data) {
    return SetSchema(
      uniqueName: data.dec(_f$uniqueName),
      numUpgradesInSet: data.dec(_f$numUpgradesInSet),
      stats: data.dec(_f$stats),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SetSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SetSchema>(map);
  }

  static SetSchema fromJson(String json) {
    return ensureInitialized().decodeJson<SetSchema>(json);
  }
}

mixin SetSchemaMappable {
  String toJson() {
    return SetSchemaMapper.ensureInitialized().encodeJson<SetSchema>(
      this as SetSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return SetSchemaMapper.ensureInitialized().encodeMap<SetSchema>(
      this as SetSchema,
    );
  }

  SetSchemaCopyWith<SetSchema, SetSchema, SetSchema> get copyWith =>
      _SetSchemaCopyWithImpl<SetSchema, SetSchema>(
        this as SetSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SetSchemaMapper.ensureInitialized().stringifyValue(
      this as SetSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return SetSchemaMapper.ensureInitialized().equalsValue(
      this as SetSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return SetSchemaMapper.ensureInitialized().hashValue(this as SetSchema);
  }
}

extension SetSchemaValueCopy<$R, $Out> on ObjectCopyWith<$R, SetSchema, $Out> {
  SetSchemaCopyWith<$R, SetSchema, $Out> get $asSetSchema =>
      $base.as((v, t, t2) => _SetSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SetSchemaCopyWith<$R, $In extends SetSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get stats;
  $R call({String? uniqueName, int? numUpgradesInSet, List<String>? stats});
  SetSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SetSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SetSchema, $Out>
    implements SetSchemaCopyWith<$R, SetSchema, $Out> {
  _SetSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SetSchema> $mapper =
      SetSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get stats =>
      ListCopyWith(
        $value.stats,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(stats: v),
      );
  @override
  $R call({String? uniqueName, int? numUpgradesInSet, List<String>? stats}) =>
      $apply(
        FieldCopyWithData({
          if (uniqueName != null) #uniqueName: uniqueName,
          if (numUpgradesInSet != null) #numUpgradesInSet: numUpgradesInSet,
          if (stats != null) #stats: stats,
        }),
      );
  @override
  SetSchema $make(CopyWithData data) => SetSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    numUpgradesInSet: data.get(#numUpgradesInSet, or: $value.numUpgradesInSet),
    stats: data.get(#stats, or: $value.stats),
  );

  @override
  SetSchemaCopyWith<$R2, SetSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SetSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

