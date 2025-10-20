// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'daily_deal.dart';

class RawDailyDealMapper extends ClassMapperBase<RawDailyDeal> {
  RawDailyDealMapper._();

  static RawDailyDealMapper? _instance;
  static RawDailyDealMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawDailyDealMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawDailyDeal';

  static Map<String, dynamic>? _$activation(RawDailyDeal v) => v.activation;
  static const Field<RawDailyDeal, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawDailyDeal v) => v.expiry;
  static const Field<RawDailyDeal, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String _$storeItem(RawDailyDeal v) => v.storeItem;
  static const Field<RawDailyDeal, String> _f$storeItem = Field(
    'storeItem',
    _$storeItem,
    key: r'StoreItem',
  );
  static int _$discount(RawDailyDeal v) => v.discount;
  static const Field<RawDailyDeal, int> _f$discount = Field(
    'discount',
    _$discount,
    key: r'Discount',
  );
  static int _$originalPrice(RawDailyDeal v) => v.originalPrice;
  static const Field<RawDailyDeal, int> _f$originalPrice = Field(
    'originalPrice',
    _$originalPrice,
    key: r'OriginalPrice',
  );
  static int _$salePrice(RawDailyDeal v) => v.salePrice;
  static const Field<RawDailyDeal, int> _f$salePrice = Field(
    'salePrice',
    _$salePrice,
    key: r'SalePrice',
  );
  static int _$amountTotal(RawDailyDeal v) => v.amountTotal;
  static const Field<RawDailyDeal, int> _f$amountTotal = Field(
    'amountTotal',
    _$amountTotal,
    key: r'AmountTotal',
  );
  static int _$amountSold(RawDailyDeal v) => v.amountSold;
  static const Field<RawDailyDeal, int> _f$amountSold = Field(
    'amountSold',
    _$amountSold,
    key: r'AmountSold',
  );

  @override
  final MappableFields<RawDailyDeal> fields = const {
    #activation: _f$activation,
    #expiry: _f$expiry,
    #storeItem: _f$storeItem,
    #discount: _f$discount,
    #originalPrice: _f$originalPrice,
    #salePrice: _f$salePrice,
    #amountTotal: _f$amountTotal,
    #amountSold: _f$amountSold,
  };
  @override
  final bool ignoreNull = true;

  static RawDailyDeal _instantiate(DecodingData data) {
    return RawDailyDeal(
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      storeItem: data.dec(_f$storeItem),
      discount: data.dec(_f$discount),
      originalPrice: data.dec(_f$originalPrice),
      salePrice: data.dec(_f$salePrice),
      amountTotal: data.dec(_f$amountTotal),
      amountSold: data.dec(_f$amountSold),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawDailyDeal fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawDailyDeal>(map);
  }

  static RawDailyDeal fromJson(String json) {
    return ensureInitialized().decodeJson<RawDailyDeal>(json);
  }
}

