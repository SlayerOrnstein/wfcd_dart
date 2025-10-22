// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'vallis_cycle.dart';

class VallisStateMapper extends EnumMapper<VallisState> {
  VallisStateMapper._();

  static VallisStateMapper? _instance;
  static VallisStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VallisStateMapper._());
    }
    return _instance!;
  }

  static VallisState fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  VallisState decode(dynamic value) {
    switch (value) {
      case r'warm':
        return VallisState.warm;
      case r'cold':
        return VallisState.cold;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(VallisState self) {
    switch (self) {
      case VallisState.warm:
        return r'warm';
      case VallisState.cold:
        return r'cold';
    }
  }
}

extension VallisStateMapperExtension on VallisState {
  String toValue() {
    VallisStateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<VallisState>(this) as String;
  }
}

class VallisCycleMapper extends ClassMapperBase<VallisCycle> {
  VallisCycleMapper._();

  static VallisCycleMapper? _instance;
  static VallisCycleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VallisCycleMapper._());
      VallisStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VallisCycle';

  static String _$id(VallisCycle v) => v.id;
  static const Field<VallisCycle, String> _f$id = Field('id', _$id);
  static DateTime _$activation(VallisCycle v) => v.activation;
  static const Field<VallisCycle, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(VallisCycle v) => v.expiry;
  static const Field<VallisCycle, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static bool _$isWarm(VallisCycle v) => v.isWarm;
  static const Field<VallisCycle, bool> _f$isWarm = Field('isWarm', _$isWarm);
  static VallisState _$state(VallisCycle v) => v.state;
  static const Field<VallisCycle, VallisState> _f$state = Field(
    'state',
    _$state,
  );

  @override
  final MappableFields<VallisCycle> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #isWarm: _f$isWarm,
    #state: _f$state,
  };
  @override
  final bool ignoreNull = true;

  static VallisCycle _instantiate(DecodingData data) {
    return VallisCycle(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      isWarm: data.dec(_f$isWarm),
      state: data.dec(_f$state),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VallisCycle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VallisCycle>(map);
  }

  static VallisCycle fromJson(String json) {
    return ensureInitialized().decodeJson<VallisCycle>(json);
  }
}

mixin VallisCycleMappable {
  String toJson() {
    return VallisCycleMapper.ensureInitialized().encodeJson<VallisCycle>(
      this as VallisCycle,
    );
  }

  Map<String, dynamic> toMap() {
    return VallisCycleMapper.ensureInitialized().encodeMap<VallisCycle>(
      this as VallisCycle,
    );
  }

  VallisCycleCopyWith<VallisCycle, VallisCycle, VallisCycle> get copyWith =>
      _VallisCycleCopyWithImpl<VallisCycle, VallisCycle>(
        this as VallisCycle,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return VallisCycleMapper.ensureInitialized().stringifyValue(
      this as VallisCycle,
    );
  }

  @override
  bool operator ==(Object other) {
    return VallisCycleMapper.ensureInitialized().equalsValue(
      this as VallisCycle,
      other,
    );
  }

  @override
  int get hashCode {
    return VallisCycleMapper.ensureInitialized().hashValue(this as VallisCycle);
  }
}

extension VallisCycleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VallisCycle, $Out> {
  VallisCycleCopyWith<$R, VallisCycle, $Out> get $asVallisCycle =>
      $base.as((v, t, t2) => _VallisCycleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VallisCycleCopyWith<$R, $In extends VallisCycle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    bool? isWarm,
    VallisState? state,
  });
  VallisCycleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VallisCycleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VallisCycle, $Out>
    implements VallisCycleCopyWith<$R, VallisCycle, $Out> {
  _VallisCycleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VallisCycle> $mapper =
      VallisCycleMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    bool? isWarm,
    VallisState? state,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (isWarm != null) #isWarm: isWarm,
      if (state != null) #state: state,
    }),
  );
  @override
  VallisCycle $make(CopyWithData data) => VallisCycle(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    isWarm: data.get(#isWarm, or: $value.isWarm),
    state: data.get(#state, or: $value.state),
  );

  @override
  VallisCycleCopyWith<$R2, VallisCycle, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _VallisCycleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

