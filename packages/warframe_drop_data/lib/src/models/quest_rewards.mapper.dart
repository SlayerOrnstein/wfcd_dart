// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'quest_rewards.dart';

class QuestRewardsMapper extends ClassMapperBase<QuestRewards> {
  QuestRewardsMapper._();

  static QuestRewardsMapper? _instance;
  static QuestRewardsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = QuestRewardsMapper._());
      RotationsMapper.ensureInitialized();
      ItemDropMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'QuestRewards';

  static String _$id(QuestRewards v) => v.id;
  static const Field<QuestRewards, String> _f$id = Field('id', _$id);
  static String _$quest(QuestRewards v) => v.quest;
  static const Field<QuestRewards, String> _f$quest = Field('quest', _$quest);
  static Rotations<ItemDrop> _$rewards(QuestRewards v) => v.rewards;
  static const Field<QuestRewards, Rotations<ItemDrop>> _f$rewards = Field(
    'rewards',
    _$rewards,
  );

  @override
  final MappableFields<QuestRewards> fields = const {
    #id: _f$id,
    #quest: _f$quest,
    #rewards: _f$rewards,
  };
  @override
  final bool ignoreNull = true;

  static QuestRewards _instantiate(DecodingData data) {
    return QuestRewards(
      id: data.dec(_f$id),
      quest: data.dec(_f$quest),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static QuestRewards fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<QuestRewards>(map);
  }

  static QuestRewards fromJson(String json) {
    return ensureInitialized().decodeJson<QuestRewards>(json);
  }
}

mixin QuestRewardsMappable {
  String toJson() {
    return QuestRewardsMapper.ensureInitialized().encodeJson<QuestRewards>(
      this as QuestRewards,
    );
  }

  Map<String, dynamic> toMap() {
    return QuestRewardsMapper.ensureInitialized().encodeMap<QuestRewards>(
      this as QuestRewards,
    );
  }

  QuestRewardsCopyWith<QuestRewards, QuestRewards, QuestRewards> get copyWith =>
      _QuestRewardsCopyWithImpl<QuestRewards, QuestRewards>(
        this as QuestRewards,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return QuestRewardsMapper.ensureInitialized().stringifyValue(
      this as QuestRewards,
    );
  }

  @override
  bool operator ==(Object other) {
    return QuestRewardsMapper.ensureInitialized().equalsValue(
      this as QuestRewards,
      other,
    );
  }

  @override
  int get hashCode {
    return QuestRewardsMapper.ensureInitialized().hashValue(
      this as QuestRewards,
    );
  }
}

extension QuestRewardsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, QuestRewards, $Out> {
  QuestRewardsCopyWith<$R, QuestRewards, $Out> get $asQuestRewards =>
      $base.as((v, t, t2) => _QuestRewardsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class QuestRewardsCopyWith<$R, $In extends QuestRewards, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RotationsCopyWith<$R, Rotations<ItemDrop>, Rotations<ItemDrop>, ItemDrop>
  get rewards;
  $R call({String? id, String? quest, Rotations<ItemDrop>? rewards});
  QuestRewardsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _QuestRewardsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, QuestRewards, $Out>
    implements QuestRewardsCopyWith<$R, QuestRewards, $Out> {
  _QuestRewardsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<QuestRewards> $mapper =
      QuestRewardsMapper.ensureInitialized();
  @override
  RotationsCopyWith<$R, Rotations<ItemDrop>, Rotations<ItemDrop>, ItemDrop>
  get rewards => $value.rewards.copyWith.$chain((v) => call(rewards: v));
  @override
  $R call({String? id, String? quest, Rotations<ItemDrop>? rewards}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (quest != null) #quest: quest,
      if (rewards != null) #rewards: rewards,
    }),
  );
  @override
  QuestRewards $make(CopyWithData data) => QuestRewards(
    id: data.get(#id, or: $value.id),
    quest: data.get(#quest, or: $value.quest),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  QuestRewardsCopyWith<$R2, QuestRewards, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _QuestRewardsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