mixin RawDailyDealMappable {
  String toJson() {
    return RawDailyDealMapper.ensureInitialized().encodeJson<RawDailyDeal>(
      this as RawDailyDeal,
    );
  }

  Map<String, dynamic> toMap() {
    return RawDailyDealMapper.ensureInitialized().encodeMap<RawDailyDeal>(
      this as RawDailyDeal,
    );
  }

  RawDailyDealCopyWith<RawDailyDeal, RawDailyDeal, RawDailyDeal> get copyWith =>
      _RawDailyDealCopyWithImpl<RawDailyDeal, RawDailyDeal>(
        this as RawDailyDeal,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawDailyDealMapper.ensureInitialized().stringifyValue(
      this as RawDailyDeal,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawDailyDealMapper.ensureInitialized().equalsValue(
      this as RawDailyDeal,
      other,
    );
  }

  @override
  int get hashCode {
    return RawDailyDealMapper.ensureInitialized().hashValue(
      this as RawDailyDeal,
    );
  }
}

extension RawDailyDealValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawDailyDeal, $Out> {
  RawDailyDealCopyWith<$R, RawDailyDeal, $Out> get $asRawDailyDeal =>
      $base.as((v, t, t2) => _RawDailyDealCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawDailyDealCopyWith<$R, $In extends RawDailyDeal, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  $R call({
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? storeItem,
    int? discount,
    int? originalPrice,
    int? salePrice,
    int? amountTotal,
    int? amountSold,
  });
  RawDailyDealCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawDailyDealCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawDailyDeal, $Out>
    implements RawDailyDealCopyWith<$R, RawDailyDeal, $Out> {
  _RawDailyDealCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawDailyDeal> $mapper =
      RawDailyDealMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation => $value.activation != null
      ? MapCopyWith(
          $value.activation!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(activation: v),
        )
      : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry => $value.expiry != null
      ? MapCopyWith(
          $value.expiry!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(expiry: v),
        )
      : null;
  @override
  $R call({
    Object? activation = $none,
    Object? expiry = $none,
    String? storeItem,
    int? discount,
    int? originalPrice,
    int? salePrice,
    int? amountTotal,
    int? amountSold,
  }) => $apply(
    FieldCopyWithData({
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (storeItem != null) #storeItem: storeItem,
      if (discount != null) #discount: discount,
      if (originalPrice != null) #originalPrice: originalPrice,
      if (salePrice != null) #salePrice: salePrice,
      if (amountTotal != null) #amountTotal: amountTotal,
      if (amountSold != null) #amountSold: amountSold,
    }),
  );
  @override
  RawDailyDeal $make(CopyWithData data) => RawDailyDeal(
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    storeItem: data.get(#storeItem, or: $value.storeItem),
    discount: data.get(#discount, or: $value.discount),
    originalPrice: data.get(#originalPrice, or: $value.originalPrice),
    salePrice: data.get(#salePrice, or: $value.salePrice),
    amountTotal: data.get(#amountTotal, or: $value.amountTotal),
    amountSold: data.get(#amountSold, or: $value.amountSold),
  );

  @override
  RawDailyDealCopyWith<$R2, RawDailyDeal, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawDailyDealCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DailyDealMapper extends ClassMapperBase<DailyDeal> {
  DailyDealMapper._();

  static DailyDealMapper? _instance;
  static DailyDealMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DailyDealMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DailyDeal';

  static String _$id(DailyDeal v) => v.id;
  static const Field<DailyDeal, String> _f$id = Field('id', _$id);
  static DateTime _$activation(DailyDeal v) => v.activation;
  static const Field<DailyDeal, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(DailyDeal v) => v.expiry;
  static const Field<DailyDeal, DateTime> _f$expiry = Field('expiry', _$expiry);
  static String _$item(DailyDeal v) => v.item;
  static const Field<DailyDeal, String> _f$item = Field('item', _$item);
  static int _$discount(DailyDeal v) => v.discount;
  static const Field<DailyDeal, int> _f$discount = Field(
    'discount',
    _$discount,
  );
  static int _$price(DailyDeal v) => v.price;
  static const Field<DailyDeal, int> _f$price = Field('price', _$price);
  static int _$salePrice(DailyDeal v) => v.salePrice;
  static const Field<DailyDeal, int> _f$salePrice = Field(
    'salePrice',
    _$salePrice,
  );
  static int _$total(DailyDeal v) => v.total;
  static const Field<DailyDeal, int> _f$total = Field('total', _$total);
  static int _$sold(DailyDeal v) => v.sold;
  static const Field<DailyDeal, int> _f$sold = Field('sold', _$sold);

  @override
  final MappableFields<DailyDeal> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #item: _f$item,
    #discount: _f$discount,
    #price: _f$price,
    #salePrice: _f$salePrice,
    #total: _f$total,
    #sold: _f$sold,
  };
  @override
  final bool ignoreNull = true;

  static DailyDeal _instantiate(DecodingData data) {
    return DailyDeal(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      item: data.dec(_f$item),
      discount: data.dec(_f$discount),
      price: data.dec(_f$price),
      salePrice: data.dec(_f$salePrice),
      total: data.dec(_f$total),
      sold: data.dec(_f$sold),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DailyDeal fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DailyDeal>(map);
  }

  static DailyDeal fromJson(String json) {
    return ensureInitialized().decodeJson<DailyDeal>(json);
  }
}

mixin DailyDealMappable {
  String toJson() {
    return DailyDealMapper.ensureInitialized().encodeJson<DailyDeal>(
      this as DailyDeal,
    );
  }

  Map<String, dynamic> toMap() {
    return DailyDealMapper.ensureInitialized().encodeMap<DailyDeal>(
      this as DailyDeal,
    );
  }

  DailyDealCopyWith<DailyDeal, DailyDeal, DailyDeal> get copyWith =>
      _DailyDealCopyWithImpl<DailyDeal, DailyDeal>(
        this as DailyDeal,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DailyDealMapper.ensureInitialized().stringifyValue(
      this as DailyDeal,
    );
  }

  @override
  bool operator ==(Object other) {
    return DailyDealMapper.ensureInitialized().equalsValue(
      this as DailyDeal,
      other,
    );
  }

  @override
  int get hashCode {
    return DailyDealMapper.ensureInitialized().hashValue(this as DailyDeal);
  }
}

extension DailyDealValueCopy<$R, $Out> on ObjectCopyWith<$R, DailyDeal, $Out> {
  DailyDealCopyWith<$R, DailyDeal, $Out> get $asDailyDeal =>
      $base.as((v, t, t2) => _DailyDealCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DailyDealCopyWith<$R, $In extends DailyDeal, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? item,
    int? discount,
    int? price,
    int? salePrice,
    int? total,
    int? sold,
  });
  DailyDealCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DailyDealCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DailyDeal, $Out>
    implements DailyDealCopyWith<$R, DailyDeal, $Out> {
  _DailyDealCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DailyDeal> $mapper =
      DailyDealMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? item,
    int? discount,
    int? price,
    int? salePrice,
    int? total,
    int? sold,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (item != null) #item: item,
      if (discount != null) #discount: discount,
      if (price != null) #price: price,
      if (salePrice != null) #salePrice: salePrice,
      if (total != null) #total: total,
      if (sold != null) #sold: sold,
    }),
  );
  @override
  DailyDeal $make(CopyWithData data) => DailyDeal(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    item: data.get(#item, or: $value.item),
    discount: data.get(#discount, or: $value.discount),
    price: data.get(#price, or: $value.price),
    salePrice: data.get(#salePrice, or: $value.salePrice),
    total: data.get(#total, or: $value.total),
    sold: data.get(#sold, or: $value.sold),
  );

  @override
  DailyDealCopyWith<$R2, DailyDeal, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DailyDealCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

