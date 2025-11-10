// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'color_map.dart';

class RawColorMapMapper extends RecordMapperBase<RawColorMap> {
  static RawColorMapMapper? _instance;
  RawColorMapMapper._();

  static RawColorMapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawColorMapMapper._());
      MapperBase.addType(
        <A, B, C, D, E, F, G, H>(f) =>
            f<({A e1, B en, C m0, D m1, E t0, F t1, G t2, H t3})>(),
      );
    }
    return _instance!;
  }

  static int _$t0(RawColorMap v) => v.t0;
  static const Field<RawColorMap, int> _f$t0 = Field('t0', _$t0);
  static int _$t1(RawColorMap v) => v.t1;
  static const Field<RawColorMap, int> _f$t1 = Field('t1', _$t1);
  static int _$t2(RawColorMap v) => v.t2;
  static const Field<RawColorMap, int> _f$t2 = Field('t2', _$t2);
  static int _$t3(RawColorMap v) => v.t3;
  static const Field<RawColorMap, int> _f$t3 = Field('t3', _$t3);
  static int _$m0(RawColorMap v) => v.m0;
  static const Field<RawColorMap, int> _f$m0 = Field('m0', _$m0);
  static int _$m1(RawColorMap v) => v.m1;
  static const Field<RawColorMap, int> _f$m1 = Field('m1', _$m1);
  static int _$en(RawColorMap v) => v.en;
  static const Field<RawColorMap, int> _f$en = Field('en', _$en);
  static int _$e1(RawColorMap v) => v.e1;
  static const Field<RawColorMap, int> _f$e1 = Field('e1', _$e1);

  @override
  final MappableFields<RawColorMap> fields = const {
    #t0: _f$t0,
    #t1: _f$t1,
    #t2: _f$t2,
    #t3: _f$t3,
    #m0: _f$m0,
    #m1: _f$m1,
    #en: _f$en,
    #e1: _f$e1,
  };

  @override
  Function get typeFactory =>
      (f) => f<RawColorMap>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static RawColorMap _instantiate(DecodingData<RawColorMap> data) {
    return (
      t0: data.dec(_f$t0),
      t1: data.dec(_f$t1),
      t2: data.dec(_f$t2),
      t3: data.dec(_f$t3),
      m0: data.dec(_f$m0),
      m1: data.dec(_f$m1),
      en: data.dec(_f$en),
      e1: data.dec(_f$e1),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawColorMap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawColorMap>(map);
  }

  static RawColorMap fromJson(String json) {
    return ensureInitialized().decodeJson<RawColorMap>(json);
  }
}

extension RawColorMapMappable on RawColorMap {
  Map<String, dynamic> toMap() {
    return RawColorMapMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return RawColorMapMapper.ensureInitialized().encodeJson(this);
  }

  RawColorMapCopyWith<RawColorMap> get copyWith =>
      _RawColorMapCopyWithImpl(this, $identity, $identity);
}

extension RawColorMapValueCopy<$R>
    on ObjectCopyWith<$R, RawColorMap, RawColorMap> {
  RawColorMapCopyWith<$R> get $asRawColorMap =>
      $base.as((v, t, t2) => _RawColorMapCopyWithImpl(v, t, t2));
}

abstract class RawColorMapCopyWith<$R>
    implements RecordCopyWith<$R, RawColorMap> {
  $R call({
    int? t0,
    int? t1,
    int? t2,
    int? t3,
    int? m0,
    int? m1,
    int? en,
    int? e1,
  });
  RawColorMapCopyWith<$R2> $chain<$R2>(Then<RawColorMap, $R2> t);
}

