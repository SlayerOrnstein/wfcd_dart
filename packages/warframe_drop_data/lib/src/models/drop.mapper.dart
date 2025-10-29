// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'drop.dart';

class ItemDropMapper extends ClassMapperBase<ItemDrop> {
  ItemDropMapper._();

  static ItemDropMapper? _instance;
  static ItemDropMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemDropMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ItemDrop';

  static String _$id(ItemDrop v) => v.id;
  static const Field<ItemDrop, String> _f$id = Field('id', _$id);
  static String _$item(ItemDrop v) => v.item;
  static const Field<ItemDrop, String> _f$item = Field('item', _$item);
  static double _$chance(ItemDrop v) => v.chance;
  static const Field<ItemDrop, double> _f$chance = Field('chance', _$chance);
  static String _$rarity(ItemDrop v) => v.rarity;
  static const Field<ItemDrop, String> _f$rarity = Field('rarity', _$rarity);
  static String? _$status(ItemDrop v) => v.status;
  static const Field<ItemDrop, String> _f$status = Field('status', _$status);

  @override
  final MappableFields<ItemDrop> fields = const {
    #id: _f$id,
    #item: _f$item,
    #chance: _f$chance,
    #rarity: _f$rarity,
    #status: _f$status,
  };
  @override
  final bool ignoreNull = true;

  static ItemDrop _instantiate(DecodingData data) {
    return ItemDrop(
      id: data.dec(_f$id),
      item: data.dec(_f$item),
      chance: data.dec(_f$chance),
      rarity: data.dec(_f$rarity),
      status: data.dec(_f$status),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ItemDrop fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemDrop>(map);
  }

  static ItemDrop fromJson(String json) {
    return ensureInitialized().decodeJson<ItemDrop>(json);
  }
}

mixin ItemDropMappable {
  String toJson() {
    return ItemDropMapper.ensureInitialized().encodeJson<ItemDrop>(
      this as ItemDrop,
    );
  }

  Map<String, dynamic> toMap() {
    return ItemDropMapper.ensureInitialized().encodeMap<ItemDrop>(
      this as ItemDrop,
    );
  }

  ItemDropCopyWith<ItemDrop, ItemDrop, ItemDrop> get copyWith =>
      _ItemDropCopyWithImpl<ItemDrop, ItemDrop>(
        this as ItemDrop,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ItemDropMapper.ensureInitialized().stringifyValue(this as ItemDrop);
  }

  @override
  bool operator ==(Object other) {
    return ItemDropMapper.ensureInitialized().equalsValue(
      this as ItemDrop,
      other,
    );
  }

  @override
  int get hashCode {
    return ItemDropMapper.ensureInitialized().hashValue(this as ItemDrop);
  }
}

extension ItemDropValueCopy<$R, $Out> on ObjectCopyWith<$R, ItemDrop, $Out> {
  ItemDropCopyWith<$R, ItemDrop, $Out> get $asItemDrop =>
      $base.as((v, t, t2) => _ItemDropCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ItemDropCopyWith<$R, $In extends ItemDrop, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? item,
    double? chance,
    String? rarity,
    String? status,
  });
  ItemDropCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemDropCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ItemDrop, $Out>
    implements ItemDropCopyWith<$R, ItemDrop, $Out> {
  _ItemDropCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ItemDrop> $mapper =
      ItemDropMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? item,
    double? chance,
    String? rarity,
    Object? status = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (item != null) #item: item,
      if (chance != null) #chance: chance,
      if (rarity != null) #rarity: rarity,
      if (status != $none) #status: status,
    }),
  );
  @override
  ItemDrop $make(CopyWithData data) => ItemDrop(
    id: data.get(#id, or: $value.id),
    item: data.get(#item, or: $value.item),
    chance: data.get(#chance, or: $value.chance),
    rarity: data.get(#rarity, or: $value.rarity),
    status: data.get(#status, or: $value.status),
  );

  @override
  ItemDropCopyWith<$R2, ItemDrop, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ItemDropCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

