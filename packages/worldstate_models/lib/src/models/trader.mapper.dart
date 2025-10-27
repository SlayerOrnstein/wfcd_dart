// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'trader.dart';

class RawTraderMapper extends ClassMapperBase<RawTrader> {
  RawTraderMapper._();

  static RawTraderMapper? _instance;
  static RawTraderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawTraderMapper._());
      RawScheduleInfoMapper.ensureInitialized();
      RawTraderItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawTrader';

  static Map<String, dynamic> _$id(RawTrader v) => v.id;
  static const Field<RawTrader, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static Map<String, dynamic>? _$activation(RawTrader v) => v.activation;
  static const Field<RawTrader, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawTrader v) => v.expiry;
  static const Field<RawTrader, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static Map<String, dynamic>? _$initialStartDate(RawTrader v) =>
      v.initialStartDate;
  static const Field<RawTrader, Map<String, dynamic>> _f$initialStartDate =
      Field('initialStartDate', _$initialStartDate, key: r'InitialStartDate');
  static String _$node(RawTrader v) => v.node;
  static const Field<RawTrader, String> _f$node = Field(
    'node',
    _$node,
    key: r'Node',
  );
  static String? _$character(RawTrader v) => v.character;
  static const Field<RawTrader, String> _f$character = Field(
    'character',
    _$character,
    key: r'Character',
  );
  static List<RawScheduleInfo> _$scheduleInfo(RawTrader v) => v.scheduleInfo;
  static const Field<RawTrader, List<RawScheduleInfo>> _f$scheduleInfo = Field(
    'scheduleInfo',
    _$scheduleInfo,
    key: r'ScheduleInfo',
  );
  static List<RawTraderItem> _$manifest(RawTrader v) => v.manifest;
  static const Field<RawTrader, List<RawTraderItem>> _f$manifest = Field(
    'manifest',
    _$manifest,
    key: r'Manifest',
    opt: true,
    def: const [],
  );
  static List<RawTraderItem>? _$evergreenManifest(RawTrader v) =>
      v.evergreenManifest;
  static const Field<RawTrader, List<RawTraderItem>> _f$evergreenManifest =
      Field(
        'evergreenManifest',
        _$evergreenManifest,
        key: r'EvergreenManifest',
        opt: true,
        def: const [],
      );

  @override
  final MappableFields<RawTrader> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #initialStartDate: _f$initialStartDate,
    #node: _f$node,
    #character: _f$character,
    #scheduleInfo: _f$scheduleInfo,
    #manifest: _f$manifest,
    #evergreenManifest: _f$evergreenManifest,
  };
  @override
  final bool ignoreNull = true;

  static RawTrader _instantiate(DecodingData data) {
    return RawTrader(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      initialStartDate: data.dec(_f$initialStartDate),
      node: data.dec(_f$node),
      character: data.dec(_f$character),
      scheduleInfo: data.dec(_f$scheduleInfo),
      manifest: data.dec(_f$manifest),
      evergreenManifest: data.dec(_f$evergreenManifest),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawTrader fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawTrader>(map);
  }

  static RawTrader fromJson(String json) {
    return ensureInitialized().decodeJson<RawTrader>(json);
  }
}

