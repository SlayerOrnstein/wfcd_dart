// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cetus_cycle.dart';

class CetusStateMapper extends EnumMapper<CetusState> {
  CetusStateMapper._();

  static CetusStateMapper? _instance;
  static CetusStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CetusStateMapper._());
    }
    return _instance!;
  }

  static CetusState fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CetusState decode(dynamic value) {
    switch (value) {
      case r'day':
        return CetusState.day;
      case r'night':
        return CetusState.night;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CetusState self) {
    switch (self) {
      case CetusState.day:
        return r'day';
      case CetusState.night:
        return r'night';
    }
  }
}

extension CetusStateMapperExtension on CetusState {
  String toValue() {
    CetusStateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CetusState>(this) as String;
  }
}

class CetusCycleMapper extends ClassMapperBase<CetusCycle> {
  CetusCycleMapper._();

  static CetusCycleMapper? _instance;
  static CetusCycleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CetusCycleMapper._());
      CetusStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CetusCycle';

  static String _$id(CetusCycle v) => v.id;
  static const Field<CetusCycle, String> _f$id = Field('id', _$id);
  static DateTime? _$activation(CetusCycle v) => v.activation;
  static const Field<CetusCycle, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime? _$expiry(CetusCycle v) => v.expiry;
  static const Field<CetusCycle, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static bool _$isDay(CetusCycle v) => v.isDay;
  static const Field<CetusCycle, bool> _f$isDay = Field('isDay', _$isDay);
  static CetusState _$state(CetusCycle v) => v.state;
  static const Field<CetusCycle, CetusState> _f$state = Field('state', _$state);

  @override
  final MappableFields<CetusCycle> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #isDay: _f$isDay,
    #state: _f$state,
  };
  @override
  final bool ignoreNull = true;

  static CetusCycle _instantiate(DecodingData data) {
    return CetusCycle(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      isDay: data.dec(_f$isDay),
      state: data.dec(_f$state),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CetusCycle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CetusCycle>(map);
  }

  static CetusCycle fromJson(String json) {
    return ensureInitialized().decodeJson<CetusCycle>(json);
  }
}

mixin CetusCycleMappable {
  String toJson() {
    return CetusCycleMapper.ensureInitialized().encodeJson<CetusCycle>(
      this as CetusCycle,
    );
  }

  Map<String, dynamic> toMap() {
    return CetusCycleMapper.ensureInitialized().encodeMap<CetusCycle>(
      this as CetusCycle,
    );
  }

  CetusCycleCopyWith<CetusCycle, CetusCycle, CetusCycle> get copyWith =>
      _CetusCycleCopyWithImpl<CetusCycle, CetusCycle>(
        this as CetusCycle,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CetusCycleMapper.ensureInitialized().stringifyValue(
      this as CetusCycle,
    );
  }

  @override
  bool operator ==(Object other) {
    return CetusCycleMapper.ensureInitialized().equalsValue(
      this as CetusCycle,
      other,
    );
  }

  @override
  int get hashCode {
    return CetusCycleMapper.ensureInitialized().hashValue(this as CetusCycle);
  }
}

extension CetusCycleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CetusCycle, $Out> {
  CetusCycleCopyWith<$R, CetusCycle, $Out> get $asCetusCycle =>
      $base.as((v, t, t2) => _CetusCycleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CetusCycleCopyWith<$R, $In extends CetusCycle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    bool? isDay,
    CetusState? state,
  });
  CetusCycleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CetusCycleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CetusCycle, $Out>
    implements CetusCycleCopyWith<$R, CetusCycle, $Out> {
  _CetusCycleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CetusCycle> $mapper =
      CetusCycleMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    bool? isDay,
    CetusState? state,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (isDay != null) #isDay: isDay,
      if (state != null) #state: state,
    }),
  );
  @override
  CetusCycle $make(CopyWithData data) => CetusCycle(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    isDay: data.get(#isDay, or: $value.isDay),
    state: data.get(#state, or: $value.state),
  );

  @override
  CetusCycleCopyWith<$R2, CetusCycle, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CetusCycleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

