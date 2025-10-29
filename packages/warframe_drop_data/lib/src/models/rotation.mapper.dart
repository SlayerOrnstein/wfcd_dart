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
      ItemDropMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Rotations';
  @override
  Function get typeFactory =>
      <T extends ItemDrop>(f) => f<Rotations<T>>();

  static List<ItemDrop> _$a(Rotations v) => v.a;
  static dynamic _arg$a<T extends ItemDrop>(f) => f<List<T>>();
  static const Field<Rotations, List<ItemDrop>> _f$a = Field(
    'a',
    _$a,
    key: r'A',
    opt: true,
    arg: _arg$a,
  );
  static List<ItemDrop> _$b(Rotations v) => v.b;
  static dynamic _arg$b<T extends ItemDrop>(f) => f<List<T>>();
  static const Field<Rotations, List<ItemDrop>> _f$b = Field(
    'b',
    _$b,
    key: r'B',
    opt: true,
    arg: _arg$b,
  );
  static List<ItemDrop> _$c(Rotations v) => v.c;
  static dynamic _arg$c<T extends ItemDrop>(f) => f<List<T>>();
  static const Field<Rotations, List<ItemDrop>> _f$c = Field(
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

  static Rotations<T> _instantiate<T extends ItemDrop>(DecodingData data) {
    return Rotations(data.dec(_f$a), data.dec(_f$b), data.dec(_f$c));
  }

  @override
  final Function instantiate = _instantiate;

  static Rotations<T> fromMap<T extends ItemDrop>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Rotations<T>>(map);
  }

  static Rotations<T> fromJson<T extends ItemDrop>(String json) {
    return ensureInitialized().decodeJson<Rotations<T>>(json);
  }
}

mixin RotationsMappable<T extends ItemDrop> {
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

extension RotationsValueCopy<$R, $Out, T extends ItemDrop>
    on ObjectCopyWith<$R, Rotations<T>, $Out> {
  RotationsCopyWith<$R, Rotations<T>, $Out, T> get $asRotations =>
      $base.as((v, t, t2) => _RotationsCopyWithImpl<$R, $Out, T>(v, t, t2));
}

abstract class RotationsCopyWith<
  $R,
  $In extends Rotations<T>,
  $Out,
  T extends ItemDrop
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, T, ItemDropCopyWith<$R, T, T>> get a;
  ListCopyWith<$R, T, ItemDropCopyWith<$R, T, T>> get b;
  ListCopyWith<$R, T, ItemDropCopyWith<$R, T, T>> get c;
  $R call({List<T>? a, List<T>? b, List<T>? c});
  RotationsCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RotationsCopyWithImpl<$R, $Out, T extends ItemDrop>
    extends ClassCopyWithBase<$R, Rotations<T>, $Out>
    implements RotationsCopyWith<$R, Rotations<T>, $Out, T> {
  _RotationsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Rotations> $mapper =
      RotationsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, T, ItemDropCopyWith<$R, T, T>> get a => ListCopyWith(
    $value.a,
    (v, t) => (v.copyWith as ItemDropCopyWith<ItemDrop, T, T>).$chain(t),
    (v) => call(a: v),
  );
  @override
  ListCopyWith<$R, T, ItemDropCopyWith<$R, T, T>> get b => ListCopyWith(
    $value.b,
    (v, t) => (v.copyWith as ItemDropCopyWith<ItemDrop, T, T>).$chain(t),
    (v) => call(b: v),
  );
  @override
  ListCopyWith<$R, T, ItemDropCopyWith<$R, T, T>> get c => ListCopyWith(
    $value.c,
    (v, t) => (v.copyWith as ItemDropCopyWith<ItemDrop, T, T>).$chain(t),
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

