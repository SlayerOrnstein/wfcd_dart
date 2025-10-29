// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'avatar.dart';

class AvatarMapper extends ClassMapperBase<Avatar> {
  AvatarMapper._();

  static AvatarMapper? _instance;
  static AvatarMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AvatarMapper._());
      ItemDropMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Avatar';

  static String _$id(Avatar v) => v.id;
  static const Field<Avatar, String> _f$id = Field('id', _$id);
  static String _$name(Avatar v) => v.name;
  static const Field<Avatar, String> _f$name = Field('name', _$name);
  static double _$chance(Avatar v) => v.chance;
  static const Field<Avatar, double> _f$chance = Field('chance', _$chance);
  static List<ItemDrop> _$drops(Avatar v) => v.drops;
  static const Field<Avatar, List<ItemDrop>> _f$drops = Field('drops', _$drops);

  @override
  final MappableFields<Avatar> fields = const {
    #id: _f$id,
    #name: _f$name,
    #chance: _f$chance,
    #drops: _f$drops,
  };
  @override
  final bool ignoreNull = true;

  static Avatar _instantiate(DecodingData data) {
    return Avatar(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      chance: data.dec(_f$chance),
      drops: data.dec(_f$drops),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Avatar fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Avatar>(map);
  }

  static Avatar fromJson(String json) {
    return ensureInitialized().decodeJson<Avatar>(json);
  }
}

mixin AvatarMappable {
  String toJson() {
    return AvatarMapper.ensureInitialized().encodeJson<Avatar>(this as Avatar);
  }

  Map<String, dynamic> toMap() {
    return AvatarMapper.ensureInitialized().encodeMap<Avatar>(this as Avatar);
  }

  AvatarCopyWith<Avatar, Avatar, Avatar> get copyWith =>
      _AvatarCopyWithImpl<Avatar, Avatar>(this as Avatar, $identity, $identity);
  @override
  String toString() {
    return AvatarMapper.ensureInitialized().stringifyValue(this as Avatar);
  }

  @override
  bool operator ==(Object other) {
    return AvatarMapper.ensureInitialized().equalsValue(this as Avatar, other);
  }

  @override
  int get hashCode {
    return AvatarMapper.ensureInitialized().hashValue(this as Avatar);
  }
}

extension AvatarValueCopy<$R, $Out> on ObjectCopyWith<$R, Avatar, $Out> {
  AvatarCopyWith<$R, Avatar, $Out> get $asAvatar =>
      $base.as((v, t, t2) => _AvatarCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AvatarCopyWith<$R, $In extends Avatar, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ItemDrop, ItemDropCopyWith<$R, ItemDrop, ItemDrop>>
  get drops;
  $R call({String? id, String? name, double? chance, List<ItemDrop>? drops});
  AvatarCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AvatarCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Avatar, $Out>
    implements AvatarCopyWith<$R, Avatar, $Out> {
  _AvatarCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Avatar> $mapper = AvatarMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ItemDrop, ItemDropCopyWith<$R, ItemDrop, ItemDrop>>
  get drops => ListCopyWith(
    $value.drops,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(drops: v),
  );
  @override
  $R call({String? id, String? name, double? chance, List<ItemDrop>? drops}) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (name != null) #name: name,
          if (chance != null) #chance: chance,
          if (drops != null) #drops: drops,
        }),
      );
  @override
  Avatar $make(CopyWithData data) => Avatar(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    chance: data.get(#chance, or: $value.chance),
    drops: data.get(#drops, or: $value.drops),
  );

  @override
  AvatarCopyWith<$R2, Avatar, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AvatarCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

