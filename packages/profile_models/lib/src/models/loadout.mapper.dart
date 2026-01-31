// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'loadout.dart';

class RawLoadoutMapper extends ClassMapperBase<RawLoadout> {
  RawLoadoutMapper._();

  static RawLoadoutMapper? _instance;
  static RawLoadoutMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawLoadoutMapper._());
      RawLoadoutItemMapper.ensureInitialized();
      RawXpItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawLoadout';

  static List<Map<String, dynamic>>? _$skins(RawLoadout v) => v.skins;
  static const Field<RawLoadout, List<Map<String, dynamic>>> _f$skins = Field(
    'skins',
    _$skins,
    key: r'Skins',
  );
  static List<RawLoadoutItem> _$suits(RawLoadout v) => v.suits;
  static const Field<RawLoadout, List<RawLoadoutItem>> _f$suits = Field(
    'suits',
    _$suits,
    key: r'Suits',
  );
  static List<RawLoadoutItem>? _$pistols(RawLoadout v) => v.pistols;
  static const Field<RawLoadout, List<RawLoadoutItem>> _f$pistols = Field(
    'pistols',
    _$pistols,
    key: r'Pistols',
  );
  static List<RawLoadoutItem>? _$longGuns(RawLoadout v) => v.longGuns;
  static const Field<RawLoadout, List<RawLoadoutItem>> _f$longGuns = Field(
    'longGuns',
    _$longGuns,
    key: r'LongGuns',
  );
  static List<RawLoadoutItem>? _$melee(RawLoadout v) => v.melee;
  static const Field<RawLoadout, List<RawLoadoutItem>> _f$melee = Field(
    'melee',
    _$melee,
    key: r'Melee',
  );
  static List<RawXpItem> _$xpInfo(RawLoadout v) => v.xpInfo;
  static const Field<RawLoadout, List<RawXpItem>> _f$xpInfo = Field(
    'xpInfo',
    _$xpInfo,
    key: r'XPInfo',
  );

  @override
  final MappableFields<RawLoadout> fields = const {
    #skins: _f$skins,
    #suits: _f$suits,
    #pistols: _f$pistols,
    #longGuns: _f$longGuns,
    #melee: _f$melee,
    #xpInfo: _f$xpInfo,
  };
  @override
  final bool ignoreNull = true;

  static RawLoadout _instantiate(DecodingData data) {
    return RawLoadout(
      skins: data.dec(_f$skins),
      suits: data.dec(_f$suits),
      pistols: data.dec(_f$pistols),
      longGuns: data.dec(_f$longGuns),
      melee: data.dec(_f$melee),
      xpInfo: data.dec(_f$xpInfo),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawLoadout fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawLoadout>(map);
  }

  static RawLoadout fromJson(String json) {
    return ensureInitialized().decodeJson<RawLoadout>(json);
  }
}

