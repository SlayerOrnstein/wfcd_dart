// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'arbitration.dart';

class ArbitrationMapper extends ClassMapperBase<Arbitration> {
  ArbitrationMapper._();

  static ArbitrationMapper? _instance;
  static ArbitrationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArbitrationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Arbitration';

  static String _$id(Arbitration v) => v.id;
  static const Field<Arbitration, String> _f$id = Field('id', _$id);
  static DateTime _$activation(Arbitration v) => v.activation;
  static const Field<Arbitration, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(Arbitration v) => v.expiry;
  static const Field<Arbitration, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static String _$key(Arbitration v) => v.key;
  static const Field<Arbitration, String> _f$key = Field('key', _$key);
  static String _$node(Arbitration v) => v.node;
  static const Field<Arbitration, String> _f$node = Field('node', _$node);
  static String? _$type(Arbitration v) => v.type;
  static const Field<Arbitration, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<Arbitration> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #key: _f$key,
    #node: _f$node,
    #type: _f$type,
  };
  @override
  final bool ignoreNull = true;

  static Arbitration _instantiate(DecodingData data) {
    return Arbitration(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      key: data.dec(_f$key),
      node: data.dec(_f$node),
      type: data.dec(_f$type),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Arbitration fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Arbitration>(map);
  }

  static Arbitration fromJson(String json) {
    return ensureInitialized().decodeJson<Arbitration>(json);
  }
}

mixin ArbitrationMappable {
  String toJson() {
    return ArbitrationMapper.ensureInitialized().encodeJson<Arbitration>(
      this as Arbitration,
    );
  }

  Map<String, dynamic> toMap() {
    return ArbitrationMapper.ensureInitialized().encodeMap<Arbitration>(
      this as Arbitration,
    );
  }

  ArbitrationCopyWith<Arbitration, Arbitration, Arbitration> get copyWith =>
      _ArbitrationCopyWithImpl<Arbitration, Arbitration>(
        this as Arbitration,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ArbitrationMapper.ensureInitialized().stringifyValue(
      this as Arbitration,
    );
  }

  @override
  bool operator ==(Object other) {
    return ArbitrationMapper.ensureInitialized().equalsValue(
      this as Arbitration,
      other,
    );
  }

  @override
  int get hashCode {
    return ArbitrationMapper.ensureInitialized().hashValue(this as Arbitration);
  }
}

extension ArbitrationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Arbitration, $Out> {
  ArbitrationCopyWith<$R, Arbitration, $Out> get $asArbitration =>
      $base.as((v, t, t2) => _ArbitrationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ArbitrationCopyWith<$R, $In extends Arbitration, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? key,
    String? node,
    String? type,
  });
  ArbitrationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ArbitrationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Arbitration, $Out>
    implements ArbitrationCopyWith<$R, Arbitration, $Out> {
  _ArbitrationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Arbitration> $mapper =
      ArbitrationMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? key,
    String? node,
    Object? type = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (key != null) #key: key,
      if (node != null) #node: node,
      if (type != $none) #type: type,
    }),
  );
  @override
  Arbitration $make(CopyWithData data) => Arbitration(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    key: data.get(#key, or: $value.key),
    node: data.get(#node, or: $value.node),
    type: data.get(#type, or: $value.type),
  );

  @override
  ArbitrationCopyWith<$R2, Arbitration, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ArbitrationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

