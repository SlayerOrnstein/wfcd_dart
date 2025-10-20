// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'node_schema.dart';

class NodeSchemaMapper extends ClassMapperBase<NodeSchema> {
  NodeSchemaMapper._();

  static NodeSchemaMapper? _instance;
  static NodeSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NodeSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NodeSchema';

  static String _$uniqueName(NodeSchema v) => v.uniqueName;
  static const Field<NodeSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(NodeSchema v) => v.name;
  static const Field<NodeSchema, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<NodeSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
  };

  static NodeSchema _instantiate(DecodingData data) {
    return NodeSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static NodeSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NodeSchema>(map);
  }

  static NodeSchema fromJson(String json) {
    return ensureInitialized().decodeJson<NodeSchema>(json);
  }
}

mixin NodeSchemaMappable {
  String toJson() {
    return NodeSchemaMapper.ensureInitialized().encodeJson<NodeSchema>(
      this as NodeSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return NodeSchemaMapper.ensureInitialized().encodeMap<NodeSchema>(
      this as NodeSchema,
    );
  }

  NodeSchemaCopyWith<NodeSchema, NodeSchema, NodeSchema> get copyWith =>
      _NodeSchemaCopyWithImpl<NodeSchema, NodeSchema>(
        this as NodeSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return NodeSchemaMapper.ensureInitialized().stringifyValue(
      this as NodeSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return NodeSchemaMapper.ensureInitialized().equalsValue(
      this as NodeSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return NodeSchemaMapper.ensureInitialized().hashValue(this as NodeSchema);
  }
}

extension NodeSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NodeSchema, $Out> {
  NodeSchemaCopyWith<$R, NodeSchema, $Out> get $asNodeSchema =>
      $base.as((v, t, t2) => _NodeSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NodeSchemaCopyWith<$R, $In extends NodeSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? uniqueName, String? name});
  NodeSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NodeSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NodeSchema, $Out>
    implements NodeSchemaCopyWith<$R, NodeSchema, $Out> {
  _NodeSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NodeSchema> $mapper =
      NodeSchemaMapper.ensureInitialized();
  @override
  $R call({String? uniqueName, String? name}) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
    }),
  );
  @override
  NodeSchema $make(CopyWithData data) => NodeSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
  );

  @override
  NodeSchemaCopyWith<$R2, NodeSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _NodeSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