mixin RawTraderMappable {
  String toJson() {
    return RawTraderMapper.ensureInitialized().encodeJson<RawTrader>(
      this as RawTrader,
    );
  }

  Map<String, dynamic> toMap() {
    return RawTraderMapper.ensureInitialized().encodeMap<RawTrader>(
      this as RawTrader,
    );
  }

  RawTraderCopyWith<RawTrader, RawTrader, RawTrader> get copyWith =>
      _RawTraderCopyWithImpl<RawTrader, RawTrader>(
        this as RawTrader,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawTraderMapper.ensureInitialized().stringifyValue(
      this as RawTrader,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawTraderMapper.ensureInitialized().equalsValue(
      this as RawTrader,
      other,
    );
  }

  @override
  int get hashCode {
    return RawTraderMapper.ensureInitialized().hashValue(this as RawTrader);
  }
}

extension RawTraderValueCopy<$R, $Out> on ObjectCopyWith<$R, RawTrader, $Out> {
  RawTraderCopyWith<$R, RawTrader, $Out> get $asRawTrader =>
      $base.as((v, t, t2) => _RawTraderCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawTraderCopyWith<$R, $In extends RawTrader, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get initialStartDate;
  ListCopyWith<
    $R,
    RawScheduleInfo,
    ObjectCopyWith<$R, RawScheduleInfo, RawScheduleInfo>
  >
  get scheduleInfo;
  ListCopyWith<
    $R,
    RawTraderItem,
    ObjectCopyWith<$R, RawTraderItem, RawTraderItem>
  >
  get manifest;
  ListCopyWith<
    $R,
    RawTraderItem,
    ObjectCopyWith<$R, RawTraderItem, RawTraderItem>
  >?
  get evergreenManifest;
  $R call({
    Map<String, dynamic>? id,
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    Map<String, dynamic>? initialStartDate,
    String? node,
    String? character,
    List<RawScheduleInfo>? scheduleInfo,
    List<RawTraderItem>? manifest,
    List<RawTraderItem>? evergreenManifest,
  });
  RawTraderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawTraderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawTrader, $Out>
    implements RawTraderCopyWith<$R, RawTrader, $Out> {
  _RawTraderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawTrader> $mapper =
      RawTraderMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get id => MapCopyWith(
    $value.id,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(id: v),
  );
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
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get initialStartDate => $value.initialStartDate != null
      ? MapCopyWith(
          $value.initialStartDate!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(initialStartDate: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    RawScheduleInfo,
    ObjectCopyWith<$R, RawScheduleInfo, RawScheduleInfo>
  >
  get scheduleInfo => ListCopyWith(
    $value.scheduleInfo,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(scheduleInfo: v),
  );
  @override
  ListCopyWith<
    $R,
    RawTraderItem,
    ObjectCopyWith<$R, RawTraderItem, RawTraderItem>
  >
  get manifest => ListCopyWith(
    $value.manifest,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(manifest: v),
  );
  @override
  ListCopyWith<
    $R,
    RawTraderItem,
    ObjectCopyWith<$R, RawTraderItem, RawTraderItem>
  >?
  get evergreenManifest => $value.evergreenManifest != null
      ? ListCopyWith(
          $value.evergreenManifest!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(evergreenManifest: v),
        )
      : null;
  @override
  $R call({
    Map<String, dynamic>? id,
    Object? activation = $none,
    Object? expiry = $none,
    Object? initialStartDate = $none,
    String? node,
    Object? character = $none,
    List<RawScheduleInfo>? scheduleInfo,
    List<RawTraderItem>? manifest,
    Object? evergreenManifest = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (initialStartDate != $none) #initialStartDate: initialStartDate,
      if (node != null) #node: node,
      if (character != $none) #character: character,
      if (scheduleInfo != null) #scheduleInfo: scheduleInfo,
      if (manifest != null) #manifest: manifest,
      if (evergreenManifest != $none) #evergreenManifest: evergreenManifest,
    }),
  );
  @override
  RawTrader $make(CopyWithData data) => RawTrader(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    initialStartDate: data.get(#initialStartDate, or: $value.initialStartDate),
    node: data.get(#node, or: $value.node),
    character: data.get(#character, or: $value.character),
    scheduleInfo: data.get(#scheduleInfo, or: $value.scheduleInfo),
    manifest: data.get(#manifest, or: $value.manifest),
    evergreenManifest: data.get(
      #evergreenManifest,
      or: $value.evergreenManifest,
    ),
  );

  @override
  RawTraderCopyWith<$R2, RawTrader, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawTraderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawScheduleInfoMapper extends RecordMapperBase<RawScheduleInfo> {
  static RawScheduleInfoMapper? _instance;
  RawScheduleInfoMapper._();

  static RawScheduleInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawScheduleInfoMapper._());
      MapperBase.addType(
        <A, B, C>(f) => f<({A expiry, B featuredItem, C previewHiddenUntil})>(),
      );
    }
    return _instance!;
  }

  static Map<String, dynamic> _$expiry(RawScheduleInfo v) => v.expiry;
  static const Field<RawScheduleInfo, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static Map<String, dynamic> _$previewHiddenUntil(RawScheduleInfo v) =>
      v.previewHiddenUntil;
  static const Field<RawScheduleInfo, Map<String, dynamic>>
  _f$previewHiddenUntil = Field(
    'previewHiddenUntil',
    _$previewHiddenUntil,
    key: r'PreviewHiddenUntil',
  );
  static String? _$featuredItem(RawScheduleInfo v) => v.featuredItem;
  static const Field<RawScheduleInfo, String> _f$featuredItem = Field(
    'featuredItem',
    _$featuredItem,
    key: r'FeaturedItem',
  );

  @override
  final MappableFields<RawScheduleInfo> fields = const {
    #expiry: _f$expiry,
    #previewHiddenUntil: _f$previewHiddenUntil,
    #featuredItem: _f$featuredItem,
  };

  @override
  Function get typeFactory =>
      (f) => f<RawScheduleInfo>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static RawScheduleInfo _instantiate(DecodingData<RawScheduleInfo> data) {
    return (
      expiry: data.dec(_f$expiry),
      previewHiddenUntil: data.dec(_f$previewHiddenUntil),
      featuredItem: data.dec(_f$featuredItem),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawScheduleInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawScheduleInfo>(map);
  }

  static RawScheduleInfo fromJson(String json) {
    return ensureInitialized().decodeJson<RawScheduleInfo>(json);
  }
}

extension RawScheduleInfoMappable on RawScheduleInfo {
  Map<String, dynamic> toMap() {
    return RawScheduleInfoMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return RawScheduleInfoMapper.ensureInitialized().encodeJson(this);
  }

  RawScheduleInfoCopyWith<RawScheduleInfo> get copyWith =>
      _RawScheduleInfoCopyWithImpl(this, $identity, $identity);
}

extension RawScheduleInfoValueCopy<$R>
    on ObjectCopyWith<$R, RawScheduleInfo, RawScheduleInfo> {
  RawScheduleInfoCopyWith<$R> get $asRawScheduleInfo =>
      $base.as((v, t, t2) => _RawScheduleInfoCopyWithImpl(v, t, t2));
}

abstract class RawScheduleInfoCopyWith<$R>
    implements RecordCopyWith<$R, RawScheduleInfo> {
  $R call({
    Map<String, dynamic>? expiry,
    Map<String, dynamic>? previewHiddenUntil,
    String? featuredItem,
  });
  RawScheduleInfoCopyWith<$R2> $chain<$R2>(Then<RawScheduleInfo, $R2> t);
}

class _RawScheduleInfoCopyWithImpl<$R>
    extends RecordCopyWithBase<$R, RawScheduleInfo>
    implements RawScheduleInfoCopyWith<$R> {
  _RawScheduleInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<RawScheduleInfo> $mapper =
      RawScheduleInfoMapper.ensureInitialized();
  @override
  $R call({
    Map<String, dynamic>? expiry,
    Map<String, dynamic>? previewHiddenUntil,
    Object? featuredItem = $none,
  }) => $apply(
    FieldCopyWithData({
      if (expiry != null) #expiry: expiry,
      if (previewHiddenUntil != null) #previewHiddenUntil: previewHiddenUntil,
      if (featuredItem != $none) #featuredItem: featuredItem,
    }),
  );
  @override
  RawScheduleInfo $make(CopyWithData data) => (
    expiry: data.get(#expiry, or: $value.expiry),
    previewHiddenUntil: data.get(
      #previewHiddenUntil,
      or: $value.previewHiddenUntil,
    ),
    featuredItem: data.get(#featuredItem, or: $value.featuredItem),
  );

  @override
  RawScheduleInfoCopyWith<$R2> $chain<$R2>(Then<RawScheduleInfo, $R2> t) =>
      _RawScheduleInfoCopyWithImpl($value, $cast, t);
}

class RawTraderItemMapper extends RecordMapperBase<RawTraderItem> {
  static RawTraderItemMapper? _instance;
  RawTraderItemMapper._();

  static RawTraderItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawTraderItemMapper._());
      MapperBase.addType(
        <A, B, C>(f) => f<({A itemType, B primePrice, C regularPrice})>(),
      );
    }
    return _instance!;
  }

  static String _$itemType(RawTraderItem v) => v.itemType;
  static const Field<RawTraderItem, String> _f$itemType = Field(
    'itemType',
    _$itemType,
    key: r'ItemType',
  );
  static int? _$primePrice(RawTraderItem v) => v.primePrice;
  static const Field<RawTraderItem, int> _f$primePrice = Field(
    'primePrice',
    _$primePrice,
    key: r'PrimePrice',
  );
  static int? _$regularPrice(RawTraderItem v) => v.regularPrice;
  static const Field<RawTraderItem, int> _f$regularPrice = Field(
    'regularPrice',
    _$regularPrice,
    key: r'RegularPrice',
  );

  @override
  final MappableFields<RawTraderItem> fields = const {
    #itemType: _f$itemType,
    #primePrice: _f$primePrice,
    #regularPrice: _f$regularPrice,
  };

  @override
  Function get typeFactory =>
      (f) => f<RawTraderItem>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static RawTraderItem _instantiate(DecodingData<RawTraderItem> data) {
    return (
      itemType: data.dec(_f$itemType),
      primePrice: data.dec(_f$primePrice),
      regularPrice: data.dec(_f$regularPrice),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawTraderItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawTraderItem>(map);
  }

  static RawTraderItem fromJson(String json) {
    return ensureInitialized().decodeJson<RawTraderItem>(json);
  }
}

extension RawTraderItemMappable on RawTraderItem {
  Map<String, dynamic> toMap() {
    return RawTraderItemMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return RawTraderItemMapper.ensureInitialized().encodeJson(this);
  }

  RawTraderItemCopyWith<RawTraderItem> get copyWith =>
      _RawTraderItemCopyWithImpl(this, $identity, $identity);
}

extension RawTraderItemValueCopy<$R>
    on ObjectCopyWith<$R, RawTraderItem, RawTraderItem> {
  RawTraderItemCopyWith<$R> get $asRawTraderItem =>
      $base.as((v, t, t2) => _RawTraderItemCopyWithImpl(v, t, t2));
}

abstract class RawTraderItemCopyWith<$R>
    implements RecordCopyWith<$R, RawTraderItem> {
  $R call({String? itemType, int? primePrice, int? regularPrice});
  RawTraderItemCopyWith<$R2> $chain<$R2>(Then<RawTraderItem, $R2> t);
}

class _RawTraderItemCopyWithImpl<$R>
    extends RecordCopyWithBase<$R, RawTraderItem>
    implements RawTraderItemCopyWith<$R> {
  _RawTraderItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<RawTraderItem> $mapper =
      RawTraderItemMapper.ensureInitialized();
  @override
  $R call({
    String? itemType,
    Object? primePrice = $none,
    Object? regularPrice = $none,
  }) => $apply(
    FieldCopyWithData({
      if (itemType != null) #itemType: itemType,
      if (primePrice != $none) #primePrice: primePrice,
      if (regularPrice != $none) #regularPrice: regularPrice,
    }),
  );
  @override
  RawTraderItem $make(CopyWithData data) => (
    itemType: data.get(#itemType, or: $value.itemType),
    primePrice: data.get(#primePrice, or: $value.primePrice),
    regularPrice: data.get(#regularPrice, or: $value.regularPrice),
  );

  @override
  RawTraderItemCopyWith<$R2> $chain<$R2>(Then<RawTraderItem, $R2> t) =>
      _RawTraderItemCopyWithImpl($value, $cast, t);
}

class TraderMapper extends ClassMapperBase<Trader> {
  TraderMapper._();

  static TraderMapper? _instance;
  static TraderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TraderMapper._());
      TraderItemMapper.ensureInitialized();
      ScheduleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Trader';

  static String _$id(Trader v) => v.id;
  static const Field<Trader, String> _f$id = Field('id', _$id);
  static DateTime _$activation(Trader v) => v.activation;
  static const Field<Trader, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(Trader v) => v.expiry;
  static const Field<Trader, DateTime> _f$expiry = Field('expiry', _$expiry);
  static DateTime? _$initialStartDate(Trader v) => v.initialStartDate;
  static const Field<Trader, DateTime> _f$initialStartDate = Field(
    'initialStartDate',
    _$initialStartDate,
  );
  static String _$node(Trader v) => v.node;
  static const Field<Trader, String> _f$node = Field('node', _$node);
  static String _$character(Trader v) => v.character;
  static const Field<Trader, String> _f$character = Field(
    'character',
    _$character,
  );
  static List<TraderItem> _$inventory(Trader v) => v.inventory;
  static const Field<Trader, List<TraderItem>> _f$inventory = Field(
    'inventory',
    _$inventory,
  );
  static List<TraderItem>? _$evergreenItems(Trader v) => v.evergreenItems;
  static const Field<Trader, List<TraderItem>> _f$evergreenItems = Field(
    'evergreenItems',
    _$evergreenItems,
  );
  static List<Schedule> _$schedule(Trader v) => v.schedule;
  static const Field<Trader, List<Schedule>> _f$schedule = Field(
    'schedule',
    _$schedule,
  );

  @override
  final MappableFields<Trader> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #initialStartDate: _f$initialStartDate,
    #node: _f$node,
    #character: _f$character,
    #inventory: _f$inventory,
    #evergreenItems: _f$evergreenItems,
    #schedule: _f$schedule,
  };
  @override
  final bool ignoreNull = true;

  static Trader _instantiate(DecodingData data) {
    return Trader(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      initialStartDate: data.dec(_f$initialStartDate),
      node: data.dec(_f$node),
      character: data.dec(_f$character),
      inventory: data.dec(_f$inventory),
      evergreenItems: data.dec(_f$evergreenItems),
      schedule: data.dec(_f$schedule),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Trader fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Trader>(map);
  }

  static Trader fromJson(String json) {
    return ensureInitialized().decodeJson<Trader>(json);
  }
}

mixin TraderMappable {
  String toJson() {
    return TraderMapper.ensureInitialized().encodeJson<Trader>(this as Trader);
  }

  Map<String, dynamic> toMap() {
    return TraderMapper.ensureInitialized().encodeMap<Trader>(this as Trader);
  }

  TraderCopyWith<Trader, Trader, Trader> get copyWith =>
      _TraderCopyWithImpl<Trader, Trader>(this as Trader, $identity, $identity);
  @override
  String toString() {
    return TraderMapper.ensureInitialized().stringifyValue(this as Trader);
  }

  @override
  bool operator ==(Object other) {
    return TraderMapper.ensureInitialized().equalsValue(this as Trader, other);
  }

  @override
  int get hashCode {
    return TraderMapper.ensureInitialized().hashValue(this as Trader);
  }
}

extension TraderValueCopy<$R, $Out> on ObjectCopyWith<$R, Trader, $Out> {
  TraderCopyWith<$R, Trader, $Out> get $asTrader =>
      $base.as((v, t, t2) => _TraderCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TraderCopyWith<$R, $In extends Trader, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, TraderItem, ObjectCopyWith<$R, TraderItem, TraderItem>>
  get inventory;
  ListCopyWith<$R, TraderItem, ObjectCopyWith<$R, TraderItem, TraderItem>>?
  get evergreenItems;
  ListCopyWith<$R, Schedule, ObjectCopyWith<$R, Schedule, Schedule>>
  get schedule;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    DateTime? initialStartDate,
    String? node,
    String? character,
    List<TraderItem>? inventory,
    List<TraderItem>? evergreenItems,
    List<Schedule>? schedule,
  });
  TraderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TraderCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Trader, $Out>
    implements TraderCopyWith<$R, Trader, $Out> {
  _TraderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Trader> $mapper = TraderMapper.ensureInitialized();
  @override
  ListCopyWith<$R, TraderItem, ObjectCopyWith<$R, TraderItem, TraderItem>>
  get inventory => ListCopyWith(
    $value.inventory,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(inventory: v),
  );
  @override
  ListCopyWith<$R, TraderItem, ObjectCopyWith<$R, TraderItem, TraderItem>>?
  get evergreenItems => $value.evergreenItems != null
      ? ListCopyWith(
          $value.evergreenItems!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(evergreenItems: v),
        )
      : null;
  @override
  ListCopyWith<$R, Schedule, ObjectCopyWith<$R, Schedule, Schedule>>
  get schedule => ListCopyWith(
    $value.schedule,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(schedule: v),
  );
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    Object? initialStartDate = $none,
    String? node,
    String? character,
    List<TraderItem>? inventory,
    Object? evergreenItems = $none,
    List<Schedule>? schedule,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (initialStartDate != $none) #initialStartDate: initialStartDate,
      if (node != null) #node: node,
      if (character != null) #character: character,
      if (inventory != null) #inventory: inventory,
      if (evergreenItems != $none) #evergreenItems: evergreenItems,
      if (schedule != null) #schedule: schedule,
    }),
  );
  @override
  Trader $make(CopyWithData data) => Trader(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    initialStartDate: data.get(#initialStartDate, or: $value.initialStartDate),
    node: data.get(#node, or: $value.node),
    character: data.get(#character, or: $value.character),
    inventory: data.get(#inventory, or: $value.inventory),
    evergreenItems: data.get(#evergreenItems, or: $value.evergreenItems),
    schedule: data.get(#schedule, or: $value.schedule),
  );

  @override
  TraderCopyWith<$R2, Trader, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TraderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TraderItemMapper extends RecordMapperBase<TraderItem> {
  static TraderItemMapper? _instance;
  TraderItemMapper._();

  static TraderItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TraderItemMapper._());
      MapperBase.addType(
        <A, B, C>(f) => f<({A name, B primePrice, C regularPrice})>(),
      );
    }
    return _instance!;
  }

  static String _$name(TraderItem v) => v.name;
  static const Field<TraderItem, String> _f$name = Field('name', _$name);
  static int _$primePrice(TraderItem v) => v.primePrice;
  static const Field<TraderItem, int> _f$primePrice = Field(
    'primePrice',
    _$primePrice,
  );
  static int _$regularPrice(TraderItem v) => v.regularPrice;
  static const Field<TraderItem, int> _f$regularPrice = Field(
    'regularPrice',
    _$regularPrice,
  );

  @override
  final MappableFields<TraderItem> fields = const {
    #name: _f$name,
    #primePrice: _f$primePrice,
    #regularPrice: _f$regularPrice,
  };

  @override
  Function get typeFactory =>
      (f) => f<TraderItem>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static TraderItem _instantiate(DecodingData<TraderItem> data) {
    return (
      name: data.dec(_f$name),
      primePrice: data.dec(_f$primePrice),
      regularPrice: data.dec(_f$regularPrice),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TraderItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TraderItem>(map);
  }

  static TraderItem fromJson(String json) {
    return ensureInitialized().decodeJson<TraderItem>(json);
  }
}

extension TraderItemMappable on TraderItem {
  Map<String, dynamic> toMap() {
    return TraderItemMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return TraderItemMapper.ensureInitialized().encodeJson(this);
  }

  TraderItemCopyWith<TraderItem> get copyWith =>
      _TraderItemCopyWithImpl(this, $identity, $identity);
}

extension TraderItemValueCopy<$R>
    on ObjectCopyWith<$R, TraderItem, TraderItem> {
  TraderItemCopyWith<$R> get $asTraderItem =>
      $base.as((v, t, t2) => _TraderItemCopyWithImpl(v, t, t2));
}

abstract class TraderItemCopyWith<$R>
    implements RecordCopyWith<$R, TraderItem> {
  $R call({String? name, int? primePrice, int? regularPrice});
  TraderItemCopyWith<$R2> $chain<$R2>(Then<TraderItem, $R2> t);
}

class _TraderItemCopyWithImpl<$R> extends RecordCopyWithBase<$R, TraderItem>
    implements TraderItemCopyWith<$R> {
  _TraderItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<TraderItem> $mapper =
      TraderItemMapper.ensureInitialized();
  @override
  $R call({String? name, int? primePrice, int? regularPrice}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (primePrice != null) #primePrice: primePrice,
      if (regularPrice != null) #regularPrice: regularPrice,
    }),
  );
  @override
  TraderItem $make(CopyWithData data) => (
    name: data.get(#name, or: $value.name),
    primePrice: data.get(#primePrice, or: $value.primePrice),
    regularPrice: data.get(#regularPrice, or: $value.regularPrice),
  );

  @override
  TraderItemCopyWith<$R2> $chain<$R2>(Then<TraderItem, $R2> t) =>
      _TraderItemCopyWithImpl($value, $cast, t);
}

class ScheduleMapper extends RecordMapperBase<Schedule> {
  static ScheduleMapper? _instance;
  ScheduleMapper._();

  static ScheduleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ScheduleMapper._());
      MapperBase.addType(
        <A, B, C, D>(f) =>
            f<({A expiry, B key, C previewHiddenUntil, D resurgence})>(),
      );
    }
    return _instance!;
  }

  static DateTime _$expiry(Schedule v) => v.expiry;
  static const Field<Schedule, DateTime> _f$expiry = Field('expiry', _$expiry);
  static DateTime _$previewHiddenUntil(Schedule v) => v.previewHiddenUntil;
  static const Field<Schedule, DateTime> _f$previewHiddenUntil = Field(
    'previewHiddenUntil',
    _$previewHiddenUntil,
  );
  static String? _$key(Schedule v) => v.key;
  static const Field<Schedule, String> _f$key = Field('key', _$key);
  static String? _$resurgence(Schedule v) => v.resurgence;
  static const Field<Schedule, String> _f$resurgence = Field(
    'resurgence',
    _$resurgence,
  );

  @override
  final MappableFields<Schedule> fields = const {
    #expiry: _f$expiry,
    #previewHiddenUntil: _f$previewHiddenUntil,
    #key: _f$key,
    #resurgence: _f$resurgence,
  };

  @override
  Function get typeFactory =>
      (f) => f<Schedule>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static Schedule _instantiate(DecodingData<Schedule> data) {
    return (
      expiry: data.dec(_f$expiry),
      previewHiddenUntil: data.dec(_f$previewHiddenUntil),
      key: data.dec(_f$key),
      resurgence: data.dec(_f$resurgence),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Schedule fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Schedule>(map);
  }

  static Schedule fromJson(String json) {
    return ensureInitialized().decodeJson<Schedule>(json);
  }
}

extension ScheduleMappable on Schedule {
  Map<String, dynamic> toMap() {
    return ScheduleMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return ScheduleMapper.ensureInitialized().encodeJson(this);
  }

  ScheduleCopyWith<Schedule> get copyWith =>
      _ScheduleCopyWithImpl(this, $identity, $identity);
}

extension ScheduleValueCopy<$R> on ObjectCopyWith<$R, Schedule, Schedule> {
  ScheduleCopyWith<$R> get $asSchedule =>
      $base.as((v, t, t2) => _ScheduleCopyWithImpl(v, t, t2));
}

abstract class ScheduleCopyWith<$R> implements RecordCopyWith<$R, Schedule> {
  $R call({
    DateTime? expiry,
    DateTime? previewHiddenUntil,
    String? key,
    String? resurgence,
  });
  ScheduleCopyWith<$R2> $chain<$R2>(Then<Schedule, $R2> t);
}

class _ScheduleCopyWithImpl<$R> extends RecordCopyWithBase<$R, Schedule>
    implements ScheduleCopyWith<$R> {
  _ScheduleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<Schedule> $mapper =
      ScheduleMapper.ensureInitialized();
  @override
  $R call({
    DateTime? expiry,
    DateTime? previewHiddenUntil,
    Object? key = $none,
    Object? resurgence = $none,
  }) => $apply(
    FieldCopyWithData({
      if (expiry != null) #expiry: expiry,
      if (previewHiddenUntil != null) #previewHiddenUntil: previewHiddenUntil,
      if (key != $none) #key: key,
      if (resurgence != $none) #resurgence: resurgence,
    }),
  );
  @override
  Schedule $make(CopyWithData data) => (
    expiry: data.get(#expiry, or: $value.expiry),
    previewHiddenUntil: data.get(
      #previewHiddenUntil,
      or: $value.previewHiddenUntil,
    ),
    key: data.get(#key, or: $value.key),
    resurgence: data.get(#resurgence, or: $value.resurgence),
  );

  @override
  ScheduleCopyWith<$R2> $chain<$R2>(Then<Schedule, $R2> t) =>
      _ScheduleCopyWithImpl($value, $cast, t);
}

