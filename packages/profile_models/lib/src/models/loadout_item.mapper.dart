// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'loadout_item.dart';

class RawLoadoutItemMapper extends ClassMapperBase<RawLoadoutItem> {
  RawLoadoutItemMapper._();

  static RawLoadoutItemMapper? _instance;
  static RawLoadoutItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawLoadoutItemMapper._());
      RawPolarityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawLoadoutItem';

  static Map<String, dynamic> _$itemId(RawLoadoutItem v) => v.itemId;
  static const Field<RawLoadoutItem, Map<String, dynamic>> _f$itemId = Field(
    'itemId',
    _$itemId,
    key: r'ItemId',
  );
  static String _$itemType(RawLoadoutItem v) => v.itemType;
  static const Field<RawLoadoutItem, String> _f$itemType = Field(
    'itemType',
    _$itemType,
    key: r'ItemType',
  );
  static String? _$itemName(RawLoadoutItem v) => v.itemName;
  static const Field<RawLoadoutItem, String> _f$itemName = Field(
    'itemName',
    _$itemName,
    key: r'ItemName',
  );
  static List<dynamic> _$configs(RawLoadoutItem v) => v.configs;
  static const Field<RawLoadoutItem, List<dynamic>> _f$configs = Field(
    'configs',
    _$configs,
    key: r'Configs',
  );
  static String? _$upgradeType(RawLoadoutItem v) => v.upgradeType;
  static const Field<RawLoadoutItem, String> _f$upgradeType = Field(
    'upgradeType',
    _$upgradeType,
    key: r'UpgradeType',
  );
  static String? _$upgradeFingerprint(RawLoadoutItem v) => v.upgradeFingerprint;
  static const Field<RawLoadoutItem, String> _f$upgradeFingerprint = Field(
    'upgradeFingerprint',
    _$upgradeFingerprint,
    key: r'UpgradeFingerprint',
  );
  static int? _$features(RawLoadoutItem v) => v.features;
  static const Field<RawLoadoutItem, int> _f$features = Field(
    'features',
    _$features,
    key: r'Features',
  );
  static int _$upgradeVer(RawLoadoutItem v) => v.upgradeVer;
  static const Field<RawLoadoutItem, int> _f$upgradeVer = Field(
    'upgradeVer',
    _$upgradeVer,
    key: r'UpgradeVer',
  );
  static int? _$xp(RawLoadoutItem v) => v.xp;
  static const Field<RawLoadoutItem, int> _f$xp = Field('xp', _$xp, key: r'Xp');
  static int? _$polarized(RawLoadoutItem v) => v.polarized;
  static const Field<RawLoadoutItem, int> _f$polarized = Field(
    'polarized',
    _$polarized,
    key: r'Polarized',
  );
  static List<RawPolarity>? _$polarity(RawLoadoutItem v) => v.polarity;
  static const Field<RawLoadoutItem, List<RawPolarity>> _f$polarity = Field(
    'polarity',
    _$polarity,
    key: r'Polarity',
  );
  static List<dynamic>? _$archonCrystalUpgrades(RawLoadoutItem v) =>
      v.archonCrystalUpgrades;
  static const Field<RawLoadoutItem, List<dynamic>> _f$archonCrystalUpgrades =
      Field(
        'archonCrystalUpgrades',
        _$archonCrystalUpgrades,
        key: r'ArchonCrystalUpgrades',
      );
  static String? _$focusLens(RawLoadoutItem v) => v.focusLens;
  static const Field<RawLoadoutItem, String> _f$focusLens = Field(
    'focusLens',
    _$focusLens,
    key: r'FocusLens',
  );
  static int? _$custimizationSlotPurchases(RawLoadoutItem v) =>
      v.custimizationSlotPurchases;
  static const Field<RawLoadoutItem, int> _f$custimizationSlotPurchases = Field(
    'custimizationSlotPurchases',
    _$custimizationSlotPurchases,
    key: r'CustimizationSlotPurchases',
  );
  static RawColorMap? _$pricool(RawLoadoutItem v) => v.pricool;
  static const Field<RawLoadoutItem, RawColorMap> _f$pricool = Field(
    'pricool',
    _$pricool,
    key: r'Pricool',
  );
  static RawColorMap? _$sigcol(RawLoadoutItem v) => v.sigcol;
  static const Field<RawLoadoutItem, RawColorMap> _f$sigcol = Field(
    'sigcol',
    _$sigcol,
    key: r'Sigcol',
  );
  static bool? _$ugly(RawLoadoutItem v) => v.ugly;
  static const Field<RawLoadoutItem, bool> _f$ugly = Field(
    'ugly',
    _$ugly,
    key: r'Ugly',
  );
  static RawColorMap? _$attcol(RawLoadoutItem v) => v.attcol;
  static const Field<RawLoadoutItem, RawColorMap> _f$attcol = Field(
    'attcol',
    _$attcol,
    key: r'Attcol',
  );
  static RawColorMap? _$syancol(RawLoadoutItem v) => v.syancol;
  static const Field<RawLoadoutItem, RawColorMap> _f$syancol = Field(
    'syancol',
    _$syancol,
    key: r'Syancol',
  );
  static Map<String, dynamic>? _$infestationDate(RawLoadoutItem v) =>
      v.infestationDate;
  static const Field<RawLoadoutItem, Map<String, dynamic>> _f$infestationDate =
      Field('infestationDate', _$infestationDate, key: r'InfestationDate');

  @override
  final MappableFields<RawLoadoutItem> fields = const {
    #itemId: _f$itemId,
    #itemType: _f$itemType,
    #itemName: _f$itemName,
    #configs: _f$configs,
    #upgradeType: _f$upgradeType,
    #upgradeFingerprint: _f$upgradeFingerprint,
    #features: _f$features,
    #upgradeVer: _f$upgradeVer,
    #xp: _f$xp,
    #polarized: _f$polarized,
    #polarity: _f$polarity,
    #archonCrystalUpgrades: _f$archonCrystalUpgrades,
    #focusLens: _f$focusLens,
    #custimizationSlotPurchases: _f$custimizationSlotPurchases,
    #pricool: _f$pricool,
    #sigcol: _f$sigcol,
    #ugly: _f$ugly,
    #attcol: _f$attcol,
    #syancol: _f$syancol,
    #infestationDate: _f$infestationDate,
  };
  @override
  final bool ignoreNull = true;

  static RawLoadoutItem _instantiate(DecodingData data) {
    return RawLoadoutItem(
      itemId: data.dec(_f$itemId),
      itemType: data.dec(_f$itemType),
      itemName: data.dec(_f$itemName),
      configs: data.dec(_f$configs),
      upgradeType: data.dec(_f$upgradeType),
      upgradeFingerprint: data.dec(_f$upgradeFingerprint),
      features: data.dec(_f$features),
      upgradeVer: data.dec(_f$upgradeVer),
      xp: data.dec(_f$xp),
      polarized: data.dec(_f$polarized),
      polarity: data.dec(_f$polarity),
      archonCrystalUpgrades: data.dec(_f$archonCrystalUpgrades),
      focusLens: data.dec(_f$focusLens),
      custimizationSlotPurchases: data.dec(_f$custimizationSlotPurchases),
      pricool: data.dec(_f$pricool),
      sigcol: data.dec(_f$sigcol),
      ugly: data.dec(_f$ugly),
      attcol: data.dec(_f$attcol),
      syancol: data.dec(_f$syancol),
      infestationDate: data.dec(_f$infestationDate),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawLoadoutItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawLoadoutItem>(map);
  }

  static RawLoadoutItem fromJson(String json) {
    return ensureInitialized().decodeJson<RawLoadoutItem>(json);
  }
}

