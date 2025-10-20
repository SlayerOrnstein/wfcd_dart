// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reward.dart';

class RawRewardMapper extends ClassMapperBase<RawReward> {
  RawRewardMapper._();

  static RawRewardMapper? _instance;
  static RawRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawRewardMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawReward';

  static List<String>? _$items(RawReward v) => v.items;
  static const Field<RawReward, List<String>> _f$items = Field(
    'items',
    _$items,
  );
  static List<Map<String, dynamic>>? _$countedItems(RawReward v) =>
      v.countedItems;
  static const Field<RawReward, List<Map<String, dynamic>>> _f$countedItems =
      Field('countedItems', _$countedItems);
  static int? _$credits(RawReward v) => v.credits;
  static const Field<RawReward, int> _f$credits = Field('credits', _$credits);

  @override
  final MappableFields<RawReward> fields = const {
    #items: _f$items,
    #countedItems: _f$countedItems,
    #credits: _f$credits,
  };
  @override
  final bool ignoreNull = true;

  static RawReward _instantiate(DecodingData data) {
    return RawReward(
      items: data.dec(_f$items),
      countedItems: data.dec(_f$countedItems),
      credits: data.dec(_f$credits),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawReward>(map);
  }

  static RawReward fromJson(String json) {
    return ensureInitialized().decodeJson<RawReward>(json);
  }
}

mixin RawRewardMappable {
  String toJson() {
    return RawRewardMapper.ensureInitialized().encodeJson<RawReward>(
      this as RawReward,
    );
  }

  Map<String, dynamic> toMap() {
    return RawRewardMapper.ensureInitialized().encodeMap<RawReward>(
      this as RawReward,
    );
  }

  RawRewardCopyWith<RawReward, RawReward, RawReward> get copyWith =>
      _RawRewardCopyWithImpl<RawReward, RawReward>(
        this as RawReward,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawRewardMapper.ensureInitialized().stringifyValue(
      this as RawReward,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawRewardMapper.ensureInitialized().equalsValue(
      this as RawReward,
      other,
    );
  }

  @override
  int get hashCode {
    return RawRewardMapper.ensureInitialized().hashValue(this as RawReward);
  }
}

extension RawRewardValueCopy<$R, $Out> on ObjectCopyWith<$R, RawReward, $Out> {
  RawRewardCopyWith<$R, RawReward, $Out> get $asRawReward =>
      $base.as((v, t, t2) => _RawRewardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawRewardCopyWith<$R, $In extends RawReward, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get items;
  ListCopyWith<
    $R,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >?
  get countedItems;
  $R call({
    List<String>? items,
    List<Map<String, dynamic>>? countedItems,
    int? credits,
  });
  RawRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawRewardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawReward, $Out>
    implements RawRewardCopyWith<$R, RawReward, $Out> {
  _RawRewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawReward> $mapper =
      RawRewardMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get items =>
      $value.items != null
      ? ListCopyWith(
          $value.items!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(items: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >?
  get countedItems => $value.countedItems != null
      ? ListCopyWith(
          $value.countedItems!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(countedItems: v),
        )
      : null;
  @override
  $R call({
    Object? items = $none,
    Object? countedItems = $none,
    Object? credits = $none,
  }) => $apply(
    FieldCopyWithData({
      if (items != $none) #items: items,
      if (countedItems != $none) #countedItems: countedItems,
      if (credits != $none) #credits: credits,
    }),
  );
  @override
  RawReward $make(CopyWithData data) => RawReward(
    items: data.get(#items, or: $value.items),
    countedItems: data.get(#countedItems, or: $value.countedItems),
    credits: data.get(#credits, or: $value.credits),
  );

  @override
  RawRewardCopyWith<$R2, RawReward, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RewardMapper extends ClassMapperBase<Reward> {
  RewardMapper._();

  static RewardMapper? _instance;
  static RewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RewardMapper._());
      CountedItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Reward';

  static List<String>? _$items(Reward v) => v.items;
  static const Field<Reward, List<String>> _f$items = Field('items', _$items);
  static List<CountedItem>? _$countedItems(Reward v) => v.countedItems;
  static const Field<Reward, List<CountedItem>> _f$countedItems = Field(
    'countedItems',
    _$countedItems,
  );
  static int? _$credits(Reward v) => v.credits;
  static const Field<Reward, int> _f$credits = Field('credits', _$credits);
  static String? _$itemString(Reward v) => v.itemString;
  static const Field<Reward, String> _f$itemString = Field(
    'itemString',
    _$itemString,
  );

  @override
  final MappableFields<Reward> fields = const {
    #items: _f$items,
    #countedItems: _f$countedItems,
    #credits: _f$credits,
    #itemString: _f$itemString,
  };
  @override
  final bool ignoreNull = true;

  static Reward _instantiate(DecodingData data) {
    return Reward(
      items: data.dec(_f$items),
      countedItems: data.dec(_f$countedItems),
      credits: data.dec(_f$credits),
      itemString: data.dec(_f$itemString),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Reward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Reward>(map);
  }

  static Reward fromJson(String json) {
    return ensureInitialized().decodeJson<Reward>(json);
  }
}

mixin RewardMappable {
  String toJson() {
    return RewardMapper.ensureInitialized().encodeJson<Reward>(this as Reward);
  }

  Map<String, dynamic> toMap() {
    return RewardMapper.ensureInitialized().encodeMap<Reward>(this as Reward);
  }

  RewardCopyWith<Reward, Reward, Reward> get copyWith =>
      _RewardCopyWithImpl<Reward, Reward>(this as Reward, $identity, $identity);
  @override
  String toString() {
    return RewardMapper.ensureInitialized().stringifyValue(this as Reward);
  }

  @override
  bool operator ==(Object other) {
    return RewardMapper.ensureInitialized().equalsValue(this as Reward, other);
  }

  @override
  int get hashCode {
    return RewardMapper.ensureInitialized().hashValue(this as Reward);
  }
}

extension RewardValueCopy<$R, $Out> on ObjectCopyWith<$R, Reward, $Out> {
  RewardCopyWith<$R, Reward, $Out> get $asReward =>
      $base.as((v, t, t2) => _RewardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RewardCopyWith<$R, $In extends Reward, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get items;
  ListCopyWith<$R, CountedItem, ObjectCopyWith<$R, CountedItem, CountedItem>>?
  get countedItems;
  $R call({
    List<String>? items,
    List<CountedItem>? countedItems,
    int? credits,
    String? itemString,
  });
  RewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RewardCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Reward, $Out>
    implements RewardCopyWith<$R, Reward, $Out> {
  _RewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Reward> $mapper = RewardMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get items =>
      $value.items != null
      ? ListCopyWith(
          $value.items!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(items: v),
        )
      : null;
  @override
  ListCopyWith<$R, CountedItem, ObjectCopyWith<$R, CountedItem, CountedItem>>?
  get countedItems => $value.countedItems != null
      ? ListCopyWith(
          $value.countedItems!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(countedItems: v),
        )
      : null;
  @override
  $R call({
    Object? items = $none,
    Object? countedItems = $none,
    Object? credits = $none,
    Object? itemString = $none,
  }) => $apply(
    FieldCopyWithData({
      if (items != $none) #items: items,
      if (countedItems != $none) #countedItems: countedItems,
      if (credits != $none) #credits: credits,
      if (itemString != $none) #itemString: itemString,
    }),
  );
  @override
  Reward $make(CopyWithData data) => Reward(
    items: data.get(#items, or: $value.items),
    countedItems: data.get(#countedItems, or: $value.countedItems),
    credits: data.get(#credits, or: $value.credits),
    itemString: data.get(#itemString, or: $value.itemString),
  );

  @override
  RewardCopyWith<$R2, Reward, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CountedItemMapper extends RecordMapperBase<CountedItem> {
  static CountedItemMapper? _instance;
  CountedItemMapper._();

  static CountedItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CountedItemMapper._());
      MapperBase.addType(<A, B, C>(f) => f<({A count, B key, C type})>());
    }
    return _instance!;
  }

  static int _$count(CountedItem v) => v.count;
  static const Field<CountedItem, int> _f$count = Field('count', _$count);
  static String _$type(CountedItem v) => v.type;
  static const Field<CountedItem, String> _f$type = Field('type', _$type);
  static String _$key(CountedItem v) => v.key;
  static const Field<CountedItem, String> _f$key = Field('key', _$key);

  @override
  final MappableFields<CountedItem> fields = const {
    #count: _f$count,
    #type: _f$type,
    #key: _f$key,
  };

  @override
  Function get typeFactory =>
      (f) => f<CountedItem>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static CountedItem _instantiate(DecodingData<CountedItem> data) {
    return (
      count: data.dec(_f$count),
      type: data.dec(_f$type),
      key: data.dec(_f$key),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CountedItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CountedItem>(map);
  }

  static CountedItem fromJson(String json) {
    return ensureInitialized().decodeJson<CountedItem>(json);
  }
}

extension CountedItemMappable on CountedItem {
  Map<String, dynamic> toMap() {
    return CountedItemMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return CountedItemMapper.ensureInitialized().encodeJson(this);
  }

  CountedItemCopyWith<CountedItem> get copyWith =>
      _CountedItemCopyWithImpl(this, $identity, $identity);
}

extension CountedItemValueCopy<$R>
    on ObjectCopyWith<$R, CountedItem, CountedItem> {
  CountedItemCopyWith<$R> get $asCountedItem =>
      $base.as((v, t, t2) => _CountedItemCopyWithImpl(v, t, t2));
}

abstract class CountedItemCopyWith<$R>
    implements RecordCopyWith<$R, CountedItem> {
  $R call({int? count, String? type, String? key});
  CountedItemCopyWith<$R2> $chain<$R2>(Then<CountedItem, $R2> t);
}

class _CountedItemCopyWithImpl<$R> extends RecordCopyWithBase<$R, CountedItem>
    implements CountedItemCopyWith<$R> {
  _CountedItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<CountedItem> $mapper =
      CountedItemMapper.ensureInitialized();
  @override
  $R call({int? count, String? type, String? key}) => $apply(
    FieldCopyWithData({
      if (count != null) #count: count,
      if (type != null) #type: type,
      if (key != null) #key: key,
    }),
  );
  @override
  CountedItem $make(CopyWithData data) => (
    count: data.get(#count, or: $value.count),
    type: data.get(#type, or: $value.type),
    key: data.get(#key, or: $value.key),
  );

  @override
  CountedItemCopyWith<$R2> $chain<$R2>(Then<CountedItem, $R2> t) =>
      _CountedItemCopyWithImpl($value, $cast, t);
}

