// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'loadout_preset.dart';

class RawSlotPresetMapper extends ClassMapperBase<RawSlotPreset> {
  RawSlotPresetMapper._();

  static RawSlotPresetMapper? _instance;
  static RawSlotPresetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawSlotPresetMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawSlotPreset';

  static Map<String, dynamic> _$itemId(RawSlotPreset v) => v.itemId;
  static const Field<RawSlotPreset, Map<String, dynamic>> _f$itemId = Field(
    'itemId',
    _$itemId,
    key: r'ItemId',
  );
  static int _$mod(RawSlotPreset v) => v.mod;
  static const Field<RawSlotPreset, int> _f$mod = Field('mod', _$mod);
  static int _$cus(RawSlotPreset v) => v.cus;
  static const Field<RawSlotPreset, int> _f$cus = Field('cus', _$cus);
  static bool? _$hide(RawSlotPreset v) => v.hide;
  static const Field<RawSlotPreset, bool> _f$hide = Field('hide', _$hide);

  @override
  final MappableFields<RawSlotPreset> fields = const {
    #itemId: _f$itemId,
    #mod: _f$mod,
    #cus: _f$cus,
    #hide: _f$hide,
  };
  @override
  final bool ignoreNull = true;

  static RawSlotPreset _instantiate(DecodingData data) {
    return RawSlotPreset(
      itemId: data.dec(_f$itemId),
      mod: data.dec(_f$mod),
      cus: data.dec(_f$cus),
      hide: data.dec(_f$hide),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawSlotPreset fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawSlotPreset>(map);
  }

  static RawSlotPreset fromJson(String json) {
    return ensureInitialized().decodeJson<RawSlotPreset>(json);
  }
}

mixin RawSlotPresetMappable {
  String toJson() {
    return RawSlotPresetMapper.ensureInitialized().encodeJson<RawSlotPreset>(
      this as RawSlotPreset,
    );
  }

  Map<String, dynamic> toMap() {
    return RawSlotPresetMapper.ensureInitialized().encodeMap<RawSlotPreset>(
      this as RawSlotPreset,
    );
  }

  RawSlotPresetCopyWith<RawSlotPreset, RawSlotPreset, RawSlotPreset>
  get copyWith => _RawSlotPresetCopyWithImpl<RawSlotPreset, RawSlotPreset>(
    this as RawSlotPreset,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawSlotPresetMapper.ensureInitialized().stringifyValue(
      this as RawSlotPreset,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawSlotPresetMapper.ensureInitialized().equalsValue(
      this as RawSlotPreset,
      other,
    );
  }

  @override
  int get hashCode {
    return RawSlotPresetMapper.ensureInitialized().hashValue(
      this as RawSlotPreset,
    );
  }
}

extension RawSlotPresetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawSlotPreset, $Out> {
  RawSlotPresetCopyWith<$R, RawSlotPreset, $Out> get $asRawSlotPreset =>
      $base.as((v, t, t2) => _RawSlotPresetCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawSlotPresetCopyWith<$R, $In extends RawSlotPreset, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get itemId;
  $R call({Map<String, dynamic>? itemId, int? mod, int? cus, bool? hide});
  RawSlotPresetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawSlotPresetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawSlotPreset, $Out>
    implements RawSlotPresetCopyWith<$R, RawSlotPreset, $Out> {
  _RawSlotPresetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawSlotPreset> $mapper =
      RawSlotPresetMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get itemId => MapCopyWith(
    $value.itemId,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(itemId: v),
  );
  @override
  $R call({
    Map<String, dynamic>? itemId,
    int? mod,
    int? cus,
    Object? hide = $none,
  }) => $apply(
    FieldCopyWithData({
      if (itemId != null) #itemId: itemId,
      if (mod != null) #mod: mod,
      if (cus != null) #cus: cus,
      if (hide != $none) #hide: hide,
    }),
  );
  @override
  RawSlotPreset $make(CopyWithData data) => RawSlotPreset(
    itemId: data.get(#itemId, or: $value.itemId),
    mod: data.get(#mod, or: $value.mod),
    cus: data.get(#cus, or: $value.cus),
    hide: data.get(#hide, or: $value.hide),
  );

  @override
  RawSlotPresetCopyWith<$R2, RawSlotPreset, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawSlotPresetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawLoadoutPresetMapper extends ClassMapperBase<RawLoadoutPreset> {
  RawLoadoutPresetMapper._();

  static RawLoadoutPresetMapper? _instance;
  static RawLoadoutPresetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawLoadoutPresetMapper._());
      RawSlotPresetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawLoadoutPreset';

  static String _$focusSchool(RawLoadoutPreset v) => v.focusSchool;
  static const Field<RawLoadoutPreset, String> _f$focusSchool = Field(
    'focusSchool',
    _$focusSchool,
    key: r'FocusSchool',
  );
  static String _$presetIcon(RawLoadoutPreset v) => v.presetIcon;
  static const Field<RawLoadoutPreset, String> _f$presetIcon = Field(
    'presetIcon',
    _$presetIcon,
    key: r'PresetIcon',
  );
  static bool _$favorite(RawLoadoutPreset v) => v.favorite;
  static const Field<RawLoadoutPreset, bool> _f$favorite = Field(
    'favorite',
    _$favorite,
    key: r'Favorite',
  );
  static String _$n(RawLoadoutPreset v) => v.n;
  static const Field<RawLoadoutPreset, String> _f$n = Field('n', _$n);
  static RawSlotPreset _$s(RawLoadoutPreset v) => v.s;
  static const Field<RawLoadoutPreset, RawSlotPreset> _f$s = Field('s', _$s);
  static RawSlotPreset? _$l(RawLoadoutPreset v) => v.l;
  static const Field<RawLoadoutPreset, RawSlotPreset> _f$l = Field('l', _$l);
  static RawSlotPreset? _$p(RawLoadoutPreset v) => v.p;
  static const Field<RawLoadoutPreset, RawSlotPreset> _f$p = Field('p', _$p);
  static RawSlotPreset? _$h(RawLoadoutPreset v) => v.h;
  static const Field<RawLoadoutPreset, RawSlotPreset> _f$h = Field('h', _$h);
  static RawSlotPreset? _$m(RawLoadoutPreset v) => v.m;
  static const Field<RawLoadoutPreset, RawSlotPreset> _f$m = Field('m', _$m);
  static RawSlotPreset? _$a(RawLoadoutPreset v) => v.a;
  static const Field<RawLoadoutPreset, RawSlotPreset> _f$a = Field('a', _$a);
  static RawSlotPreset? _$b(RawLoadoutPreset v) => v.b;
  static const Field<RawLoadoutPreset, RawSlotPreset> _f$b = Field('b', _$b);

  @override
  final MappableFields<RawLoadoutPreset> fields = const {
    #focusSchool: _f$focusSchool,
    #presetIcon: _f$presetIcon,
    #favorite: _f$favorite,
    #n: _f$n,
    #s: _f$s,
    #l: _f$l,
    #p: _f$p,
    #h: _f$h,
    #m: _f$m,
    #a: _f$a,
    #b: _f$b,
  };
  @override
  final bool ignoreNull = true;

  static RawLoadoutPreset _instantiate(DecodingData data) {
    return RawLoadoutPreset(
      focusSchool: data.dec(_f$focusSchool),
      presetIcon: data.dec(_f$presetIcon),
      favorite: data.dec(_f$favorite),
      n: data.dec(_f$n),
      s: data.dec(_f$s),
      l: data.dec(_f$l),
      p: data.dec(_f$p),
      h: data.dec(_f$h),
      m: data.dec(_f$m),
      a: data.dec(_f$a),
      b: data.dec(_f$b),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawLoadoutPreset fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawLoadoutPreset>(map);
  }

  static RawLoadoutPreset fromJson(String json) {
    return ensureInitialized().decodeJson<RawLoadoutPreset>(json);
  }
}

mixin RawLoadoutPresetMappable {
  String toJson() {
    return RawLoadoutPresetMapper.ensureInitialized()
        .encodeJson<RawLoadoutPreset>(this as RawLoadoutPreset);
  }

  Map<String, dynamic> toMap() {
    return RawLoadoutPresetMapper.ensureInitialized()
        .encodeMap<RawLoadoutPreset>(this as RawLoadoutPreset);
  }

  RawLoadoutPresetCopyWith<RawLoadoutPreset, RawLoadoutPreset, RawLoadoutPreset>
  get copyWith =>
      _RawLoadoutPresetCopyWithImpl<RawLoadoutPreset, RawLoadoutPreset>(
        this as RawLoadoutPreset,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawLoadoutPresetMapper.ensureInitialized().stringifyValue(
      this as RawLoadoutPreset,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawLoadoutPresetMapper.ensureInitialized().equalsValue(
      this as RawLoadoutPreset,
      other,
    );
  }

  @override
  int get hashCode {
    return RawLoadoutPresetMapper.ensureInitialized().hashValue(
      this as RawLoadoutPreset,
    );
  }
}

extension RawLoadoutPresetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawLoadoutPreset, $Out> {
  RawLoadoutPresetCopyWith<$R, RawLoadoutPreset, $Out>
  get $asRawLoadoutPreset =>
      $base.as((v, t, t2) => _RawLoadoutPresetCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawLoadoutPresetCopyWith<$R, $In extends RawLoadoutPreset, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset> get s;
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get l;
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get p;
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get h;
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get m;
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get a;
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get b;
  $R call({
    String? focusSchool,
    String? presetIcon,
    bool? favorite,
    String? n,
    RawSlotPreset? s,
    RawSlotPreset? l,
    RawSlotPreset? p,
    RawSlotPreset? h,
    RawSlotPreset? m,
    RawSlotPreset? a,
    RawSlotPreset? b,
  });
  RawLoadoutPresetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawLoadoutPresetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawLoadoutPreset, $Out>
    implements RawLoadoutPresetCopyWith<$R, RawLoadoutPreset, $Out> {
  _RawLoadoutPresetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawLoadoutPreset> $mapper =
      RawLoadoutPresetMapper.ensureInitialized();
  @override
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset> get s =>
      $value.s.copyWith.$chain((v) => call(s: v));
  @override
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get l =>
      $value.l?.copyWith.$chain((v) => call(l: v));
  @override
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get p =>
      $value.p?.copyWith.$chain((v) => call(p: v));
  @override
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get h =>
      $value.h?.copyWith.$chain((v) => call(h: v));
  @override
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get m =>
      $value.m?.copyWith.$chain((v) => call(m: v));
  @override
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get a =>
      $value.a?.copyWith.$chain((v) => call(a: v));
  @override
  RawSlotPresetCopyWith<$R, RawSlotPreset, RawSlotPreset>? get b =>
      $value.b?.copyWith.$chain((v) => call(b: v));
  @override
  $R call({
    String? focusSchool,
    String? presetIcon,
    bool? favorite,
    String? n,
    RawSlotPreset? s,
    Object? l = $none,
    Object? p = $none,
    Object? h = $none,
    Object? m = $none,
    Object? a = $none,
    Object? b = $none,
  }) => $apply(
    FieldCopyWithData({
      if (focusSchool != null) #focusSchool: focusSchool,
      if (presetIcon != null) #presetIcon: presetIcon,
      if (favorite != null) #favorite: favorite,
      if (n != null) #n: n,
      if (s != null) #s: s,
      if (l != $none) #l: l,
      if (p != $none) #p: p,
      if (h != $none) #h: h,
      if (m != $none) #m: m,
      if (a != $none) #a: a,
      if (b != $none) #b: b,
    }),
  );
  @override
  RawLoadoutPreset $make(CopyWithData data) => RawLoadoutPreset(
    focusSchool: data.get(#focusSchool, or: $value.focusSchool),
    presetIcon: data.get(#presetIcon, or: $value.presetIcon),
    favorite: data.get(#favorite, or: $value.favorite),
    n: data.get(#n, or: $value.n),
    s: data.get(#s, or: $value.s),
    l: data.get(#l, or: $value.l),
    p: data.get(#p, or: $value.p),
    h: data.get(#h, or: $value.h),
    m: data.get(#m, or: $value.m),
    a: data.get(#a, or: $value.a),
    b: data.get(#b, or: $value.b),
  );

  @override
  RawLoadoutPresetCopyWith<$R2, RawLoadoutPreset, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawLoadoutPresetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SlotPresetMapper extends ClassMapperBase<SlotPreset> {
  SlotPresetMapper._();

  static SlotPresetMapper? _instance;
  static SlotPresetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SlotPresetMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SlotPreset';

  static String _$id(SlotPreset v) => v.id;
  static const Field<SlotPreset, String> _f$id = Field('id', _$id);
  static String _$modPreset(SlotPreset v) => v.modPreset;
  static const Field<SlotPreset, String> _f$modPreset = Field(
    'modPreset',
    _$modPreset,
  );
  static String _$appearancePreset(SlotPreset v) => v.appearancePreset;
  static const Field<SlotPreset, String> _f$appearancePreset = Field(
    'appearancePreset',
    _$appearancePreset,
  );
  static bool _$isHidden(SlotPreset v) => v.isHidden;
  static const Field<SlotPreset, bool> _f$isHidden = Field(
    'isHidden',
    _$isHidden,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<SlotPreset> fields = const {
    #id: _f$id,
    #modPreset: _f$modPreset,
    #appearancePreset: _f$appearancePreset,
    #isHidden: _f$isHidden,
  };
  @override
  final bool ignoreNull = true;

  static SlotPreset _instantiate(DecodingData data) {
    return SlotPreset(
      id: data.dec(_f$id),
      modPreset: data.dec(_f$modPreset),
      appearancePreset: data.dec(_f$appearancePreset),
      isHidden: data.dec(_f$isHidden),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SlotPreset fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SlotPreset>(map);
  }

  static SlotPreset fromJson(String json) {
    return ensureInitialized().decodeJson<SlotPreset>(json);
  }
}

mixin SlotPresetMappable {
  String toJson() {
    return SlotPresetMapper.ensureInitialized().encodeJson<SlotPreset>(
      this as SlotPreset,
    );
  }

  Map<String, dynamic> toMap() {
    return SlotPresetMapper.ensureInitialized().encodeMap<SlotPreset>(
      this as SlotPreset,
    );
  }

  SlotPresetCopyWith<SlotPreset, SlotPreset, SlotPreset> get copyWith =>
      _SlotPresetCopyWithImpl<SlotPreset, SlotPreset>(
        this as SlotPreset,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SlotPresetMapper.ensureInitialized().stringifyValue(
      this as SlotPreset,
    );
  }

  @override
  bool operator ==(Object other) {
    return SlotPresetMapper.ensureInitialized().equalsValue(
      this as SlotPreset,
      other,
    );
  }

  @override
  int get hashCode {
    return SlotPresetMapper.ensureInitialized().hashValue(this as SlotPreset);
  }
}

extension SlotPresetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SlotPreset, $Out> {
  SlotPresetCopyWith<$R, SlotPreset, $Out> get $asSlotPreset =>
      $base.as((v, t, t2) => _SlotPresetCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SlotPresetCopyWith<$R, $In extends SlotPreset, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? modPreset,
    String? appearancePreset,
    bool? isHidden,
  });
  SlotPresetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SlotPresetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SlotPreset, $Out>
    implements SlotPresetCopyWith<$R, SlotPreset, $Out> {
  _SlotPresetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SlotPreset> $mapper =
      SlotPresetMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? modPreset,
    String? appearancePreset,
    bool? isHidden,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (modPreset != null) #modPreset: modPreset,
      if (appearancePreset != null) #appearancePreset: appearancePreset,
      if (isHidden != null) #isHidden: isHidden,
    }),
  );
  @override
  SlotPreset $make(CopyWithData data) => SlotPreset(
    id: data.get(#id, or: $value.id),
    modPreset: data.get(#modPreset, or: $value.modPreset),
    appearancePreset: data.get(#appearancePreset, or: $value.appearancePreset),
    isHidden: data.get(#isHidden, or: $value.isHidden),
  );

  @override
  SlotPresetCopyWith<$R2, SlotPreset, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SlotPresetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LoadoutPresetMapper extends ClassMapperBase<LoadoutPreset> {
  LoadoutPresetMapper._();

  static LoadoutPresetMapper? _instance;
  static LoadoutPresetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoadoutPresetMapper._());
      SlotPresetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LoadoutPreset';

  static String _$focusSchool(LoadoutPreset v) => v.focusSchool;
  static const Field<LoadoutPreset, String> _f$focusSchool = Field(
    'focusSchool',
    _$focusSchool,
  );
  static String _$icon(LoadoutPreset v) => v.icon;
  static const Field<LoadoutPreset, String> _f$icon = Field('icon', _$icon);
  static String _$name(LoadoutPreset v) => v.name;
  static const Field<LoadoutPreset, String> _f$name = Field('name', _$name);
  static SlotPreset _$warframe(LoadoutPreset v) => v.warframe;
  static const Field<LoadoutPreset, SlotPreset> _f$warframe = Field(
    'warframe',
    _$warframe,
  );
  static SlotPreset? _$primary(LoadoutPreset v) => v.primary;
  static const Field<LoadoutPreset, SlotPreset> _f$primary = Field(
    'primary',
    _$primary,
  );
  static SlotPreset? _$secondary(LoadoutPreset v) => v.secondary;
  static const Field<LoadoutPreset, SlotPreset> _f$secondary = Field(
    'secondary',
    _$secondary,
  );
  static SlotPreset? _$heavy(LoadoutPreset v) => v.heavy;
  static const Field<LoadoutPreset, SlotPreset> _f$heavy = Field(
    'heavy',
    _$heavy,
  );
  static SlotPreset? _$melee(LoadoutPreset v) => v.melee;
  static const Field<LoadoutPreset, SlotPreset> _f$melee = Field(
    'melee',
    _$melee,
  );
  static SlotPreset? _$exaltedA(LoadoutPreset v) => v.exaltedA;
  static const Field<LoadoutPreset, SlotPreset> _f$exaltedA = Field(
    'exaltedA',
    _$exaltedA,
  );
  static SlotPreset? _$exaltedB(LoadoutPreset v) => v.exaltedB;
  static const Field<LoadoutPreset, SlotPreset> _f$exaltedB = Field(
    'exaltedB',
    _$exaltedB,
  );
  static bool _$isFavorite(LoadoutPreset v) => v.isFavorite;
  static const Field<LoadoutPreset, bool> _f$isFavorite = Field(
    'isFavorite',
    _$isFavorite,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<LoadoutPreset> fields = const {
    #focusSchool: _f$focusSchool,
    #icon: _f$icon,
    #name: _f$name,
    #warframe: _f$warframe,
    #primary: _f$primary,
    #secondary: _f$secondary,
    #heavy: _f$heavy,
    #melee: _f$melee,
    #exaltedA: _f$exaltedA,
    #exaltedB: _f$exaltedB,
    #isFavorite: _f$isFavorite,
  };
  @override
  final bool ignoreNull = true;

  static LoadoutPreset _instantiate(DecodingData data) {
    return LoadoutPreset(
      focusSchool: data.dec(_f$focusSchool),
      icon: data.dec(_f$icon),
      name: data.dec(_f$name),
      warframe: data.dec(_f$warframe),
      primary: data.dec(_f$primary),
      secondary: data.dec(_f$secondary),
      heavy: data.dec(_f$heavy),
      melee: data.dec(_f$melee),
      exaltedA: data.dec(_f$exaltedA),
      exaltedB: data.dec(_f$exaltedB),
      isFavorite: data.dec(_f$isFavorite),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LoadoutPreset fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoadoutPreset>(map);
  }

  static LoadoutPreset fromJson(String json) {
    return ensureInitialized().decodeJson<LoadoutPreset>(json);
  }
}

mixin LoadoutPresetMappable {
  String toJson() {
    return LoadoutPresetMapper.ensureInitialized().encodeJson<LoadoutPreset>(
      this as LoadoutPreset,
    );
  }

  Map<String, dynamic> toMap() {
    return LoadoutPresetMapper.ensureInitialized().encodeMap<LoadoutPreset>(
      this as LoadoutPreset,
    );
  }

  LoadoutPresetCopyWith<LoadoutPreset, LoadoutPreset, LoadoutPreset>
  get copyWith => _LoadoutPresetCopyWithImpl<LoadoutPreset, LoadoutPreset>(
    this as LoadoutPreset,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return LoadoutPresetMapper.ensureInitialized().stringifyValue(
      this as LoadoutPreset,
    );
  }

  @override
  bool operator ==(Object other) {
    return LoadoutPresetMapper.ensureInitialized().equalsValue(
      this as LoadoutPreset,
      other,
    );
  }

  @override
  int get hashCode {
    return LoadoutPresetMapper.ensureInitialized().hashValue(
      this as LoadoutPreset,
    );
  }
}

extension LoadoutPresetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoadoutPreset, $Out> {
  LoadoutPresetCopyWith<$R, LoadoutPreset, $Out> get $asLoadoutPreset =>
      $base.as((v, t, t2) => _LoadoutPresetCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LoadoutPresetCopyWith<$R, $In extends LoadoutPreset, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset> get warframe;
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get primary;
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get secondary;
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get heavy;
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get melee;
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get exaltedA;
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get exaltedB;
  $R call({
    String? focusSchool,
    String? icon,
    String? name,
    SlotPreset? warframe,
    SlotPreset? primary,
    SlotPreset? secondary,
    SlotPreset? heavy,
    SlotPreset? melee,
    SlotPreset? exaltedA,
    SlotPreset? exaltedB,
    bool? isFavorite,
  });
  LoadoutPresetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoadoutPresetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoadoutPreset, $Out>
    implements LoadoutPresetCopyWith<$R, LoadoutPreset, $Out> {
  _LoadoutPresetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoadoutPreset> $mapper =
      LoadoutPresetMapper.ensureInitialized();
  @override
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset> get warframe =>
      $value.warframe.copyWith.$chain((v) => call(warframe: v));
  @override
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get primary =>
      $value.primary?.copyWith.$chain((v) => call(primary: v));
  @override
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get secondary =>
      $value.secondary?.copyWith.$chain((v) => call(secondary: v));
  @override
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get heavy =>
      $value.heavy?.copyWith.$chain((v) => call(heavy: v));
  @override
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get melee =>
      $value.melee?.copyWith.$chain((v) => call(melee: v));
  @override
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get exaltedA =>
      $value.exaltedA?.copyWith.$chain((v) => call(exaltedA: v));
  @override
  SlotPresetCopyWith<$R, SlotPreset, SlotPreset>? get exaltedB =>
      $value.exaltedB?.copyWith.$chain((v) => call(exaltedB: v));
  @override
  $R call({
    String? focusSchool,
    String? icon,
    String? name,
    SlotPreset? warframe,
    Object? primary = $none,
    Object? secondary = $none,
    Object? heavy = $none,
    Object? melee = $none,
    Object? exaltedA = $none,
    Object? exaltedB = $none,
    bool? isFavorite,
  }) => $apply(
    FieldCopyWithData({
      if (focusSchool != null) #focusSchool: focusSchool,
      if (icon != null) #icon: icon,
      if (name != null) #name: name,
      if (warframe != null) #warframe: warframe,
      if (primary != $none) #primary: primary,
      if (secondary != $none) #secondary: secondary,
      if (heavy != $none) #heavy: heavy,
      if (melee != $none) #melee: melee,
      if (exaltedA != $none) #exaltedA: exaltedA,
      if (exaltedB != $none) #exaltedB: exaltedB,
      if (isFavorite != null) #isFavorite: isFavorite,
    }),
  );
  @override
  LoadoutPreset $make(CopyWithData data) => LoadoutPreset(
    focusSchool: data.get(#focusSchool, or: $value.focusSchool),
    icon: data.get(#icon, or: $value.icon),
    name: data.get(#name, or: $value.name),
    warframe: data.get(#warframe, or: $value.warframe),
    primary: data.get(#primary, or: $value.primary),
    secondary: data.get(#secondary, or: $value.secondary),
    heavy: data.get(#heavy, or: $value.heavy),
    melee: data.get(#melee, or: $value.melee),
    exaltedA: data.get(#exaltedA, or: $value.exaltedA),
    exaltedB: data.get(#exaltedB, or: $value.exaltedB),
    isFavorite: data.get(#isFavorite, or: $value.isFavorite),
  );

  @override
  LoadoutPresetCopyWith<$R2, LoadoutPreset, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LoadoutPresetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