mixin RawLoadoutMappable {
  String toJson() {
    return RawLoadoutMapper.ensureInitialized().encodeJson<RawLoadout>(
      this as RawLoadout,
    );
  }

  Map<String, dynamic> toMap() {
    return RawLoadoutMapper.ensureInitialized().encodeMap<RawLoadout>(
      this as RawLoadout,
    );
  }

  RawLoadoutCopyWith<RawLoadout, RawLoadout, RawLoadout> get copyWith =>
      _RawLoadoutCopyWithImpl<RawLoadout, RawLoadout>(
        this as RawLoadout,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawLoadoutMapper.ensureInitialized().stringifyValue(
      this as RawLoadout,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawLoadoutMapper.ensureInitialized().equalsValue(
      this as RawLoadout,
      other,
    );
  }

  @override
  int get hashCode {
    return RawLoadoutMapper.ensureInitialized().hashValue(this as RawLoadout);
  }
}

extension RawLoadoutValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawLoadout, $Out> {
  RawLoadoutCopyWith<$R, RawLoadout, $Out> get $asRawLoadout =>
      $base.as((v, t, t2) => _RawLoadoutCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawLoadoutCopyWith<$R, $In extends RawLoadout, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >?
  get skins;
  ListCopyWith<
    $R,
    RawLoadoutItem,
    RawLoadoutItemCopyWith<$R, RawLoadoutItem, RawLoadoutItem>
  >
  get suits;
  ListCopyWith<
    $R,
    RawLoadoutItem,
    RawLoadoutItemCopyWith<$R, RawLoadoutItem, RawLoadoutItem>
  >?
  get pistols;
  ListCopyWith<
    $R,
    RawLoadoutItem,
    RawLoadoutItemCopyWith<$R, RawLoadoutItem, RawLoadoutItem>
  >?
  get longGuns;
  ListCopyWith<
    $R,
    RawLoadoutItem,
    RawLoadoutItemCopyWith<$R, RawLoadoutItem, RawLoadoutItem>
  >?
  get melee;
  ListCopyWith<$R, RawXpItem, ObjectCopyWith<$R, RawXpItem, RawXpItem>>
  get xpInfo;
  $R call({
    List<Map<String, dynamic>>? skins,
    List<RawLoadoutItem>? suits,
    List<RawLoadoutItem>? pistols,
    List<RawLoadoutItem>? longGuns,
    List<RawLoadoutItem>? melee,
    List<RawXpItem>? xpInfo,
  });
  RawLoadoutCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawLoadoutCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawLoadout, $Out>
    implements RawLoadoutCopyWith<$R, RawLoadout, $Out> {
  _RawLoadoutCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawLoadout> $mapper =
      RawLoadoutMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >?
  get skins => $value.skins != null
      ? ListCopyWith(
          $value.skins!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(skins: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    RawLoadoutItem,
    RawLoadoutItemCopyWith<$R, RawLoadoutItem, RawLoadoutItem>
  >
  get suits => ListCopyWith(
    $value.suits,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(suits: v),
  );
  @override
  ListCopyWith<
    $R,
    RawLoadoutItem,
    RawLoadoutItemCopyWith<$R, RawLoadoutItem, RawLoadoutItem>
  >?
  get pistols => $value.pistols != null
      ? ListCopyWith(
          $value.pistols!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(pistols: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    RawLoadoutItem,
    RawLoadoutItemCopyWith<$R, RawLoadoutItem, RawLoadoutItem>
  >?
  get longGuns => $value.longGuns != null
      ? ListCopyWith(
          $value.longGuns!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(longGuns: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    RawLoadoutItem,
    RawLoadoutItemCopyWith<$R, RawLoadoutItem, RawLoadoutItem>
  >?
  get melee => $value.melee != null
      ? ListCopyWith(
          $value.melee!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(melee: v),
        )
      : null;
  @override
  ListCopyWith<$R, RawXpItem, ObjectCopyWith<$R, RawXpItem, RawXpItem>>
  get xpInfo => ListCopyWith(
    $value.xpInfo,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(xpInfo: v),
  );
  @override
  $R call({
    Object? skins = $none,
    List<RawLoadoutItem>? suits,
    Object? pistols = $none,
    Object? longGuns = $none,
    Object? melee = $none,
    List<RawXpItem>? xpInfo,
  }) => $apply(
    FieldCopyWithData({
      if (skins != $none) #skins: skins,
      if (suits != null) #suits: suits,
      if (pistols != $none) #pistols: pistols,
      if (longGuns != $none) #longGuns: longGuns,
      if (melee != $none) #melee: melee,
      if (xpInfo != null) #xpInfo: xpInfo,
    }),
  );
  @override
  RawLoadout $make(CopyWithData data) => RawLoadout(
    skins: data.get(#skins, or: $value.skins),
    suits: data.get(#suits, or: $value.suits),
    pistols: data.get(#pistols, or: $value.pistols),
    longGuns: data.get(#longGuns, or: $value.longGuns),
    melee: data.get(#melee, or: $value.melee),
    xpInfo: data.get(#xpInfo, or: $value.xpInfo),
  );

  @override
  RawLoadoutCopyWith<$R2, RawLoadout, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawLoadoutCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawXpItemMapper extends RecordMapperBase<RawXpItem> {
  static RawXpItemMapper? _instance;
  RawXpItemMapper._();

  static RawXpItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawXpItemMapper._());
      MapperBase.addType(<A, B>(f) => f<({A itemType, B xp})>());
    }
    return _instance!;
  }

  static String _$itemType(RawXpItem v) => v.itemType;
  static const Field<RawXpItem, String> _f$itemType = Field(
    'itemType',
    _$itemType,
    key: r'ItemType',
  );
  static int _$xp(RawXpItem v) => v.xp;
  static const Field<RawXpItem, int> _f$xp = Field('xp', _$xp, key: r'XP');

  @override
  final MappableFields<RawXpItem> fields = const {
    #itemType: _f$itemType,
    #xp: _f$xp,
  };

  @override
  Function get typeFactory =>
      (f) => f<RawXpItem>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static RawXpItem _instantiate(DecodingData<RawXpItem> data) {
    return (itemType: data.dec(_f$itemType), xp: data.dec(_f$xp));
  }

  @override
  final Function instantiate = _instantiate;

  static RawXpItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawXpItem>(map);
  }

  static RawXpItem fromJson(String json) {
    return ensureInitialized().decodeJson<RawXpItem>(json);
  }
}

extension RawXpItemMappable on RawXpItem {
  Map<String, dynamic> toMap() {
    return RawXpItemMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return RawXpItemMapper.ensureInitialized().encodeJson(this);
  }

  RawXpItemCopyWith<RawXpItem> get copyWith =>
      _RawXpItemCopyWithImpl(this, $identity, $identity);
}

extension RawXpItemValueCopy<$R> on ObjectCopyWith<$R, RawXpItem, RawXpItem> {
  RawXpItemCopyWith<$R> get $asRawXpItem =>
      $base.as((v, t, t2) => _RawXpItemCopyWithImpl(v, t, t2));
}

abstract class RawXpItemCopyWith<$R> implements RecordCopyWith<$R, RawXpItem> {
  $R call({String? itemType, int? xp});
  RawXpItemCopyWith<$R2> $chain<$R2>(Then<RawXpItem, $R2> t);
}

class _RawXpItemCopyWithImpl<$R> extends RecordCopyWithBase<$R, RawXpItem>
    implements RawXpItemCopyWith<$R> {
  _RawXpItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<RawXpItem> $mapper =
      RawXpItemMapper.ensureInitialized();
  @override
  $R call({String? itemType, int? xp}) => $apply(
    FieldCopyWithData({
      if (itemType != null) #itemType: itemType,
      if (xp != null) #xp: xp,
    }),
  );
  @override
  RawXpItem $make(CopyWithData data) => (
    itemType: data.get(#itemType, or: $value.itemType),
    xp: data.get(#xp, or: $value.xp),
  );

  @override
  RawXpItemCopyWith<$R2> $chain<$R2>(Then<RawXpItem, $R2> t) =>
      _RawXpItemCopyWithImpl($value, $cast, t);
}

class LoadoutMapper extends ClassMapperBase<Loadout> {
  LoadoutMapper._();

  static LoadoutMapper? _instance;
  static LoadoutMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoadoutMapper._());
      LoadoutItemMapper.ensureInitialized();
      XpItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Loadout';

  static LoadoutItem _$warframe(Loadout v) => v.warframe;
  static const Field<Loadout, LoadoutItem> _f$warframe = Field(
    'warframe',
    _$warframe,
  );
  static LoadoutItem? _$primary(Loadout v) => v.primary;
  static const Field<Loadout, LoadoutItem> _f$primary = Field(
    'primary',
    _$primary,
  );
  static LoadoutItem? _$secondary(Loadout v) => v.secondary;
  static const Field<Loadout, LoadoutItem> _f$secondary = Field(
    'secondary',
    _$secondary,
  );
  static LoadoutItem? _$melee(Loadout v) => v.melee;
  static const Field<Loadout, LoadoutItem> _f$melee = Field('melee', _$melee);
  static List<XpItem> _$xpInfo(Loadout v) => v.xpInfo;
  static const Field<Loadout, List<XpItem>> _f$xpInfo = Field(
    'xpInfo',
    _$xpInfo,
  );

  @override
  final MappableFields<Loadout> fields = const {
    #warframe: _f$warframe,
    #primary: _f$primary,
    #secondary: _f$secondary,
    #melee: _f$melee,
    #xpInfo: _f$xpInfo,
  };
  @override
  final bool ignoreNull = true;

  static Loadout _instantiate(DecodingData data) {
    return Loadout(
      warframe: data.dec(_f$warframe),
      primary: data.dec(_f$primary),
      secondary: data.dec(_f$secondary),
      melee: data.dec(_f$melee),
      xpInfo: data.dec(_f$xpInfo),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Loadout fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Loadout>(map);
  }

  static Loadout fromJson(String json) {
    return ensureInitialized().decodeJson<Loadout>(json);
  }
}

mixin LoadoutMappable {
  String toJson() {
    return LoadoutMapper.ensureInitialized().encodeJson<Loadout>(
      this as Loadout,
    );
  }

  Map<String, dynamic> toMap() {
    return LoadoutMapper.ensureInitialized().encodeMap<Loadout>(
      this as Loadout,
    );
  }

  LoadoutCopyWith<Loadout, Loadout, Loadout> get copyWith =>
      _LoadoutCopyWithImpl<Loadout, Loadout>(
        this as Loadout,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LoadoutMapper.ensureInitialized().stringifyValue(this as Loadout);
  }

  @override
  bool operator ==(Object other) {
    return LoadoutMapper.ensureInitialized().equalsValue(
      this as Loadout,
      other,
    );
  }

  @override
  int get hashCode {
    return LoadoutMapper.ensureInitialized().hashValue(this as Loadout);
  }
}

extension LoadoutValueCopy<$R, $Out> on ObjectCopyWith<$R, Loadout, $Out> {
  LoadoutCopyWith<$R, Loadout, $Out> get $asLoadout =>
      $base.as((v, t, t2) => _LoadoutCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LoadoutCopyWith<$R, $In extends Loadout, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  LoadoutItemCopyWith<$R, LoadoutItem, LoadoutItem> get warframe;
  LoadoutItemCopyWith<$R, LoadoutItem, LoadoutItem>? get primary;
  LoadoutItemCopyWith<$R, LoadoutItem, LoadoutItem>? get secondary;
  LoadoutItemCopyWith<$R, LoadoutItem, LoadoutItem>? get melee;
  ListCopyWith<$R, XpItem, ObjectCopyWith<$R, XpItem, XpItem>> get xpInfo;
  $R call({
    LoadoutItem? warframe,
    LoadoutItem? primary,
    LoadoutItem? secondary,
    LoadoutItem? melee,
    List<XpItem>? xpInfo,
  });
  LoadoutCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoadoutCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Loadout, $Out>
    implements LoadoutCopyWith<$R, Loadout, $Out> {
  _LoadoutCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Loadout> $mapper =
      LoadoutMapper.ensureInitialized();
  @override
  LoadoutItemCopyWith<$R, LoadoutItem, LoadoutItem> get warframe =>
      $value.warframe.copyWith.$chain((v) => call(warframe: v));
  @override
  LoadoutItemCopyWith<$R, LoadoutItem, LoadoutItem>? get primary =>
      $value.primary?.copyWith.$chain((v) => call(primary: v));
  @override
  LoadoutItemCopyWith<$R, LoadoutItem, LoadoutItem>? get secondary =>
      $value.secondary?.copyWith.$chain((v) => call(secondary: v));
  @override
  LoadoutItemCopyWith<$R, LoadoutItem, LoadoutItem>? get melee =>
      $value.melee?.copyWith.$chain((v) => call(melee: v));
  @override
  ListCopyWith<$R, XpItem, ObjectCopyWith<$R, XpItem, XpItem>> get xpInfo =>
      ListCopyWith(
        $value.xpInfo,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(xpInfo: v),
      );
  @override
  $R call({
    LoadoutItem? warframe,
    Object? primary = $none,
    Object? secondary = $none,
    Object? melee = $none,
    List<XpItem>? xpInfo,
  }) => $apply(
    FieldCopyWithData({
      if (warframe != null) #warframe: warframe,
      if (primary != $none) #primary: primary,
      if (secondary != $none) #secondary: secondary,
      if (melee != $none) #melee: melee,
      if (xpInfo != null) #xpInfo: xpInfo,
    }),
  );
  @override
  Loadout $make(CopyWithData data) => Loadout(
    warframe: data.get(#warframe, or: $value.warframe),
    primary: data.get(#primary, or: $value.primary),
    secondary: data.get(#secondary, or: $value.secondary),
    melee: data.get(#melee, or: $value.melee),
    xpInfo: data.get(#xpInfo, or: $value.xpInfo),
  );

  @override
  LoadoutCopyWith<$R2, Loadout, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _LoadoutCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class XpItemMapper extends RecordMapperBase<XpItem> {
  static XpItemMapper? _instance;
  XpItemMapper._();

  static XpItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XpItemMapper._());
      MapperBase.addType(<A, B>(f) => f<({A uniqueName, B xp})>());
    }
    return _instance!;
  }

  static String _$uniqueName(XpItem v) => v.uniqueName;
  static const Field<XpItem, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static int _$xp(XpItem v) => v.xp;
  static const Field<XpItem, int> _f$xp = Field('xp', _$xp);

  @override
  final MappableFields<XpItem> fields = const {
    #uniqueName: _f$uniqueName,
    #xp: _f$xp,
  };

  @override
  Function get typeFactory =>
      (f) => f<XpItem>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static XpItem _instantiate(DecodingData<XpItem> data) {
    return (uniqueName: data.dec(_f$uniqueName), xp: data.dec(_f$xp));
  }

  @override
  final Function instantiate = _instantiate;

  static XpItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XpItem>(map);
  }

  static XpItem fromJson(String json) {
    return ensureInitialized().decodeJson<XpItem>(json);
  }
}

extension XpItemMappable on XpItem {
  Map<String, dynamic> toMap() {
    return XpItemMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return XpItemMapper.ensureInitialized().encodeJson(this);
  }

  XpItemCopyWith<XpItem> get copyWith =>
      _XpItemCopyWithImpl(this, $identity, $identity);
}

extension XpItemValueCopy<$R> on ObjectCopyWith<$R, XpItem, XpItem> {
  XpItemCopyWith<$R> get $asXpItem =>
      $base.as((v, t, t2) => _XpItemCopyWithImpl(v, t, t2));
}

abstract class XpItemCopyWith<$R> implements RecordCopyWith<$R, XpItem> {
  $R call({String? uniqueName, int? xp});
  XpItemCopyWith<$R2> $chain<$R2>(Then<XpItem, $R2> t);
}

class _XpItemCopyWithImpl<$R> extends RecordCopyWithBase<$R, XpItem>
    implements XpItemCopyWith<$R> {
  _XpItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<XpItem> $mapper =
      XpItemMapper.ensureInitialized();
  @override
  $R call({String? uniqueName, int? xp}) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (xp != null) #xp: xp,
    }),
  );
  @override
  XpItem $make(CopyWithData data) => (
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    xp: data.get(#xp, or: $value.xp),
  );

  @override
  XpItemCopyWith<$R2> $chain<$R2>(Then<XpItem, $R2> t) =>
      _XpItemCopyWithImpl($value, $cast, t);
}

