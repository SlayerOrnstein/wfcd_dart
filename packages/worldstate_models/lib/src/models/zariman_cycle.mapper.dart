// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'zariman_cycle.dart';

class ZarimanCycleMapper extends ClassMapperBase<ZarimanCycle> {
  ZarimanCycleMapper._();

  static ZarimanCycleMapper? _instance;
  static ZarimanCycleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ZarimanCycleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ZarimanCycle';

  static String _$id(ZarimanCycle v) => v.id;
  static const Field<ZarimanCycle, String> _f$id = Field('id', _$id);
  static DateTime _$activation(ZarimanCycle v) => v.activation;
  static const Field<ZarimanCycle, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(ZarimanCycle v) => v.expiry;
  static const Field<ZarimanCycle, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static bool _$isCorpus(ZarimanCycle v) => v.isCorpus;
  static const Field<ZarimanCycle, bool> _f$isCorpus = Field(
    'isCorpus',
    _$isCorpus,
  );
  static ZarimanState _$state(ZarimanCycle v) => v.state;
  static const Field<ZarimanCycle, ZarimanState> _f$state = Field(
    'state',
    _$state,
  );

  @override
  final MappableFields<ZarimanCycle> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #isCorpus: _f$isCorpus,
    #state: _f$state,
  };
  @override
  final bool ignoreNull = true;

  static ZarimanCycle _instantiate(DecodingData data) {
    return ZarimanCycle(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      isCorpus: data.dec(_f$isCorpus),
      state: data.dec(_f$state),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ZarimanCycle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ZarimanCycle>(map);
  }

  static ZarimanCycle fromJson(String json) {
    return ensureInitialized().decodeJson<ZarimanCycle>(json);
  }
}

mixin ZarimanCycleMappable {
  String toJson() {
    return ZarimanCycleMapper.ensureInitialized().encodeJson<ZarimanCycle>(
      this as ZarimanCycle,
    );
  }

  Map<String, dynamic> toMap() {
    return ZarimanCycleMapper.ensureInitialized().encodeMap<ZarimanCycle>(
      this as ZarimanCycle,
    );
  }

  ZarimanCycleCopyWith<ZarimanCycle, ZarimanCycle, ZarimanCycle> get copyWith =>
      _ZarimanCycleCopyWithImpl<ZarimanCycle, ZarimanCycle>(
        this as ZarimanCycle,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ZarimanCycleMapper.ensureInitialized().stringifyValue(
      this as ZarimanCycle,
    );
  }

  @override
  bool operator ==(Object other) {
    return ZarimanCycleMapper.ensureInitialized().equalsValue(
      this as ZarimanCycle,
      other,
    );
  }

  @override
  int get hashCode {
    return ZarimanCycleMapper.ensureInitialized().hashValue(
      this as ZarimanCycle,
    );
  }
}

extension ZarimanCycleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ZarimanCycle, $Out> {
  ZarimanCycleCopyWith<$R, ZarimanCycle, $Out> get $asZarimanCycle =>
      $base.as((v, t, t2) => _ZarimanCycleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ZarimanCycleCopyWith<$R, $In extends ZarimanCycle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    bool? isCorpus,
    ZarimanState? state,
  });
  ZarimanCycleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ZarimanCycleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ZarimanCycle, $Out>
    implements ZarimanCycleCopyWith<$R, ZarimanCycle, $Out> {
  _ZarimanCycleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ZarimanCycle> $mapper =
      ZarimanCycleMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    bool? isCorpus,
    ZarimanState? state,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (isCorpus != null) #isCorpus: isCorpus,
      if (state != null) #state: state,
    }),
  );
  @override
  ZarimanCycle $make(CopyWithData data) => ZarimanCycle(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    isCorpus: data.get(#isCorpus, or: $value.isCorpus),
    state: data.get(#state, or: $value.state),
  );

  @override
  ZarimanCycleCopyWith<$R2, ZarimanCycle, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ZarimanCycleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

