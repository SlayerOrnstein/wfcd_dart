// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cambion_cycle.dart';

class CambionCycleMapper extends ClassMapperBase<CambionCycle> {
  CambionCycleMapper._();

  static CambionCycleMapper? _instance;
  static CambionCycleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CambionCycleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CambionCycle';

  static String _$id(CambionCycle v) => v.id;
  static const Field<CambionCycle, String> _f$id = Field('id', _$id);
  static DateTime _$activation(CambionCycle v) => v.activation;
  static const Field<CambionCycle, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(CambionCycle v) => v.expiry;
  static const Field<CambionCycle, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static bool _$isFass(CambionCycle v) => v.isFass;
  static const Field<CambionCycle, bool> _f$isFass = Field('isFass', _$isFass);
  static CambionState _$state(CambionCycle v) => v.state;
  static const Field<CambionCycle, CambionState> _f$state = Field(
    'state',
    _$state,
  );

  @override
  final MappableFields<CambionCycle> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #isFass: _f$isFass,
    #state: _f$state,
  };
  @override
  final bool ignoreNull = true;

  static CambionCycle _instantiate(DecodingData data) {
    return CambionCycle(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      isFass: data.dec(_f$isFass),
      state: data.dec(_f$state),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CambionCycle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CambionCycle>(map);
  }

  static CambionCycle fromJson(String json) {
    return ensureInitialized().decodeJson<CambionCycle>(json);
  }
}

mixin CambionCycleMappable {
  String toJson() {
    return CambionCycleMapper.ensureInitialized().encodeJson<CambionCycle>(
      this as CambionCycle,
    );
  }

  Map<String, dynamic> toMap() {
    return CambionCycleMapper.ensureInitialized().encodeMap<CambionCycle>(
      this as CambionCycle,
    );
  }

  CambionCycleCopyWith<CambionCycle, CambionCycle, CambionCycle> get copyWith =>
      _CambionCycleCopyWithImpl<CambionCycle, CambionCycle>(
        this as CambionCycle,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CambionCycleMapper.ensureInitialized().stringifyValue(
      this as CambionCycle,
    );
  }

  @override
  bool operator ==(Object other) {
    return CambionCycleMapper.ensureInitialized().equalsValue(
      this as CambionCycle,
      other,
    );
  }

  @override
  int get hashCode {
    return CambionCycleMapper.ensureInitialized().hashValue(
      this as CambionCycle,
    );
  }
}

extension CambionCycleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CambionCycle, $Out> {
  CambionCycleCopyWith<$R, CambionCycle, $Out> get $asCambionCycle =>
      $base.as((v, t, t2) => _CambionCycleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CambionCycleCopyWith<$R, $In extends CambionCycle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    bool? isFass,
    CambionState? state,
  });
  CambionCycleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CambionCycleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CambionCycle, $Out>
    implements CambionCycleCopyWith<$R, CambionCycle, $Out> {
  _CambionCycleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CambionCycle> $mapper =
      CambionCycleMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    bool? isFass,
    CambionState? state,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (isFass != null) #isFass: isFass,
      if (state != null) #state: state,
    }),
  );
  @override
  CambionCycle $make(CopyWithData data) => CambionCycle(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    isFass: data.get(#isFass, or: $value.isFass),
    state: data.get(#state, or: $value.state),
  );

  @override
  CambionCycleCopyWith<$R2, CambionCycle, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CambionCycleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

