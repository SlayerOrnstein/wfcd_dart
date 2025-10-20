// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'flash_sale.dart';

class RawFlashSaleMapper extends ClassMapperBase<RawFlashSale> {
  RawFlashSaleMapper._();

  static RawFlashSaleMapper? _instance;
  static RawFlashSaleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawFlashSaleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawFlashSale';

  static String _$typeName(RawFlashSale v) => v.typeName;
  static const Field<RawFlashSale, String> _f$typeName = Field(
    'typeName',
    _$typeName,
    key: r'TypeName',
  );
  static bool _$showInMarket(RawFlashSale v) => v.showInMarket;
  static const Field<RawFlashSale, bool> _f$showInMarket = Field(
    'showInMarket',
    _$showInMarket,
    key: r'ShowInMarket',
  );
  static bool _$hideFromMarket(RawFlashSale v) => v.hideFromMarket;
  static const Field<RawFlashSale, bool> _f$hideFromMarket = Field(
    'hideFromMarket',
    _$hideFromMarket,
    key: r'HideFromMarket',
  );
  static bool _$supporterPack(RawFlashSale v) => v.supporterPack;
  static const Field<RawFlashSale, bool> _f$supporterPack = Field(
    'supporterPack',
    _$supporterPack,
    key: r'SupporterPack',
  );
  static num _$discount(RawFlashSale v) => v.discount;
  static const Field<RawFlashSale, num> _f$discount = Field(
    'discount',
    _$discount,
    key: r'Discount',
  );
  static num _$bogoBuy(RawFlashSale v) => v.bogoBuy;
  static const Field<RawFlashSale, num> _f$bogoBuy = Field(
    'bogoBuy',
    _$bogoBuy,
    key: r'BogoBuy',
  );
  static num _$bogoGet(RawFlashSale v) => v.bogoGet;
  static const Field<RawFlashSale, num> _f$bogoGet = Field(
    'bogoGet',
    _$bogoGet,
    key: r'BogoGet',
  );
  static int _$premiumOverride(RawFlashSale v) => v.premiumOverride;
  static const Field<RawFlashSale, int> _f$premiumOverride = Field(
    'premiumOverride',
    _$premiumOverride,
    key: r'PremiumOverride',
  );
  static int _$regularOverride(RawFlashSale v) => v.regularOverride;
  static const Field<RawFlashSale, int> _f$regularOverride = Field(
    'regularOverride',
    _$regularOverride,
    key: r'RegularOverride',
  );
  static Map<String, dynamic> _$startDate(RawFlashSale v) => v.startDate;
  static const Field<RawFlashSale, Map<String, dynamic>> _f$startDate = Field(
    'startDate',
    _$startDate,
    key: r'StartDate',
  );
  static Map<String, dynamic> _$endDate(RawFlashSale v) => v.endDate;
  static const Field<RawFlashSale, Map<String, dynamic>> _f$endDate = Field(
    'endDate',
    _$endDate,
    key: r'EndDate',
  );

  @override
  final MappableFields<RawFlashSale> fields = const {
    #typeName: _f$typeName,
    #showInMarket: _f$showInMarket,
    #hideFromMarket: _f$hideFromMarket,
    #supporterPack: _f$supporterPack,
    #discount: _f$discount,
    #bogoBuy: _f$bogoBuy,
    #bogoGet: _f$bogoGet,
    #premiumOverride: _f$premiumOverride,
    #regularOverride: _f$regularOverride,
    #startDate: _f$startDate,
    #endDate: _f$endDate,
  };
  @override
  final bool ignoreNull = true;

