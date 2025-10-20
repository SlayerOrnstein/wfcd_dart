// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bounty_reward.dart';

class BountyRewardMapper extends ClassMapperBase<BountyReward> {
  BountyRewardMapper._();

  static BountyRewardMapper? _instance;
  static BountyRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BountyRewardMapper._());
      RotationsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BountyReward';

  static String _$id(BountyReward v) => v.id;
  static const Field<BountyReward, String> _f$id = Field('id', _$id);
  static String _$level(BountyReward v) => v.level;
  static const Field<BountyReward, String> _f$level = Field('level', _$level);
  static Rotations _$rewards(BountyReward v) => v.rewards;
  static const Field<BountyReward, Rotations> _f$rewards =
      Field('rewards', _$rewards);

  @override
  final MappableFields<BountyReward> fields = const {
    #id: _f$id,
    #level: _f$level,
    #rewards: _f$rewards,
  };

  static BountyReward _instantiate(DecodingData data) {
    return BountyReward(
        id: data.dec(_f$id),
        level: data.dec(_f$level),
        rewards: data.dec(_f$rewards));
  }

  @override
  final Function instantiate = _instantiate;

  static BountyReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BountyReward>(map);
  }

  static BountyReward fromJson(String json) {
    return ensureInitialized().decodeJson<BountyReward>(json);
  }
}

mixin BountyRewardMappable {
  String toJson() {
    return BountyRewardMapper.ensureInitialized()
        .encodeJson<BountyReward>(this as BountyReward);
  }

  Map<String, dynamic> toMap() {
    return BountyRewardMapper.ensureInitialized()
        .encodeMap<BountyReward>(this as BountyReward);
  }

  BountyRewardCopyWith<BountyReward, BountyReward, BountyReward> get copyWith =>
      _BountyRewardCopyWithImpl<BountyReward, BountyReward>(
          this as BountyReward, $identity, $identity);
  @override
  String toString() {
    return BountyRewardMapper.ensureInitialized()
        .stringifyValue(this as BountyReward);
  }

  @override
  bool operator ==(Object other) {
    return BountyRewardMapper.ensureInitialized()
        .equalsValue(this as BountyReward, other);
  }

  @override
  int get hashCode {
    return BountyRewardMapper.ensureInitialized()
        .hashValue(this as BountyReward);
  }
}

extension BountyRewardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BountyReward, $Out> {
  BountyRewardCopyWith<$R, BountyReward, $Out> get $asBountyReward =>
      $base.as((v, t, t2) => _BountyRewardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BountyRewardCopyWith<$R, $In extends BountyReward, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RotationsCopyWith<$R, Rotations, Rotations> get rewards;
  $R call({String? id, String? level, Rotations? rewards});
  BountyRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BountyRewardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BountyReward, $Out>
    implements BountyRewardCopyWith<$R, BountyReward, $Out> {
  _BountyRewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BountyReward> $mapper =
      BountyRewardMapper.ensureInitialized();
  @override
  RotationsCopyWith<$R, Rotations, Rotations> get rewards =>
      $value.rewards.copyWith.$chain((v) => call(rewards: v));
  @override
  $R call({String? id, String? level, Rotations? rewards}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (level != null) #level: level,
        if (rewards != null) #rewards: rewards
      }));
  @override
  BountyReward $make(CopyWithData data) => BountyReward(
      id: data.get(#id, or: $value.id),
      level: data.get(#level, or: $value.level),
      rewards: data.get(#rewards, or: $value.rewards));

  @override
  BountyRewardCopyWith<$R2, BountyReward, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BountyRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
