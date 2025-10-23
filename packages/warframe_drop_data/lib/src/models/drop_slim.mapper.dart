// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'drop_slim.dart';

class DropSlimMapper extends ClassMapperBase<DropSlim> {
  DropSlimMapper._();

  static DropSlimMapper? _instance;
  static DropSlimMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DropSlimMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DropSlim';

  static String _$place(DropSlim v) => v.place;
  static const Field<DropSlim, String> _f$place = Field('place', _$place);
  static String _$item(DropSlim v) => v.item;
  static const Field<DropSlim, String> _f$item = Field('item', _$item);
  static String _$rarity(DropSlim v) => v.rarity;
  static const Field<DropSlim, String> _f$rarity = Field('rarity', _$rarity);
  static num _$chance(DropSlim v) => v.chance;
  static const Field<DropSlim, num> _f$chance = Field('chance', _$chance);

  @override
  final MappableFields<DropSlim> fields = const {
    #place: _f$place,
    #item: _f$item,
    #rarity: _f$rarity,
    #chance: _f$chance,
  };
  @override
  final bool ignoreNull = true;

  static DropSlim _instantiate(DecodingData data) {
    return DropSlim(
      place: data.dec(_f$place),
      item: data.dec(_f$item),
      rarity: data.dec(_f$rarity),
      chance: data.dec(_f$chance),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DropSlim fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DropSlim>(map);
  }

  static DropSlim fromJson(String json) {
    return ensureInitialized().decodeJson<DropSlim>(json);
  }
}

mixin DropSlimMappable {
  String toJson() {
    return DropSlimMapper.ensureInitialized().encodeJson<DropSlim>(
      this as DropSlim,
    );
  }

  Map<String, dynamic> toMap() {
    return DropSlimMapper.ensureInitialized().encodeMap<DropSlim>(
      this as DropSlim,
    );
  }

  DropSlimCopyWith<DropSlim, DropSlim, DropSlim> get copyWith =>
      _DropSlimCopyWithImpl<DropSlim, DropSlim>(
        this as DropSlim,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DropSlimMapper.ensureInitialized().stringifyValue(this as DropSlim);
  }

  @override
  bool operator ==(Object other) {
    return DropSlimMapper.ensureInitialized().equalsValue(
      this as DropSlim,
      other,
    );
  }

  @override
  int get hashCode {
    return DropSlimMapper.ensureInitialized().hashValue(this as DropSlim);
  }
}

extension DropSlimValueCopy<$R, $Out> on ObjectCopyWith<$R, DropSlim, $Out> {
  DropSlimCopyWith<$R, DropSlim, $Out> get $asDropSlim =>
      $base.as((v, t, t2) => _DropSlimCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DropSlimCopyWith<$R, $In extends DropSlim, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? place, String? item, String? rarity, num? chance});
  DropSlimCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DropSlimCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DropSlim, $Out>
    implements DropSlimCopyWith<$R, DropSlim, $Out> {
  _DropSlimCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DropSlim> $mapper =
      DropSlimMapper.ensureInitialized();
  @override
  $R call({String? place, String? item, String? rarity, num? chance}) => $apply(
    FieldCopyWithData({
      if (place != null) #place: place,
      if (item != null) #item: item,
      if (rarity != null) #rarity: rarity,
      if (chance != null) #chance: chance,
    }),
  );
  @override
  DropSlim $make(CopyWithData data) => DropSlim(
    place: data.get(#place, or: $value.place),
    item: data.get(#item, or: $value.item),
    rarity: data.get(#rarity, or: $value.rarity),
    chance: data.get(#chance, or: $value.chance),
  );

  @override
  DropSlimCopyWith<$R2, DropSlim, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DropSlimCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