mixin RawLoadoutItemMappable {
  String toJson() {
    return RawLoadoutItemMapper.ensureInitialized().encodeJson<RawLoadoutItem>(
      this as RawLoadoutItem,
    );
  }

  Map<String, dynamic> toMap() {
    return RawLoadoutItemMapper.ensureInitialized().encodeMap<RawLoadoutItem>(
      this as RawLoadoutItem,
    );
  }

  RawLoadoutItemCopyWith<RawLoadoutItem, RawLoadoutItem, RawLoadoutItem>
  get copyWith => _RawLoadoutItemCopyWithImpl<RawLoadoutItem, RawLoadoutItem>(
    this as RawLoadoutItem,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawLoadoutItemMapper.ensureInitialized().stringifyValue(
      this as RawLoadoutItem,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawLoadoutItemMapper.ensureInitialized().equalsValue(
      this as RawLoadoutItem,
      other,
    );
  }

  @override
  int get hashCode {
    return RawLoadoutItemMapper.ensureInitialized().hashValue(
      this as RawLoadoutItem,
    );
  }
}

extension RawLoadoutItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawLoadoutItem, $Out> {
  RawLoadoutItemCopyWith<$R, RawLoadoutItem, $Out> get $asRawLoadoutItem =>
      $base.as((v, t, t2) => _RawLoadoutItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawLoadoutItemCopyWith<$R, $In extends RawLoadoutItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>
  get itemId;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?> get configs;
  ListCopyWith<
    $R,
    RawPolarity,
    RawPolarityCopyWith<$R, RawPolarity, RawPolarity>
  >?
  get polarity;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get archonCrystalUpgrades;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get infestationDate;
  $R call({
    Map<String, dynamic>? itemId,
    String? itemType,
    String? itemName,
    List<dynamic>? configs,
    String? upgradeType,
    String? upgradeFingerprint,
    int? features,
    int? upgradeVer,
    int? xp,
    int? polarized,
    List<RawPolarity>? polarity,
    List<dynamic>? archonCrystalUpgrades,
    String? focusLens,
    int? custimizationSlotPurchases,
    RawColorMap? pricool,
    RawColorMap? sigcol,
    bool? ugly,
    RawColorMap? attcol,
    RawColorMap? syancol,
    Map<String, dynamic>? infestationDate,
  });
  RawLoadoutItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawLoadoutItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawLoadoutItem, $Out>
    implements RawLoadoutItemCopyWith<$R, RawLoadoutItem, $Out> {
  _RawLoadoutItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawLoadoutItem> $mapper =
      RawLoadoutItemMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>
  get itemId => MapCopyWith(
    $value.itemId,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(itemId: v),
  );
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>
  get configs => ListCopyWith(
    $value.configs,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(configs: v),
  );
  @override
  ListCopyWith<
    $R,
    RawPolarity,
    RawPolarityCopyWith<$R, RawPolarity, RawPolarity>
  >?
  get polarity => $value.polarity != null
      ? ListCopyWith(
          $value.polarity!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(polarity: v),
        )
      : null;
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get archonCrystalUpgrades => $value.archonCrystalUpgrades != null
      ? ListCopyWith(
          $value.archonCrystalUpgrades!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(archonCrystalUpgrades: v),
        )
      : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get infestationDate => $value.infestationDate != null
      ? MapCopyWith(
          $value.infestationDate!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(infestationDate: v),
        )
      : null;
  @override
  $R call({
    Map<String, dynamic>? itemId,
    String? itemType,
    Object? itemName = $none,
    List<dynamic>? configs,
    Object? upgradeType = $none,
    Object? upgradeFingerprint = $none,
    Object? features = $none,
    int? upgradeVer,
    Object? xp = $none,
    Object? polarized = $none,
    Object? polarity = $none,
    Object? archonCrystalUpgrades = $none,
    Object? focusLens = $none,
    Object? custimizationSlotPurchases = $none,
    Object? pricool = $none,
    Object? sigcol = $none,
    Object? ugly = $none,
    Object? attcol = $none,
    Object? syancol = $none,
    Object? infestationDate = $none,
  }) => $apply(
    FieldCopyWithData({
      if (itemId != null) #itemId: itemId,
      if (itemType != null) #itemType: itemType,
      if (itemName != $none) #itemName: itemName,
      if (configs != null) #configs: configs,
      if (upgradeType != $none) #upgradeType: upgradeType,
      if (upgradeFingerprint != $none) #upgradeFingerprint: upgradeFingerprint,
      if (features != $none) #features: features,
      if (upgradeVer != null) #upgradeVer: upgradeVer,
      if (xp != $none) #xp: xp,
      if (polarized != $none) #polarized: polarized,
      if (polarity != $none) #polarity: polarity,
      if (archonCrystalUpgrades != $none)
        #archonCrystalUpgrades: archonCrystalUpgrades,
      if (focusLens != $none) #focusLens: focusLens,
      if (custimizationSlotPurchases != $none)
        #custimizationSlotPurchases: custimizationSlotPurchases,
      if (pricool != $none) #pricool: pricool,
      if (sigcol != $none) #sigcol: sigcol,
      if (ugly != $none) #ugly: ugly,
      if (attcol != $none) #attcol: attcol,
      if (syancol != $none) #syancol: syancol,
      if (infestationDate != $none) #infestationDate: infestationDate,
    }),
  );
  @override
  RawLoadoutItem $make(CopyWithData data) => RawLoadoutItem(
    itemId: data.get(#itemId, or: $value.itemId),
    itemType: data.get(#itemType, or: $value.itemType),
    itemName: data.get(#itemName, or: $value.itemName),
    configs: data.get(#configs, or: $value.configs),
    upgradeType: data.get(#upgradeType, or: $value.upgradeType),
    upgradeFingerprint: data.get(
      #upgradeFingerprint,
      or: $value.upgradeFingerprint,
    ),
    features: data.get(#features, or: $value.features),
    upgradeVer: data.get(#upgradeVer, or: $value.upgradeVer),
    xp: data.get(#xp, or: $value.xp),
    polarized: data.get(#polarized, or: $value.polarized),
    polarity: data.get(#polarity, or: $value.polarity),
    archonCrystalUpgrades: data.get(
      #archonCrystalUpgrades,
      or: $value.archonCrystalUpgrades,
    ),
    focusLens: data.get(#focusLens, or: $value.focusLens),
    custimizationSlotPurchases: data.get(
      #custimizationSlotPurchases,
      or: $value.custimizationSlotPurchases,
    ),
    pricool: data.get(#pricool, or: $value.pricool),
    sigcol: data.get(#sigcol, or: $value.sigcol),
    ugly: data.get(#ugly, or: $value.ugly),
    attcol: data.get(#attcol, or: $value.attcol),
    syancol: data.get(#syancol, or: $value.syancol),
    infestationDate: data.get(#infestationDate, or: $value.infestationDate),
  );

  @override
  RawLoadoutItemCopyWith<$R2, RawLoadoutItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawLoadoutItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LoadoutItemMapper extends ClassMapperBase<LoadoutItem> {
  LoadoutItemMapper._();

  static LoadoutItemMapper? _instance;
  static LoadoutItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoadoutItemMapper._());
      ItemConfigMapper.ensureInitialized();
      PolarityMapper.ensureInitialized();
      ArchonUpgradeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LoadoutItem';

  static String _$id(LoadoutItem v) => v.id;
  static const Field<LoadoutItem, String> _f$id = Field('id', _$id);
  static String _$uniqueName(LoadoutItem v) => v.uniqueName;
  static const Field<LoadoutItem, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(LoadoutItem v) => v.name;
  static const Field<LoadoutItem, String> _f$name = Field('name', _$name);
  static String? _$nemesis(LoadoutItem v) => v.nemesis;
  static const Field<LoadoutItem, String> _f$nemesis = Field(
    'nemesis',
    _$nemesis,
  );
  static List<ItemConfig> _$configs(LoadoutItem v) => v.configs;
  static const Field<LoadoutItem, List<ItemConfig>> _f$configs = Field(
    'configs',
    _$configs,
  );
  static int? _$features(LoadoutItem v) => v.features;
  static const Field<LoadoutItem, int> _f$features = Field(
    'features',
    _$features,
  );
  static int? _$xp(LoadoutItem v) => v.xp;
  static const Field<LoadoutItem, int> _f$xp = Field('xp', _$xp);
  static int? _$polarized(LoadoutItem v) => v.polarized;
  static const Field<LoadoutItem, int> _f$polarized = Field(
    'polarized',
    _$polarized,
  );
  static List<Polarity>? _$polarities(LoadoutItem v) => v.polarities;
  static const Field<LoadoutItem, List<Polarity>> _f$polarities = Field(
    'polarities',
    _$polarities,
  );
  static List<ArchonUpgrade>? _$archonUpgrades(LoadoutItem v) =>
      v.archonUpgrades;
  static const Field<LoadoutItem, List<ArchonUpgrade>> _f$archonUpgrades =
      Field('archonUpgrades', _$archonUpgrades);
  static String? _$focusLens(LoadoutItem v) => v.focusLens;
  static const Field<LoadoutItem, String> _f$focusLens = Field(
    'focusLens',
    _$focusLens,
  );
  static int _$customizationSlotPurchases(LoadoutItem v) =>
      v.customizationSlotPurchases;
  static const Field<LoadoutItem, int> _f$customizationSlotPurchases = Field(
    'customizationSlotPurchases',
    _$customizationSlotPurchases,
  );
  static ColorMap? _$primaryColor(LoadoutItem v) => v.primaryColor;
  static const Field<LoadoutItem, ColorMap> _f$primaryColor = Field(
    'primaryColor',
    _$primaryColor,
  );
  static ColorMap? _$sigilColor(LoadoutItem v) => v.sigilColor;
  static const Field<LoadoutItem, ColorMap> _f$sigilColor = Field(
    'sigilColor',
    _$sigilColor,
  );
  static bool _$enablePrime(LoadoutItem v) => v.enablePrime;
  static const Field<LoadoutItem, bool> _f$enablePrime = Field(
    'enablePrime',
    _$enablePrime,
  );
  static ColorMap? _$attachmentsColor(LoadoutItem v) => v.attachmentsColor;
  static const Field<LoadoutItem, ColorMap> _f$attachmentsColor = Field(
    'attachmentsColor',
    _$attachmentsColor,
  );
  static ColorMap? _$syandanaColor(LoadoutItem v) => v.syandanaColor;
  static const Field<LoadoutItem, ColorMap> _f$syandanaColor = Field(
    'syandanaColor',
    _$syandanaColor,
  );
  static DateTime? _$infestationDate(LoadoutItem v) => v.infestationDate;
  static const Field<LoadoutItem, DateTime> _f$infestationDate = Field(
    'infestationDate',
    _$infestationDate,
  );

  @override
  final MappableFields<LoadoutItem> fields = const {
    #id: _f$id,
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #nemesis: _f$nemesis,
    #configs: _f$configs,
    #features: _f$features,
    #xp: _f$xp,
    #polarized: _f$polarized,
    #polarities: _f$polarities,
    #archonUpgrades: _f$archonUpgrades,
    #focusLens: _f$focusLens,
    #customizationSlotPurchases: _f$customizationSlotPurchases,
    #primaryColor: _f$primaryColor,
    #sigilColor: _f$sigilColor,
    #enablePrime: _f$enablePrime,
    #attachmentsColor: _f$attachmentsColor,
    #syandanaColor: _f$syandanaColor,
    #infestationDate: _f$infestationDate,
  };
  @override
  final bool ignoreNull = true;

  static LoadoutItem _instantiate(DecodingData data) {
    return LoadoutItem(
      id: data.dec(_f$id),
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      nemesis: data.dec(_f$nemesis),
      configs: data.dec(_f$configs),
      features: data.dec(_f$features),
      xp: data.dec(_f$xp),
      polarized: data.dec(_f$polarized),
      polarities: data.dec(_f$polarities),
      archonUpgrades: data.dec(_f$archonUpgrades),
      focusLens: data.dec(_f$focusLens),
      customizationSlotPurchases: data.dec(_f$customizationSlotPurchases),
      primaryColor: data.dec(_f$primaryColor),
      sigilColor: data.dec(_f$sigilColor),
      enablePrime: data.dec(_f$enablePrime),
      attachmentsColor: data.dec(_f$attachmentsColor),
      syandanaColor: data.dec(_f$syandanaColor),
      infestationDate: data.dec(_f$infestationDate),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LoadoutItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoadoutItem>(map);
  }

  static LoadoutItem fromJson(String json) {
    return ensureInitialized().decodeJson<LoadoutItem>(json);
  }
}

mixin LoadoutItemMappable {
  String toJson() {
    return LoadoutItemMapper.ensureInitialized().encodeJson<LoadoutItem>(
      this as LoadoutItem,
    );
  }

  Map<String, dynamic> toMap() {
    return LoadoutItemMapper.ensureInitialized().encodeMap<LoadoutItem>(
      this as LoadoutItem,
    );
  }

  LoadoutItemCopyWith<LoadoutItem, LoadoutItem, LoadoutItem> get copyWith =>
      _LoadoutItemCopyWithImpl<LoadoutItem, LoadoutItem>(
        this as LoadoutItem,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LoadoutItemMapper.ensureInitialized().stringifyValue(
      this as LoadoutItem,
    );
  }

  @override
  bool operator ==(Object other) {
    return LoadoutItemMapper.ensureInitialized().equalsValue(
      this as LoadoutItem,
      other,
    );
  }

  @override
  int get hashCode {
    return LoadoutItemMapper.ensureInitialized().hashValue(this as LoadoutItem);
  }
}

extension LoadoutItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoadoutItem, $Out> {
  LoadoutItemCopyWith<$R, LoadoutItem, $Out> get $asLoadoutItem =>
      $base.as((v, t, t2) => _LoadoutItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LoadoutItemCopyWith<$R, $In extends LoadoutItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ItemConfig, ItemConfigCopyWith<$R, ItemConfig, ItemConfig>>
  get configs;
  ListCopyWith<$R, Polarity, PolarityCopyWith<$R, Polarity, Polarity>>?
  get polarities;
  ListCopyWith<
    $R,
    ArchonUpgrade,
    ArchonUpgradeCopyWith<$R, ArchonUpgrade, ArchonUpgrade>
  >?
  get archonUpgrades;
  $R call({
    String? id,
    String? uniqueName,
    String? name,
    String? nemesis,
    List<ItemConfig>? configs,
    int? features,
    int? xp,
    int? polarized,
    List<Polarity>? polarities,
    List<ArchonUpgrade>? archonUpgrades,
    String? focusLens,
    int? customizationSlotPurchases,
    ColorMap? primaryColor,
    ColorMap? sigilColor,
    bool? enablePrime,
    ColorMap? attachmentsColor,
    ColorMap? syandanaColor,
    DateTime? infestationDate,
  });
  LoadoutItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoadoutItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoadoutItem, $Out>
    implements LoadoutItemCopyWith<$R, LoadoutItem, $Out> {
  _LoadoutItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoadoutItem> $mapper =
      LoadoutItemMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ItemConfig, ItemConfigCopyWith<$R, ItemConfig, ItemConfig>>
  get configs => ListCopyWith(
    $value.configs,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(configs: v),
  );
  @override
  ListCopyWith<$R, Polarity, PolarityCopyWith<$R, Polarity, Polarity>>?
  get polarities => $value.polarities != null
      ? ListCopyWith(
          $value.polarities!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(polarities: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    ArchonUpgrade,
    ArchonUpgradeCopyWith<$R, ArchonUpgrade, ArchonUpgrade>
  >?
  get archonUpgrades => $value.archonUpgrades != null
      ? ListCopyWith(
          $value.archonUpgrades!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(archonUpgrades: v),
        )
      : null;
  @override
  $R call({
    String? id,
    String? uniqueName,
    String? name,
    Object? nemesis = $none,
    List<ItemConfig>? configs,
    Object? features = $none,
    Object? xp = $none,
    Object? polarized = $none,
    Object? polarities = $none,
    Object? archonUpgrades = $none,
    Object? focusLens = $none,
    int? customizationSlotPurchases,
    Object? primaryColor = $none,
    Object? sigilColor = $none,
    bool? enablePrime,
    Object? attachmentsColor = $none,
    Object? syandanaColor = $none,
    Object? infestationDate = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (nemesis != $none) #nemesis: nemesis,
      if (configs != null) #configs: configs,
      if (features != $none) #features: features,
      if (xp != $none) #xp: xp,
      if (polarized != $none) #polarized: polarized,
      if (polarities != $none) #polarities: polarities,
      if (archonUpgrades != $none) #archonUpgrades: archonUpgrades,
      if (focusLens != $none) #focusLens: focusLens,
      if (customizationSlotPurchases != null)
        #customizationSlotPurchases: customizationSlotPurchases,
      if (primaryColor != $none) #primaryColor: primaryColor,
      if (sigilColor != $none) #sigilColor: sigilColor,
      if (enablePrime != null) #enablePrime: enablePrime,
      if (attachmentsColor != $none) #attachmentsColor: attachmentsColor,
      if (syandanaColor != $none) #syandanaColor: syandanaColor,
      if (infestationDate != $none) #infestationDate: infestationDate,
    }),
  );
  @override
  LoadoutItem $make(CopyWithData data) => LoadoutItem(
    id: data.get(#id, or: $value.id),
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    nemesis: data.get(#nemesis, or: $value.nemesis),
    configs: data.get(#configs, or: $value.configs),
    features: data.get(#features, or: $value.features),
    xp: data.get(#xp, or: $value.xp),
    polarized: data.get(#polarized, or: $value.polarized),
    polarities: data.get(#polarities, or: $value.polarities),
    archonUpgrades: data.get(#archonUpgrades, or: $value.archonUpgrades),
    focusLens: data.get(#focusLens, or: $value.focusLens),
    customizationSlotPurchases: data.get(
      #customizationSlotPurchases,
      or: $value.customizationSlotPurchases,
    ),
    primaryColor: data.get(#primaryColor, or: $value.primaryColor),
    sigilColor: data.get(#sigilColor, or: $value.sigilColor),
    enablePrime: data.get(#enablePrime, or: $value.enablePrime),
    attachmentsColor: data.get(#attachmentsColor, or: $value.attachmentsColor),
    syandanaColor: data.get(#syandanaColor, or: $value.syandanaColor),
    infestationDate: data.get(#infestationDate, or: $value.infestationDate),
  );

  @override
  LoadoutItemCopyWith<$R2, LoadoutItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LoadoutItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

