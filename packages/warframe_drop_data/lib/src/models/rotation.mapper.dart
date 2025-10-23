// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rotation.dart';

class RotationsMapper extends ClassMapperBase<Rotations> {
  RotationsMapper._();

  static RotationsMapper? _instance;
  static RotationsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RotationsMapper._());
      RotationRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Rotations';
  @override
  Function get typeFactory =>
      <T extends RotationReward>(f) => f<Rotations<T>>();

  static List<RotationReward> _$a(Rotations v) => v.a;
  static dynamic _arg$a<T extends RotationReward>(f) => f<List<T>>();
  static const Field<Rotations, List<RotationReward>> _f$a = Field(
    'a',
    _$a,
    key: r'A',
    opt: true,
    arg: _arg$a,
  );
  static List<RotationReward> _$b(Rotations v) => v.b;
  static dynamic _arg$b<T extends RotationReward>(f) => f<List<T>>();
  static const Field<Rotations, List<RotationReward>> _f$b = Field(
    'b',
    _$b,
    key: r'B',
    opt: true,
    arg: _arg$b,
  );
  static List<RotationReward> _$c(Rotations v) => v.c;
  static dynamic _arg$c<T extends RotationReward>(f) => f<List<T>>();
  static const Field<Rotations, List<RotationReward>> _f$c = Field(
    'c',
    _$c,
    key: r'C',
    opt: true,
    arg: _arg$c,
  );

  @override
  final MappableFields<Rotations> fields = const {#a: _f$a, #b: _f$b, #c: _f$c};
  @override
  final bool ignoreNull = true;

  static Rotations<T> _instantiate<T extends RotationReward>(
    DecodingData data,
  ) {
    return Rotations(data.dec(_f$a), data.dec(_f$b), data.dec(_f$c));
  }

  @override
  final Function instantiate = _instantiate;

  static Rotations<T> fromMap<T extends RotationReward>(
    Map<String, dynamic> map,
  ) {
    return ensureInitialized().decodeMap<Rotations<T>>(map);
  }

  static Rotations<T> fromJson<T extends RotationReward>(String json) {
    return ensureInitialized().decodeJson<Rotations<T>>(json);
  }
}

mixin RotationsMappable<T extends RotationReward> {
  String toJson() {
    return RotationsMapper.ensureInitialized().encodeJson<Rotations<T>>(
      this as Rotations<T>,
    );
  }

  Map<String, dynamic> toMap() {
    return RotationsMapper.ensureInitialized().encodeMap<Rotations<T>>(
      this as Rotations<T>,
    );
  }

  RotationsCopyWith<Rotations<T>, Rotations<T>, Rotations<T>, T> get copyWith =>
      _RotationsCopyWithImpl<Rotations<T>, Rotations<T>, T>(
        this as Rotations<T>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RotationsMapper.ensureInitialized().stringifyValue(
      this as Rotations<T>,
    );
  }

  @override
  bool operator ==(Object other) {
    return RotationsMapper.ensureInitialized().equalsValue(
      this as Rotations<T>,
      other,
    );
  }

  @override
  int get hashCode {
    return RotationsMapper.ensureInitialized().hashValue(this as Rotations<T>);
  }
}

extension RotationsValueCopy<$R, $Out, T extends RotationReward>
    on ObjectCopyWith<$R, Rotations<T>, $Out> {
  RotationsCopyWith<$R, Rotations<T>, $Out, T> get $asRotations =>
      $base.as((v, t, t2) => _RotationsCopyWithImpl<$R, $Out, T>(v, t, t2));
}

abstract class RotationsCopyWith<
  $R,
  $In extends Rotations<T>,
  $Out,
  T extends RotationReward
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get a;
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get b;
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get c;
  $R call({List<T>? a, List<T>? b, List<T>? c});
  RotationsCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RotationsCopyWithImpl<$R, $Out, T extends RotationReward>
    extends ClassCopyWithBase<$R, Rotations<T>, $Out>
    implements RotationsCopyWith<$R, Rotations<T>, $Out, T> {
  _RotationsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Rotations> $mapper =
      RotationsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get a => ListCopyWith(
    $value.a,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(a: v),
  );
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get b => ListCopyWith(
    $value.b,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(b: v),
  );
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get c => ListCopyWith(
    $value.c,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(c: v),
  );
  @override
  $R call({Object? a = $none, Object? b = $none, Object? c = $none}) => $apply(
    FieldCopyWithData({
      if (a != $none) #a: a,
      if (b != $none) #b: b,
      if (c != $none) #c: c,
    }),
  );
  @override
  Rotations<T> $make(CopyWithData data) => Rotations(
    data.get(#a, or: $value.a),
    data.get(#b, or: $value.b),
    data.get(#c, or: $value.c),
  );

  @override
  RotationsCopyWith<$R2, Rotations<T>, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RotationsCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

class RotationRewardMapper extends ClassMapperBase<RotationReward> {
  RotationRewardMapper._();

  static RotationRewardMapper? _instance;
  static RotationRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RotationRewardMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RotationReward';

  static String _$id(RotationReward v) => v.id;
  static const Field<RotationReward, String> _f$id = Field('id', _$id);
  static String _$name(RotationReward v) => v.name;
  static const Field<RotationReward, String> _f$name = Field('name', _$name);
  static String? _$rarity(RotationReward v) => v.rarity;
  static const Field<RotationReward, String> _f$rarity = Field(
    'rarity',
    _$rarity,
  );
  static double? _$chance(RotationReward v) => v.chance;
  static const Field<RotationReward, double> _f$chance = Field(
    'chance',
    _$chance,
  );

  @override
  final MappableFields<RotationReward> fields = const {
    #id: _f$id,
    #name: _f$name,
    #rarity: _f$rarity,
    #chance: _f$chance,
  };
  @override
  final bool ignoreNull = true;

  static RotationReward _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('RotationReward');
  }

  @override
  final Function instantiate = _instantiate;

  static RotationReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RotationReward>(map);
  }

  static RotationReward fromJson(String json) {
    return ensureInitialized().decodeJson<RotationReward>(json);
  }
}

mixin RotationRewardMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RotationRewardCopyWith<RotationReward, RotationReward, RotationReward>
  get copyWith;
}

abstract class RotationRewardCopyWith<$R, $In extends RotationReward, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, String? rarity, double? chance});
  RotationRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

