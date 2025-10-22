// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sentient_outpost.dart';

class SentientOutpostMapper extends ClassMapperBase<SentientOutpost> {
  SentientOutpostMapper._();

  static SentientOutpostMapper? _instance;
  static SentientOutpostMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SentientOutpostMapper._());
      _t$_R0Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SentientOutpost';

  static String _$id(SentientOutpost v) => v.id;
  static const Field<SentientOutpost, String> _f$id = Field('id', _$id);
  static DateTime _$activation(SentientOutpost v) => v.activation;
  static const Field<SentientOutpost, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(SentientOutpost v) => v.expiry;
  static const Field<SentientOutpost, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static Node _$node(SentientOutpost v) => v.node;
  static const Field<SentientOutpost, Node> _f$node = Field('node', _$node);

  @override
  final MappableFields<SentientOutpost> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #node: _f$node,
  };
  @override
  final bool ignoreNull = true;

  static SentientOutpost _instantiate(DecodingData data) {
    return SentientOutpost(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      node: data.dec(_f$node),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SentientOutpost fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SentientOutpost>(map);
  }

  static SentientOutpost fromJson(String json) {
    return ensureInitialized().decodeJson<SentientOutpost>(json);
  }
}

mixin SentientOutpostMappable {
  String toJson() {
    return SentientOutpostMapper.ensureInitialized()
        .encodeJson<SentientOutpost>(this as SentientOutpost);
  }

  Map<String, dynamic> toMap() {
    return SentientOutpostMapper.ensureInitialized().encodeMap<SentientOutpost>(
      this as SentientOutpost,
    );
  }

  SentientOutpostCopyWith<SentientOutpost, SentientOutpost, SentientOutpost>
  get copyWith =>
      _SentientOutpostCopyWithImpl<SentientOutpost, SentientOutpost>(
        this as SentientOutpost,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SentientOutpostMapper.ensureInitialized().stringifyValue(
      this as SentientOutpost,
    );
  }

  @override
  bool operator ==(Object other) {
    return SentientOutpostMapper.ensureInitialized().equalsValue(
      this as SentientOutpost,
      other,
    );
  }

  @override
  int get hashCode {
    return SentientOutpostMapper.ensureInitialized().hashValue(
      this as SentientOutpost,
    );
  }
}

extension SentientOutpostValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SentientOutpost, $Out> {
  SentientOutpostCopyWith<$R, SentientOutpost, $Out> get $asSentientOutpost =>
      $base.as((v, t, t2) => _SentientOutpostCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SentientOutpostCopyWith<$R, $In extends SentientOutpost, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, DateTime? activation, DateTime? expiry, Node? node});
  SentientOutpostCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SentientOutpostCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SentientOutpost, $Out>
    implements SentientOutpostCopyWith<$R, SentientOutpost, $Out> {
  _SentientOutpostCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SentientOutpost> $mapper =
      SentientOutpostMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    Node? node,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (node != null) #node: node,
    }),
  );
  @override
  SentientOutpost $make(CopyWithData data) => SentientOutpost(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    node: data.get(#node, or: $value.node),
  );

  @override
  SentientOutpostCopyWith<$R2, SentientOutpost, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SentientOutpostCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

typedef _t$_R0<A, B, C> = ({A enemy, B name, C type});

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B, C>(f) => f<({A enemy, B name, C type})>());
    }
    return _instance!;
  }

  static dynamic _$enemy(_t$_R0 v) => v.enemy;
  static dynamic _arg$enemy<A, B, C>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$enemy = Field(
    'enemy',
    _$enemy,
    arg: _arg$enemy,
  );
  static dynamic _$name(_t$_R0 v) => v.name;
  static dynamic _arg$name<A, B, C>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$name = Field(
    'name',
    _$name,
    arg: _arg$name,
  );
  static dynamic _$type(_t$_R0 v) => v.type;
  static dynamic _arg$type<A, B, C>(f) => f<C>();
  static const Field<_t$_R0, dynamic> _f$type = Field(
    'type',
    _$type,
    arg: _arg$type,
  );

  @override
  final MappableFields<_t$_R0> fields = const {
    #enemy: _f$enemy,
    #name: _f$name,
    #type: _f$type,
  };

  @override
  Function get typeFactory =>
      <A, B, C>(f) => f<_t$_R0<A, B, C>>();

  static _t$_R0<A, B, C> _instantiate<A, B, C>(DecodingData<_t$_R0> data) {
    return (
      enemy: data.dec(_f$enemy),
      name: data.dec(_f$name),
      type: data.dec(_f$type),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B, C> fromMap<A, B, C>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B, C>>(map);
  }

  static _t$_R0<A, B, C> fromJson<A, B, C>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B, C>>(json);
  }
}

