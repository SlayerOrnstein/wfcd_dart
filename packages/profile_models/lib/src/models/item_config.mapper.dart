// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'item_config.dart';

class RawItemConfigMapper extends ClassMapperBase<RawItemConfig> {
  RawItemConfigMapper._();

  static RawItemConfigMapper? _instance;
  static RawItemConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawItemConfigMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawItemConfig';

  static List<String>? _$skins(RawItemConfig v) => v.skins;
  static const Field<RawItemConfig, List<String>> _f$skins = Field(
    'skins',
    _$skins,
    key: r'Skins',
  );
  static List<String>? _$pvpUgrades(RawItemConfig v) => v.pvpUgrades;
  static const Field<RawItemConfig, List<String>> _f$pvpUgrades = Field(
    'pvpUgrades',
    _$pvpUgrades,
    key: r'PvpUgrades',
  );
  static RawColorMap? _$pricol(RawItemConfig v) => v.pricol;
  static const Field<RawItemConfig, RawColorMap> _f$pricol = Field(
    'pricol',
    _$pricol,
    key: r'Pricol',
  );
  static RawColorMap? _$sigcol(RawItemConfig v) => v.sigcol;
  static const Field<RawItemConfig, RawColorMap> _f$sigcol = Field(
    'sigcol',
    _$sigcol,
    key: r'Sigcol',
  );
  static RawColorMap? _$attcol(RawItemConfig v) => v.attcol;
  static const Field<RawItemConfig, RawColorMap> _f$attcol = Field(
    'attcol',
    _$attcol,
    key: r'Attcol',
  );
  static RawColorMap? _$syancol(RawItemConfig v) => v.syancol;
  static const Field<RawItemConfig, RawColorMap> _f$syancol = Field(
    'syancol',
    _$syancol,
    key: r'Syancol',
  );

  @override
  final MappableFields<RawItemConfig> fields = const {
    #skins: _f$skins,
    #pvpUgrades: _f$pvpUgrades,
    #pricol: _f$pricol,
    #sigcol: _f$sigcol,
    #attcol: _f$attcol,
    #syancol: _f$syancol,
  };
  @override
  final bool ignoreNull = true;