class _RawColorMapCopyWithImpl<$R> extends RecordCopyWithBase<$R, RawColorMap>
    implements RawColorMapCopyWith<$R> {
  _RawColorMapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<RawColorMap> $mapper =
      RawColorMapMapper.ensureInitialized();
  @override
  $R call({
    int? t0,
    int? t1,
    int? t2,
    int? t3,
    int? m0,
    int? m1,
    int? en,
    int? e1,
  }) => $apply(
    FieldCopyWithData({
      if (t0 != null) #t0: t0,
      if (t1 != null) #t1: t1,
      if (t2 != null) #t2: t2,
      if (t3 != null) #t3: t3,
      if (m0 != null) #m0: m0,
      if (m1 != null) #m1: m1,
      if (en != null) #en: en,
      if (e1 != null) #e1: e1,
    }),
  );
  @override
  RawColorMap $make(CopyWithData data) => (
    t0: data.get(#t0, or: $value.t0),
    t1: data.get(#t1, or: $value.t1),
    t2: data.get(#t2, or: $value.t2),
    t3: data.get(#t3, or: $value.t3),
    m0: data.get(#m0, or: $value.m0),
    m1: data.get(#m1, or: $value.m1),
    en: data.get(#en, or: $value.en),
    e1: data.get(#e1, or: $value.e1),
  );

  @override
  RawColorMapCopyWith<$R2> $chain<$R2>(Then<RawColorMap, $R2> t) =>
      _RawColorMapCopyWithImpl($value, $cast, t);
}

class ColorMapMapper extends RecordMapperBase<ColorMap> {
  static ColorMapMapper? _instance;
  ColorMapMapper._();

  static ColorMapMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorMapMapper._());
      MapperBase.addType(
        <A, B, C, D, E, F>(f) =>
            f<
              ({
                A accents,
                B emissive,
                C energy,
                D primary,
                E secondary,
                F tertiary,
              })
            >(),
      );
    }
    return _instance!;
  }

  static int _$primary(ColorMap v) => v.primary;
  static const Field<ColorMap, int> _f$primary = Field('primary', _$primary);
  static int _$secondary(ColorMap v) => v.secondary;
  static const Field<ColorMap, int> _f$secondary = Field(
    'secondary',
    _$secondary,
  );
  static int _$tertiary(ColorMap v) => v.tertiary;
  static const Field<ColorMap, int> _f$tertiary = Field('tertiary', _$tertiary);
  static int _$accents(ColorMap v) => v.accents;
  static const Field<ColorMap, int> _f$accents = Field('accents', _$accents);
  static List<int> _$emissive(ColorMap v) => v.emissive;
  static const Field<ColorMap, List<int>> _f$emissive = Field(
    'emissive',
    _$emissive,
  );
  static List<int> _$energy(ColorMap v) => v.energy;
  static const Field<ColorMap, List<int>> _f$energy = Field('energy', _$energy);

  @override
  final MappableFields<ColorMap> fields = const {
    #primary: _f$primary,
    #secondary: _f$secondary,
    #tertiary: _f$tertiary,
    #accents: _f$accents,
    #emissive: _f$emissive,
    #energy: _f$energy,
  };

  @override
  Function get typeFactory =>
      (f) => f<ColorMap>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static ColorMap _instantiate(DecodingData<ColorMap> data) {
    return (
      primary: data.dec(_f$primary),
      secondary: data.dec(_f$secondary),
      tertiary: data.dec(_f$tertiary),
      accents: data.dec(_f$accents),
      emissive: data.dec(_f$emissive),
      energy: data.dec(_f$energy),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ColorMap fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ColorMap>(map);
  }

  static ColorMap fromJson(String json) {
    return ensureInitialized().decodeJson<ColorMap>(json);
  }
}

extension ColorMapMappable on ColorMap {
  Map<String, dynamic> toMap() {
    return ColorMapMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return ColorMapMapper.ensureInitialized().encodeJson(this);
  }

  ColorMapCopyWith<ColorMap> get copyWith =>
      _ColorMapCopyWithImpl(this, $identity, $identity);
}

extension ColorMapValueCopy<$R> on ObjectCopyWith<$R, ColorMap, ColorMap> {
  ColorMapCopyWith<$R> get $asColorMap =>
      $base.as((v, t, t2) => _ColorMapCopyWithImpl(v, t, t2));
}

abstract class ColorMapCopyWith<$R> implements RecordCopyWith<$R, ColorMap> {
  $R call({
    int? primary,
    int? secondary,
    int? tertiary,
    int? accents,
    List<int>? emissive,
    List<int>? energy,
  });
  ColorMapCopyWith<$R2> $chain<$R2>(Then<ColorMap, $R2> t);
}

class _ColorMapCopyWithImpl<$R> extends RecordCopyWithBase<$R, ColorMap>
    implements ColorMapCopyWith<$R> {
  _ColorMapCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<ColorMap> $mapper =
      ColorMapMapper.ensureInitialized();
  @override
  $R call({
    int? primary,
    int? secondary,
    int? tertiary,
    int? accents,
    List<int>? emissive,
    List<int>? energy,
  }) => $apply(
    FieldCopyWithData({
      if (primary != null) #primary: primary,
      if (secondary != null) #secondary: secondary,
      if (tertiary != null) #tertiary: tertiary,
      if (accents != null) #accents: accents,
      if (emissive != null) #emissive: emissive,
      if (energy != null) #energy: energy,
    }),
  );
  @override
  ColorMap $make(CopyWithData data) => (
    primary: data.get(#primary, or: $value.primary),
    secondary: data.get(#secondary, or: $value.secondary),
    tertiary: data.get(#tertiary, or: $value.tertiary),
    accents: data.get(#accents, or: $value.accents),
    emissive: data.get(#emissive, or: $value.emissive),
    energy: data.get(#energy, or: $value.energy),
  );

  @override
  ColorMapCopyWith<$R2> $chain<$R2>(Then<ColorMap, $R2> t) =>
      _ColorMapCopyWithImpl($value, $cast, t);
}

