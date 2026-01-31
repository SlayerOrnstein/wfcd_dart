// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'polarity.dart';

class RawPolarityMapper extends ClassMapperBase<RawPolarity> {
  RawPolarityMapper._();

  static RawPolarityMapper? _instance;
  static RawPolarityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawPolarityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawPolarity';

  static String _$value(RawPolarity v) => v.value;
  static const Field<RawPolarity, String> _f$value = Field(
    'value',
    _$value,
    key: r'Value',
  );
  static int _$slot(RawPolarity v) => v.slot;
  static const Field<RawPolarity, int> _f$slot = Field(
    'slot',
    _$slot,
    key: r'Slot',
  );

  @override
  final MappableFields<RawPolarity> fields = const {
    #value: _f$value,
    #slot: _f$slot,
  };
  @override
  final bool ignoreNull = true;

  static RawPolarity _instantiate(DecodingData data) {
    return RawPolarity(value: data.dec(_f$value), slot: data.dec(_f$slot));
  }

  @override
  final Function instantiate = _instantiate;

  static RawPolarity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawPolarity>(map);
  }

  static RawPolarity fromJson(String json) {
    return ensureInitialized().decodeJson<RawPolarity>(json);
  }
}

mixin RawPolarityMappable {
  String toJson() {
    return RawPolarityMapper.ensureInitialized().encodeJson<RawPolarity>(
      this as RawPolarity,
    );
  }

  Map<String, dynamic> toMap() {
    return RawPolarityMapper.ensureInitialized().encodeMap<RawPolarity>(
      this as RawPolarity,
    );
  }

  RawPolarityCopyWith<RawPolarity, RawPolarity, RawPolarity> get copyWith =>
      _RawPolarityCopyWithImpl<RawPolarity, RawPolarity>(
        this as RawPolarity,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawPolarityMapper.ensureInitialized().stringifyValue(
      this as RawPolarity,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawPolarityMapper.ensureInitialized().equalsValue(
      this as RawPolarity,
      other,
    );
  }

  @override
  int get hashCode {
    return RawPolarityMapper.ensureInitialized().hashValue(this as RawPolarity);
  }
}

extension RawPolarityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawPolarity, $Out> {
  RawPolarityCopyWith<$R, RawPolarity, $Out> get $asRawPolarity =>
      $base.as((v, t, t2) => _RawPolarityCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawPolarityCopyWith<$R, $In extends RawPolarity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? value, int? slot});
  RawPolarityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawPolarityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawPolarity, $Out>
    implements RawPolarityCopyWith<$R, RawPolarity, $Out> {
  _RawPolarityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawPolarity> $mapper =
      RawPolarityMapper.ensureInitialized();
  @override
  $R call({String? value, int? slot}) => $apply(
    FieldCopyWithData({
      if (value != null) #value: value,
      if (slot != null) #slot: slot,
    }),
  );
  @override
  RawPolarity $make(CopyWithData data) => RawPolarity(
    value: data.get(#value, or: $value.value),
    slot: data.get(#slot, or: $value.slot),
  );

  @override
  RawPolarityCopyWith<$R2, RawPolarity, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawPolarityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PolarityMapper extends ClassMapperBase<Polarity> {
  PolarityMapper._();

  static PolarityMapper? _instance;
  static PolarityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PolarityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Polarity';

  static String _$polarity(Polarity v) => v.polarity;
  static const Field<Polarity, String> _f$polarity = Field(
    'polarity',
    _$polarity,
  );
  static int _$slot(Polarity v) => v.slot;
  static const Field<Polarity, int> _f$slot = Field('slot', _$slot);

  @override
  final MappableFields<Polarity> fields = const {
    #polarity: _f$polarity,
    #slot: _f$slot,
  };
  @override
  final bool ignoreNull = true;

  static Polarity _instantiate(DecodingData data) {
    return Polarity(polarity: data.dec(_f$polarity), slot: data.dec(_f$slot));
  }

  @override
  final Function instantiate = _instantiate;

  static Polarity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Polarity>(map);
  }

  static Polarity fromJson(String json) {
    return ensureInitialized().decodeJson<Polarity>(json);
  }
}

mixin PolarityMappable {
  String toJson() {
    return PolarityMapper.ensureInitialized().encodeJson<Polarity>(
      this as Polarity,
    );
  }

  Map<String, dynamic> toMap() {
    return PolarityMapper.ensureInitialized().encodeMap<Polarity>(
      this as Polarity,
    );
  }

  PolarityCopyWith<Polarity, Polarity, Polarity> get copyWith =>
      _PolarityCopyWithImpl<Polarity, Polarity>(
        this as Polarity,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PolarityMapper.ensureInitialized().stringifyValue(this as Polarity);
  }

  @override
  bool operator ==(Object other) {
    return PolarityMapper.ensureInitialized().equalsValue(
      this as Polarity,
      other,
    );
  }

  @override
  int get hashCode {
    return PolarityMapper.ensureInitialized().hashValue(this as Polarity);
  }
}

extension PolarityValueCopy<$R, $Out> on ObjectCopyWith<$R, Polarity, $Out> {
  PolarityCopyWith<$R, Polarity, $Out> get $asPolarity =>
      $base.as((v, t, t2) => _PolarityCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PolarityCopyWith<$R, $In extends Polarity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? polarity, int? slot});
  PolarityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PolarityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Polarity, $Out>
    implements PolarityCopyWith<$R, Polarity, $Out> {
  _PolarityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Polarity> $mapper =
      PolarityMapper.ensureInitialized();
  @override
  $R call({String? polarity, int? slot}) => $apply(
    FieldCopyWithData({
      if (polarity != null) #polarity: polarity,
      if (slot != null) #slot: slot,
    }),
  );
  @override
  Polarity $make(CopyWithData data) => Polarity(
    polarity: data.get(#polarity, or: $value.polarity),
    slot: data.get(#slot, or: $value.slot),
  );

  @override
  PolarityCopyWith<$R2, Polarity, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PolarityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