  static RawFlashSale _instantiate(DecodingData data) {
    return RawFlashSale(
      typeName: data.dec(_f$typeName),
      showInMarket: data.dec(_f$showInMarket),
      hideFromMarket: data.dec(_f$hideFromMarket),
      supporterPack: data.dec(_f$supporterPack),
      discount: data.dec(_f$discount),
      bogoBuy: data.dec(_f$bogoBuy),
      bogoGet: data.dec(_f$bogoGet),
      premiumOverride: data.dec(_f$premiumOverride),
      regularOverride: data.dec(_f$regularOverride),
      startDate: data.dec(_f$startDate),
      endDate: data.dec(_f$endDate),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawFlashSale fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawFlashSale>(map);
  }

  static RawFlashSale fromJson(String json) {
    return ensureInitialized().decodeJson<RawFlashSale>(json);
  }
}

mixin RawFlashSaleMappable {
  String toJson() {
    return RawFlashSaleMapper.ensureInitialized().encodeJson<RawFlashSale>(
      this as RawFlashSale,
    );
  }

  Map<String, dynamic> toMap() {
    return RawFlashSaleMapper.ensureInitialized().encodeMap<RawFlashSale>(
      this as RawFlashSale,
    );
  }

  RawFlashSaleCopyWith<RawFlashSale, RawFlashSale, RawFlashSale> get copyWith =>
      _RawFlashSaleCopyWithImpl<RawFlashSale, RawFlashSale>(
        this as RawFlashSale,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawFlashSaleMapper.ensureInitialized().stringifyValue(
      this as RawFlashSale,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawFlashSaleMapper.ensureInitialized().equalsValue(
      this as RawFlashSale,
      other,
    );
  }

  @override
  int get hashCode {
    return RawFlashSaleMapper.ensureInitialized().hashValue(
      this as RawFlashSale,
    );
  }
}

extension RawFlashSaleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawFlashSale, $Out> {
  RawFlashSaleCopyWith<$R, RawFlashSale, $Out> get $asRawFlashSale =>
      $base.as((v, t, t2) => _RawFlashSaleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawFlashSaleCopyWith<$R, $In extends RawFlashSale, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get startDate;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get endDate;
  $R call({
    String? typeName,
    bool? showInMarket,
    bool? hideFromMarket,
    bool? supporterPack,
    num? discount,
    num? bogoBuy,
    num? bogoGet,
    int? premiumOverride,
    int? regularOverride,
    Map<String, dynamic>? startDate,
    Map<String, dynamic>? endDate,
  });
  RawFlashSaleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawFlashSaleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawFlashSale, $Out>
    implements RawFlashSaleCopyWith<$R, RawFlashSale, $Out> {
  _RawFlashSaleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawFlashSale> $mapper =
      RawFlashSaleMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get startDate => MapCopyWith(
    $value.startDate,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(startDate: v),
  );
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get endDate => MapCopyWith(
    $value.endDate,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(endDate: v),
  );
  @override
  $R call({
    String? typeName,
    bool? showInMarket,
    bool? hideFromMarket,
    bool? supporterPack,
    num? discount,
    num? bogoBuy,
    num? bogoGet,
    int? premiumOverride,
    int? regularOverride,
    Map<String, dynamic>? startDate,
    Map<String, dynamic>? endDate,
  }) => $apply(
    FieldCopyWithData({
      if (typeName != null) #typeName: typeName,
      if (showInMarket != null) #showInMarket: showInMarket,
      if (hideFromMarket != null) #hideFromMarket: hideFromMarket,
      if (supporterPack != null) #supporterPack: supporterPack,
      if (discount != null) #discount: discount,
      if (bogoBuy != null) #bogoBuy: bogoBuy,
      if (bogoGet != null) #bogoGet: bogoGet,
      if (premiumOverride != null) #premiumOverride: premiumOverride,
      if (regularOverride != null) #regularOverride: regularOverride,
      if (startDate != null) #startDate: startDate,
      if (endDate != null) #endDate: endDate,
    }),
  );
  @override
  RawFlashSale $make(CopyWithData data) => RawFlashSale(
    typeName: data.get(#typeName, or: $value.typeName),
    showInMarket: data.get(#showInMarket, or: $value.showInMarket),
    hideFromMarket: data.get(#hideFromMarket, or: $value.hideFromMarket),
    supporterPack: data.get(#supporterPack, or: $value.supporterPack),
    discount: data.get(#discount, or: $value.discount),
    bogoBuy: data.get(#bogoBuy, or: $value.bogoBuy),
    bogoGet: data.get(#bogoGet, or: $value.bogoGet),
    premiumOverride: data.get(#premiumOverride, or: $value.premiumOverride),
    regularOverride: data.get(#regularOverride, or: $value.regularOverride),
    startDate: data.get(#startDate, or: $value.startDate),
    endDate: data.get(#endDate, or: $value.endDate),
  );

  @override
  RawFlashSaleCopyWith<$R2, RawFlashSale, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawFlashSaleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FlashSaleMapper extends ClassMapperBase<FlashSale> {
  FlashSaleMapper._();

  static FlashSaleMapper? _instance;
  static FlashSaleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FlashSaleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FlashSale';

  static String _$id(FlashSale v) => v.id;
  static const Field<FlashSale, String> _f$id = Field('id', _$id);
  static DateTime? _$activation(FlashSale v) => v.activation;
  static const Field<FlashSale, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime? _$expiry(FlashSale v) => v.expiry;
  static const Field<FlashSale, DateTime> _f$expiry = Field('expiry', _$expiry);
  static String _$item(FlashSale v) => v.item;
  static const Field<FlashSale, String> _f$item = Field('item', _$item);
  static bool _$shownInMarket(FlashSale v) => v.shownInMarket;
  static const Field<FlashSale, bool> _f$shownInMarket = Field(
    'shownInMarket',
    _$shownInMarket,
  );
  static bool _$isSupporterPack(FlashSale v) => v.isSupporterPack;
  static const Field<FlashSale, bool> _f$isSupporterPack = Field(
    'isSupporterPack',
    _$isSupporterPack,
  );
  static num _$discount(FlashSale v) => v.discount;
  static const Field<FlashSale, num> _f$discount = Field(
    'discount',
    _$discount,
  );
  static int _$premiumOverride(FlashSale v) => v.premiumOverride;
  static const Field<FlashSale, int> _f$premiumOverride = Field(
    'premiumOverride',
    _$premiumOverride,
  );
  static int _$regularOverride(FlashSale v) => v.regularOverride;
  static const Field<FlashSale, int> _f$regularOverride = Field(
    'regularOverride',
    _$regularOverride,
  );

  @override
  final MappableFields<FlashSale> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #item: _f$item,
    #shownInMarket: _f$shownInMarket,
    #isSupporterPack: _f$isSupporterPack,
    #discount: _f$discount,
    #premiumOverride: _f$premiumOverride,
    #regularOverride: _f$regularOverride,
  };
  @override
  final bool ignoreNull = true;

  static FlashSale _instantiate(DecodingData data) {
    return FlashSale(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      item: data.dec(_f$item),
      shownInMarket: data.dec(_f$shownInMarket),
      isSupporterPack: data.dec(_f$isSupporterPack),
      discount: data.dec(_f$discount),
      premiumOverride: data.dec(_f$premiumOverride),
      regularOverride: data.dec(_f$regularOverride),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FlashSale fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FlashSale>(map);
  }

  static FlashSale fromJson(String json) {
    return ensureInitialized().decodeJson<FlashSale>(json);
  }
}

mixin FlashSaleMappable {
  String toJson() {
    return FlashSaleMapper.ensureInitialized().encodeJson<FlashSale>(
      this as FlashSale,
    );
  }

  Map<String, dynamic> toMap() {
    return FlashSaleMapper.ensureInitialized().encodeMap<FlashSale>(
      this as FlashSale,
    );
  }

  FlashSaleCopyWith<FlashSale, FlashSale, FlashSale> get copyWith =>
      _FlashSaleCopyWithImpl<FlashSale, FlashSale>(
        this as FlashSale,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FlashSaleMapper.ensureInitialized().stringifyValue(
      this as FlashSale,
    );
  }

  @override
  bool operator ==(Object other) {
    return FlashSaleMapper.ensureInitialized().equalsValue(
      this as FlashSale,
      other,
    );
  }

  @override
  int get hashCode {
    return FlashSaleMapper.ensureInitialized().hashValue(this as FlashSale);
  }
}

extension FlashSaleValueCopy<$R, $Out> on ObjectCopyWith<$R, FlashSale, $Out> {
  FlashSaleCopyWith<$R, FlashSale, $Out> get $asFlashSale =>
      $base.as((v, t, t2) => _FlashSaleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FlashSaleCopyWith<$R, $In extends FlashSale, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? item,
    bool? shownInMarket,
    bool? isSupporterPack,
    num? discount,
    int? premiumOverride,
    int? regularOverride,
  });
  FlashSaleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FlashSaleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FlashSale, $Out>
    implements FlashSaleCopyWith<$R, FlashSale, $Out> {
  _FlashSaleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FlashSale> $mapper =
      FlashSaleMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? item,
    bool? shownInMarket,
    bool? isSupporterPack,
    num? discount,
    int? premiumOverride,
    int? regularOverride,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (item != null) #item: item,
      if (shownInMarket != null) #shownInMarket: shownInMarket,
      if (isSupporterPack != null) #isSupporterPack: isSupporterPack,
      if (discount != null) #discount: discount,
      if (premiumOverride != null) #premiumOverride: premiumOverride,
      if (regularOverride != null) #regularOverride: regularOverride,
    }),
  );
  @override
  FlashSale $make(CopyWithData data) => FlashSale(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    item: data.get(#item, or: $value.item),
    shownInMarket: data.get(#shownInMarket, or: $value.shownInMarket),
    isSupporterPack: data.get(#isSupporterPack, or: $value.isSupporterPack),
    discount: data.get(#discount, or: $value.discount),
    premiumOverride: data.get(#premiumOverride, or: $value.premiumOverride),
    regularOverride: data.get(#regularOverride, or: $value.regularOverride),
  );

  @override
  FlashSaleCopyWith<$R2, FlashSale, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FlashSaleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