  static RawItemConfig _instantiate(DecodingData data) {
    return RawItemConfig(
      skins: data.dec(_f$skins),
      pvpUgrades: data.dec(_f$pvpUgrades),
      pricol: data.dec(_f$pricol),
      sigcol: data.dec(_f$sigcol),
      attcol: data.dec(_f$attcol),
      syancol: data.dec(_f$syancol),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawItemConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawItemConfig>(map);
  }

  static RawItemConfig fromJson(String json) {
    return ensureInitialized().decodeJson<RawItemConfig>(json);
  }
}

mixin RawItemConfigMappable {
  String toJson() {
    return RawItemConfigMapper.ensureInitialized().encodeJson<RawItemConfig>(
      this as RawItemConfig,
    );
  }

  Map<String, dynamic> toMap() {
    return RawItemConfigMapper.ensureInitialized().encodeMap<RawItemConfig>(
      this as RawItemConfig,
    );
  }

  RawItemConfigCopyWith<RawItemConfig, RawItemConfig, RawItemConfig>
  get copyWith => _RawItemConfigCopyWithImpl<RawItemConfig, RawItemConfig>(
    this as RawItemConfig,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawItemConfigMapper.ensureInitialized().stringifyValue(
      this as RawItemConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawItemConfigMapper.ensureInitialized().equalsValue(
      this as RawItemConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return RawItemConfigMapper.ensureInitialized().hashValue(
      this as RawItemConfig,
    );
  }
}

extension RawItemConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawItemConfig, $Out> {
  RawItemConfigCopyWith<$R, RawItemConfig, $Out> get $asRawItemConfig =>
      $base.as((v, t, t2) => _RawItemConfigCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawItemConfigCopyWith<$R, $In extends RawItemConfig, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get skins;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get pvpUgrades;
  $R call({
    List<String>? skins,
    List<String>? pvpUgrades,
    RawColorMap? pricol,
    RawColorMap? sigcol,
    RawColorMap? attcol,
    RawColorMap? syancol,
  });
  RawItemConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawItemConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawItemConfig, $Out>
    implements RawItemConfigCopyWith<$R, RawItemConfig, $Out> {
  _RawItemConfigCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawItemConfig> $mapper =
      RawItemConfigMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get skins =>
      $value.skins != null
      ? ListCopyWith(
          $value.skins!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(skins: v),
        )
      : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
  get pvpUgrades => $value.pvpUgrades != null
      ? ListCopyWith(
          $value.pvpUgrades!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(pvpUgrades: v),
        )
      : null;
  @override
  $R call({
    Object? skins = $none,
    Object? pvpUgrades = $none,
    Object? pricol = $none,
    Object? sigcol = $none,
    Object? attcol = $none,
    Object? syancol = $none,
  }) => $apply(
    FieldCopyWithData({
      if (skins != $none) #skins: skins,
      if (pvpUgrades != $none) #pvpUgrades: pvpUgrades,
      if (pricol != $none) #pricol: pricol,
      if (sigcol != $none) #sigcol: sigcol,
      if (attcol != $none) #attcol: attcol,
      if (syancol != $none) #syancol: syancol,
    }),
  );
  @override
  RawItemConfig $make(CopyWithData data) => RawItemConfig(
    skins: data.get(#skins, or: $value.skins),
    pvpUgrades: data.get(#pvpUgrades, or: $value.pvpUgrades),
    pricol: data.get(#pricol, or: $value.pricol),
    sigcol: data.get(#sigcol, or: $value.sigcol),
    attcol: data.get(#attcol, or: $value.attcol),
    syancol: data.get(#syancol, or: $value.syancol),
  );

  @override
  RawItemConfigCopyWith<$R2, RawItemConfig, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawItemConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ItemConfigMapper extends ClassMapperBase<ItemConfig> {
  ItemConfigMapper._();

  static ItemConfigMapper? _instance;
  static ItemConfigMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemConfigMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ItemConfig';

  static List<String> _$skins(ItemConfig v) => v.skins;
  static const Field<ItemConfig, List<String>> _f$skins = Field(
    'skins',
    _$skins,
  );
  static List<String>? _$conclaveUpgrades(ItemConfig v) => v.conclaveUpgrades;
  static const Field<ItemConfig, List<String>> _f$conclaveUpgrades = Field(
    'conclaveUpgrades',
    _$conclaveUpgrades,
  );
  static ColorMap? _$primaryColor(ItemConfig v) => v.primaryColor;
  static const Field<ItemConfig, ColorMap> _f$primaryColor = Field(
    'primaryColor',
    _$primaryColor,
  );
  static ColorMap? _$sigilColor(ItemConfig v) => v.sigilColor;
  static const Field<ItemConfig, ColorMap> _f$sigilColor = Field(
    'sigilColor',
    _$sigilColor,
  );
  static ColorMap? _$attachmentsColor(ItemConfig v) => v.attachmentsColor;
  static const Field<ItemConfig, ColorMap> _f$attachmentsColor = Field(
    'attachmentsColor',
    _$attachmentsColor,
  );
  static ColorMap? _$syandanaColor(ItemConfig v) => v.syandanaColor;
  static const Field<ItemConfig, ColorMap> _f$syandanaColor = Field(
    'syandanaColor',
    _$syandanaColor,
  );

  @override
  final MappableFields<ItemConfig> fields = const {
    #skins: _f$skins,
    #conclaveUpgrades: _f$conclaveUpgrades,
    #primaryColor: _f$primaryColor,
    #sigilColor: _f$sigilColor,
    #attachmentsColor: _f$attachmentsColor,
    #syandanaColor: _f$syandanaColor,
  };
  @override
  final bool ignoreNull = true;

  static ItemConfig _instantiate(DecodingData data) {
    return ItemConfig(
      skins: data.dec(_f$skins),
      conclaveUpgrades: data.dec(_f$conclaveUpgrades),
      primaryColor: data.dec(_f$primaryColor),
      sigilColor: data.dec(_f$sigilColor),
      attachmentsColor: data.dec(_f$attachmentsColor),
      syandanaColor: data.dec(_f$syandanaColor),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ItemConfig fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemConfig>(map);
  }

  static ItemConfig fromJson(String json) {
    return ensureInitialized().decodeJson<ItemConfig>(json);
  }
}

mixin ItemConfigMappable {
  String toJson() {
    return ItemConfigMapper.ensureInitialized().encodeJson<ItemConfig>(
      this as ItemConfig,
    );
  }

  Map<String, dynamic> toMap() {
    return ItemConfigMapper.ensureInitialized().encodeMap<ItemConfig>(
      this as ItemConfig,
    );
  }

  ItemConfigCopyWith<ItemConfig, ItemConfig, ItemConfig> get copyWith =>
      _ItemConfigCopyWithImpl<ItemConfig, ItemConfig>(
        this as ItemConfig,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ItemConfigMapper.ensureInitialized().stringifyValue(
      this as ItemConfig,
    );
  }

  @override
  bool operator ==(Object other) {
    return ItemConfigMapper.ensureInitialized().equalsValue(
      this as ItemConfig,
      other,
    );
  }

  @override
  int get hashCode {
    return ItemConfigMapper.ensureInitialized().hashValue(this as ItemConfig);
  }
}

extension ItemConfigValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ItemConfig, $Out> {
  ItemConfigCopyWith<$R, ItemConfig, $Out> get $asItemConfig =>
      $base.as((v, t, t2) => _ItemConfigCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ItemConfigCopyWith<$R, $In extends ItemConfig, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get skins;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
  get conclaveUpgrades;
  $R call({
    List<String>? skins,
    List<String>? conclaveUpgrades,
    ColorMap? primaryColor,
    ColorMap? sigilColor,
    ColorMap? attachmentsColor,
    ColorMap? syandanaColor,
  });
  ItemConfigCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemConfigCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ItemConfig, $Out>
    implements ItemConfigCopyWith<$R, ItemConfig, $Out> {
  _ItemConfigCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ItemConfig> $mapper =
      ItemConfigMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get skins =>
      ListCopyWith(
        $value.skins,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(skins: v),
      );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
  get conclaveUpgrades => $value.conclaveUpgrades != null
      ? ListCopyWith(
          $value.conclaveUpgrades!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(conclaveUpgrades: v),
        )
      : null;
  @override
  $R call({
    List<String>? skins,
    Object? conclaveUpgrades = $none,
    Object? primaryColor = $none,
    Object? sigilColor = $none,
    Object? attachmentsColor = $none,
    Object? syandanaColor = $none,
  }) => $apply(
    FieldCopyWithData({
      if (skins != null) #skins: skins,
      if (conclaveUpgrades != $none) #conclaveUpgrades: conclaveUpgrades,
      if (primaryColor != $none) #primaryColor: primaryColor,
      if (sigilColor != $none) #sigilColor: sigilColor,
      if (attachmentsColor != $none) #attachmentsColor: attachmentsColor,
      if (syandanaColor != $none) #syandanaColor: syandanaColor,
    }),
  );
  @override
  ItemConfig $make(CopyWithData data) => ItemConfig(
    skins: data.get(#skins, or: $value.skins),
    conclaveUpgrades: data.get(#conclaveUpgrades, or: $value.conclaveUpgrades),
    primaryColor: data.get(#primaryColor, or: $value.primaryColor),
    sigilColor: data.get(#sigilColor, or: $value.sigilColor),
    attachmentsColor: data.get(#attachmentsColor, or: $value.attachmentsColor),
    syandanaColor: data.get(#syandanaColor, or: $value.syandanaColor),
  );

  @override
  ItemConfigCopyWith<$R2, ItemConfig, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ItemConfigCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

