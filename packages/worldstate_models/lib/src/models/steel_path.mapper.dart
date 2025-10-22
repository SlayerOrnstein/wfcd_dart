// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'steel_path.dart';

class SteelPathMapper extends ClassMapperBase<SteelPath> {
  SteelPathMapper._();

  static SteelPathMapper? _instance;
  static SteelPathMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SteelPathMapper._());
      _t$_R0Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SteelPath';

  static String _$id(SteelPath v) => v.id;
  static const Field<SteelPath, String> _f$id = Field('id', _$id);
  static DateTime _$activation(SteelPath v) => v.activation;
  static const Field<SteelPath, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(SteelPath v) => v.expiry;
  static const Field<SteelPath, DateTime> _f$expiry = Field('expiry', _$expiry);
  static String _$currentReward(SteelPath v) => v.currentReward;
  static const Field<SteelPath, String> _f$currentReward = Field(
    'currentReward',
    _$currentReward,
  );
  static List<SteelPathItem> _$rotation(SteelPath v) => v.rotation;
  static const Field<SteelPath, List<SteelPathItem>> _f$rotation = Field(
    'rotation',
    _$rotation,
  );
  static List<SteelPathItem> _$evergreens(SteelPath v) => v.evergreens;
  static const Field<SteelPath, List<SteelPathItem>> _f$evergreens = Field(
    'evergreens',
    _$evergreens,
  );

  @override
  final MappableFields<SteelPath> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #currentReward: _f$currentReward,
    #rotation: _f$rotation,
    #evergreens: _f$evergreens,
  };
  @override
  final bool ignoreNull = true;

  static SteelPath _instantiate(DecodingData data) {
    return SteelPath(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      currentReward: data.dec(_f$currentReward),
      rotation: data.dec(_f$rotation),
      evergreens: data.dec(_f$evergreens),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SteelPath fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SteelPath>(map);
  }

  static SteelPath fromJson(String json) {
    return ensureInitialized().decodeJson<SteelPath>(json);
  }
}

mixin SteelPathMappable {
  String toJson() {
    return SteelPathMapper.ensureInitialized().encodeJson<SteelPath>(
      this as SteelPath,
    );
  }

  Map<String, dynamic> toMap() {
    return SteelPathMapper.ensureInitialized().encodeMap<SteelPath>(
      this as SteelPath,
    );
  }

  SteelPathCopyWith<SteelPath, SteelPath, SteelPath> get copyWith =>
      _SteelPathCopyWithImpl<SteelPath, SteelPath>(
        this as SteelPath,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SteelPathMapper.ensureInitialized().stringifyValue(
      this as SteelPath,
    );
  }

  @override
  bool operator ==(Object other) {
    return SteelPathMapper.ensureInitialized().equalsValue(
      this as SteelPath,
      other,
    );
  }

  @override
  int get hashCode {
    return SteelPathMapper.ensureInitialized().hashValue(this as SteelPath);
  }
}

extension SteelPathValueCopy<$R, $Out> on ObjectCopyWith<$R, SteelPath, $Out> {
  SteelPathCopyWith<$R, SteelPath, $Out> get $asSteelPath =>
      $base.as((v, t, t2) => _SteelPathCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SteelPathCopyWith<$R, $In extends SteelPath, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    SteelPathItem,
    ObjectCopyWith<$R, SteelPathItem, SteelPathItem>
  >
  get rotation;
  ListCopyWith<
    $R,
    SteelPathItem,
    ObjectCopyWith<$R, SteelPathItem, SteelPathItem>
  >
  get evergreens;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? currentReward,
    List<SteelPathItem>? rotation,
    List<SteelPathItem>? evergreens,
  });
  SteelPathCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SteelPathCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SteelPath, $Out>
    implements SteelPathCopyWith<$R, SteelPath, $Out> {
  _SteelPathCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SteelPath> $mapper =
      SteelPathMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    SteelPathItem,
    ObjectCopyWith<$R, SteelPathItem, SteelPathItem>
  >
  get rotation => ListCopyWith(
    $value.rotation,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(rotation: v),
  );
  @override
  ListCopyWith<
    $R,
    SteelPathItem,
    ObjectCopyWith<$R, SteelPathItem, SteelPathItem>
  >
  get evergreens => ListCopyWith(
    $value.evergreens,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(evergreens: v),
  );
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? currentReward,
    List<SteelPathItem>? rotation,
    List<SteelPathItem>? evergreens,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (currentReward != null) #currentReward: currentReward,
      if (rotation != null) #rotation: rotation,
      if (evergreens != null) #evergreens: evergreens,
    }),
  );
  @override
  SteelPath $make(CopyWithData data) => SteelPath(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    currentReward: data.get(#currentReward, or: $value.currentReward),
    rotation: data.get(#rotation, or: $value.rotation),
    evergreens: data.get(#evergreens, or: $value.evergreens),
  );

  @override
  SteelPathCopyWith<$R2, SteelPath, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SteelPathCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

typedef _t$_R0<A, B> = ({A cost, B name});

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B>(f) => f<({A cost, B name})>());
    }
    return _instance!;
  }

  static dynamic _$cost(_t$_R0 v) => v.cost;
  static dynamic _arg$cost<A, B>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$cost = Field(
    'cost',
    _$cost,
    arg: _arg$cost,
  );
  static dynamic _$name(_t$_R0 v) => v.name;
  static dynamic _arg$name<A, B>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$name = Field(
    'name',
    _$name,
    arg: _arg$name,
  );

  @override
  final MappableFields<_t$_R0> fields = const {#cost: _f$cost, #name: _f$name};

  @override
  Function get typeFactory =>
      <A, B>(f) => f<_t$_R0<A, B>>();

  static _t$_R0<A, B> _instantiate<A, B>(DecodingData<_t$_R0> data) {
    return (cost: data.dec(_f$cost), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B> fromMap<A, B>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B>>(map);
  }

  static _t$_R0<A, B> fromJson<A, B>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B>>(json);
  }
}

