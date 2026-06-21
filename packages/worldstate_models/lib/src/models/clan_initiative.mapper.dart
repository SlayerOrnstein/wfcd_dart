// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'clan_initiative.dart';

class VaultBonusRewardMapper extends ClassMapperBase<VaultBonusReward> {
  VaultBonusRewardMapper._();

  static VaultBonusRewardMapper? _instance;
  static VaultBonusRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VaultBonusRewardMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VaultBonusReward';

  static String _$reward(VaultBonusReward v) => v.reward;
  static const Field<VaultBonusReward, String> _f$reward = Field(
    'reward',
    _$reward,
    key: r'Reward',
  );
  static int _$itemCount(VaultBonusReward v) => v.itemCount;
  static const Field<VaultBonusReward, int> _f$itemCount = Field(
    'itemCount',
    _$itemCount,
    key: r'ItemCount',
  );
  static int _$pointThreshold(VaultBonusReward v) => v.pointThreshold;
  static const Field<VaultBonusReward, int> _f$pointThreshold = Field(
    'pointThreshold',
    _$pointThreshold,
    key: r'PointThreshold',
  );
  static bool _$rewardClaimed(VaultBonusReward v) => v.rewardClaimed;
  static const Field<VaultBonusReward, bool> _f$rewardClaimed = Field(
    'rewardClaimed',
    _$rewardClaimed,
    key: r'RewardClaimed',
  );

  @override
  final MappableFields<VaultBonusReward> fields = const {
    #reward: _f$reward,
    #itemCount: _f$itemCount,
    #pointThreshold: _f$pointThreshold,
    #rewardClaimed: _f$rewardClaimed,
  };
  @override
  final bool ignoreNull = true;

  static VaultBonusReward _instantiate(DecodingData data) {
    return VaultBonusReward(
      reward: data.dec(_f$reward),
      itemCount: data.dec(_f$itemCount),
      pointThreshold: data.dec(_f$pointThreshold),
      rewardClaimed: data.dec(_f$rewardClaimed),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VaultBonusReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VaultBonusReward>(map);
  }

  static VaultBonusReward fromJson(String json) {
    return ensureInitialized().decodeJson<VaultBonusReward>(json);
  }
}

mixin VaultBonusRewardMappable {
  String toJson() {
    return VaultBonusRewardMapper.ensureInitialized()
        .encodeJson<VaultBonusReward>(this as VaultBonusReward);
  }

  Map<String, dynamic> toMap() {
    return VaultBonusRewardMapper.ensureInitialized()
        .encodeMap<VaultBonusReward>(this as VaultBonusReward);
  }

  VaultBonusRewardCopyWith<VaultBonusReward, VaultBonusReward, VaultBonusReward>
  get copyWith =>
      _VaultBonusRewardCopyWithImpl<VaultBonusReward, VaultBonusReward>(
        this as VaultBonusReward,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return VaultBonusRewardMapper.ensureInitialized().stringifyValue(
      this as VaultBonusReward,
    );
  }

  @override
  bool operator ==(Object other) {
    return VaultBonusRewardMapper.ensureInitialized().equalsValue(
      this as VaultBonusReward,
      other,
    );
  }

  @override
  int get hashCode {
    return VaultBonusRewardMapper.ensureInitialized().hashValue(
      this as VaultBonusReward,
    );
  }
}

extension VaultBonusRewardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VaultBonusReward, $Out> {
  VaultBonusRewardCopyWith<$R, VaultBonusReward, $Out>
  get $asVaultBonusReward =>
      $base.as((v, t, t2) => _VaultBonusRewardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VaultBonusRewardCopyWith<$R, $In extends VaultBonusReward, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? reward,
    int? itemCount,
    int? pointThreshold,
    bool? rewardClaimed,
  });
  VaultBonusRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VaultBonusRewardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VaultBonusReward, $Out>
    implements VaultBonusRewardCopyWith<$R, VaultBonusReward, $Out> {
  _VaultBonusRewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VaultBonusReward> $mapper =
      VaultBonusRewardMapper.ensureInitialized();
  @override
  $R call({
    String? reward,
    int? itemCount,
    int? pointThreshold,
    bool? rewardClaimed,
  }) => $apply(
    FieldCopyWithData({
      if (reward != null) #reward: reward,
      if (itemCount != null) #itemCount: itemCount,
      if (pointThreshold != null) #pointThreshold: pointThreshold,
      if (rewardClaimed != null) #rewardClaimed: rewardClaimed,
    }),
  );
  @override
  VaultBonusReward $make(CopyWithData data) => VaultBonusReward(
    reward: data.get(#reward, or: $value.reward),
    itemCount: data.get(#itemCount, or: $value.itemCount),
    pointThreshold: data.get(#pointThreshold, or: $value.pointThreshold),
    rewardClaimed: data.get(#rewardClaimed, or: $value.rewardClaimed),
  );

  @override
  VaultBonusRewardCopyWith<$R2, VaultBonusReward, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _VaultBonusRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class WeeklyVaultBonusRewardsMapper
    extends ClassMapperBase<WeeklyVaultBonusRewards> {
  WeeklyVaultBonusRewardsMapper._();

  static WeeklyVaultBonusRewardsMapper? _instance;
  static WeeklyVaultBonusRewardsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = WeeklyVaultBonusRewardsMapper._(),
      );
      VaultBonusRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WeeklyVaultBonusRewards';

  static int _$weekCount(WeeklyVaultBonusRewards v) => v.weekCount;
  static const Field<WeeklyVaultBonusRewards, int> _f$weekCount = Field(
    'weekCount',
    _$weekCount,
    key: r'WeekCount',
  );
  static String _$bonusRegion(WeeklyVaultBonusRewards v) => v.bonusRegion;
  static const Field<WeeklyVaultBonusRewards, String> _f$bonusRegion = Field(
    'bonusRegion',
    _$bonusRegion,
    key: r'BonusRegion',
  );
  static List<VaultBonusReward> _$rewards(WeeklyVaultBonusRewards v) =>
      v.rewards;
  static const Field<WeeklyVaultBonusRewards, List<VaultBonusReward>>
  _f$rewards = Field('rewards', _$rewards, key: r'Rewards');

  @override
  final MappableFields<WeeklyVaultBonusRewards> fields = const {
    #weekCount: _f$weekCount,
    #bonusRegion: _f$bonusRegion,
    #rewards: _f$rewards,
  };
  @override
  final bool ignoreNull = true;

  static WeeklyVaultBonusRewards _instantiate(DecodingData data) {
    return WeeklyVaultBonusRewards(
      weekCount: data.dec(_f$weekCount),
      bonusRegion: data.dec(_f$bonusRegion),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WeeklyVaultBonusRewards fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WeeklyVaultBonusRewards>(map);
  }

  static WeeklyVaultBonusRewards fromJson(String json) {
    return ensureInitialized().decodeJson<WeeklyVaultBonusRewards>(json);
  }
}

mixin WeeklyVaultBonusRewardsMappable {
  String toJson() {
    return WeeklyVaultBonusRewardsMapper.ensureInitialized()
        .encodeJson<WeeklyVaultBonusRewards>(this as WeeklyVaultBonusRewards);
  }

  Map<String, dynamic> toMap() {
    return WeeklyVaultBonusRewardsMapper.ensureInitialized()
        .encodeMap<WeeklyVaultBonusRewards>(this as WeeklyVaultBonusRewards);
  }

  WeeklyVaultBonusRewardsCopyWith<
    WeeklyVaultBonusRewards,
    WeeklyVaultBonusRewards,
    WeeklyVaultBonusRewards
  >
  get copyWith =>
      _WeeklyVaultBonusRewardsCopyWithImpl<
        WeeklyVaultBonusRewards,
        WeeklyVaultBonusRewards
      >(this as WeeklyVaultBonusRewards, $identity, $identity);
  @override
  String toString() {
    return WeeklyVaultBonusRewardsMapper.ensureInitialized().stringifyValue(
      this as WeeklyVaultBonusRewards,
    );
  }

  @override
  bool operator ==(Object other) {
    return WeeklyVaultBonusRewardsMapper.ensureInitialized().equalsValue(
      this as WeeklyVaultBonusRewards,
      other,
    );
  }

  @override
  int get hashCode {
    return WeeklyVaultBonusRewardsMapper.ensureInitialized().hashValue(
      this as WeeklyVaultBonusRewards,
    );
  }
}

extension WeeklyVaultBonusRewardsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WeeklyVaultBonusRewards, $Out> {
  WeeklyVaultBonusRewardsCopyWith<$R, WeeklyVaultBonusRewards, $Out>
  get $asWeeklyVaultBonusRewards => $base.as(
    (v, t, t2) => _WeeklyVaultBonusRewardsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class WeeklyVaultBonusRewardsCopyWith<
  $R,
  $In extends WeeklyVaultBonusRewards,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    VaultBonusReward,
    VaultBonusRewardCopyWith<$R, VaultBonusReward, VaultBonusReward>
  >
  get rewards;
  $R call({
    int? weekCount,
    String? bonusRegion,
    List<VaultBonusReward>? rewards,
  });
  WeeklyVaultBonusRewardsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _WeeklyVaultBonusRewardsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WeeklyVaultBonusRewards, $Out>
    implements
        WeeklyVaultBonusRewardsCopyWith<$R, WeeklyVaultBonusRewards, $Out> {
  _WeeklyVaultBonusRewardsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WeeklyVaultBonusRewards> $mapper =
      WeeklyVaultBonusRewardsMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    VaultBonusReward,
    VaultBonusRewardCopyWith<$R, VaultBonusReward, VaultBonusReward>
  >
  get rewards => ListCopyWith(
    $value.rewards,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(rewards: v),
  );
  @override
  $R call({
    int? weekCount,
    String? bonusRegion,
    List<VaultBonusReward>? rewards,
  }) => $apply(
    FieldCopyWithData({
      if (weekCount != null) #weekCount: weekCount,
      if (bonusRegion != null) #bonusRegion: bonusRegion,
      if (rewards != null) #rewards: rewards,
    }),
  );
  @override
  WeeklyVaultBonusRewards $make(CopyWithData data) => WeeklyVaultBonusRewards(
    weekCount: data.get(#weekCount, or: $value.weekCount),
    bonusRegion: data.get(#bonusRegion, or: $value.bonusRegion),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  WeeklyVaultBonusRewardsCopyWith<$R2, WeeklyVaultBonusRewards, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _WeeklyVaultBonusRewardsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PersonalRewardMapper extends ClassMapperBase<PersonalReward> {
  PersonalRewardMapper._();

  static PersonalRewardMapper? _instance;
  static PersonalRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonalRewardMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PersonalReward';

  static String _$uniqueName(PersonalReward v) => v.uniqueName;
  static const Field<PersonalReward, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$reward(PersonalReward v) => v.reward;
  static const Field<PersonalReward, String> _f$reward = Field(
    'reward',
    _$reward,
  );
  static int _$count(PersonalReward v) => v.count;
  static const Field<PersonalReward, int> _f$count = Field('count', _$count);
  static int _$pointsRequired(PersonalReward v) => v.pointsRequired;
  static const Field<PersonalReward, int> _f$pointsRequired = Field(
    'pointsRequired',
    _$pointsRequired,
  );
  static bool _$isClaimed(PersonalReward v) => v.isClaimed;
  static const Field<PersonalReward, bool> _f$isClaimed = Field(
    'isClaimed',
    _$isClaimed,
  );

  @override
  final MappableFields<PersonalReward> fields = const {
    #uniqueName: _f$uniqueName,
    #reward: _f$reward,
    #count: _f$count,
    #pointsRequired: _f$pointsRequired,
    #isClaimed: _f$isClaimed,
  };
  @override
  final bool ignoreNull = true;

  static PersonalReward _instantiate(DecodingData data) {
    return PersonalReward(
      uniqueName: data.dec(_f$uniqueName),
      reward: data.dec(_f$reward),
      count: data.dec(_f$count),
      pointsRequired: data.dec(_f$pointsRequired),
      isClaimed: data.dec(_f$isClaimed),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PersonalReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PersonalReward>(map);
  }

  static PersonalReward fromJson(String json) {
    return ensureInitialized().decodeJson<PersonalReward>(json);
  }
}

mixin PersonalRewardMappable {
  String toJson() {
    return PersonalRewardMapper.ensureInitialized().encodeJson<PersonalReward>(
      this as PersonalReward,
    );
  }

  Map<String, dynamic> toMap() {
    return PersonalRewardMapper.ensureInitialized().encodeMap<PersonalReward>(
      this as PersonalReward,
    );
  }

  PersonalRewardCopyWith<PersonalReward, PersonalReward, PersonalReward>
  get copyWith => _PersonalRewardCopyWithImpl<PersonalReward, PersonalReward>(
    this as PersonalReward,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PersonalRewardMapper.ensureInitialized().stringifyValue(
      this as PersonalReward,
    );
  }

  @override
  bool operator ==(Object other) {
    return PersonalRewardMapper.ensureInitialized().equalsValue(
      this as PersonalReward,
      other,
    );
  }

  @override
  int get hashCode {
    return PersonalRewardMapper.ensureInitialized().hashValue(
      this as PersonalReward,
    );
  }
}

extension PersonalRewardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PersonalReward, $Out> {
  PersonalRewardCopyWith<$R, PersonalReward, $Out> get $asPersonalReward =>
      $base.as((v, t, t2) => _PersonalRewardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PersonalRewardCopyWith<$R, $In extends PersonalReward, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? uniqueName,
    String? reward,
    int? count,
    int? pointsRequired,
    bool? isClaimed,
  });
  PersonalRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PersonalRewardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PersonalReward, $Out>
    implements PersonalRewardCopyWith<$R, PersonalReward, $Out> {
  _PersonalRewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PersonalReward> $mapper =
      PersonalRewardMapper.ensureInitialized();
  @override
  $R call({
    String? uniqueName,
    String? reward,
    int? count,
    int? pointsRequired,
    bool? isClaimed,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (reward != null) #reward: reward,
      if (count != null) #count: count,
      if (pointsRequired != null) #pointsRequired: pointsRequired,
      if (isClaimed != null) #isClaimed: isClaimed,
    }),
  );
  @override
  PersonalReward $make(CopyWithData data) => PersonalReward(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    reward: data.get(#reward, or: $value.reward),
    count: data.get(#count, or: $value.count),
    pointsRequired: data.get(#pointsRequired, or: $value.pointsRequired),
    isClaimed: data.get(#isClaimed, or: $value.isClaimed),
  );

  @override
  PersonalRewardCopyWith<$R2, PersonalReward, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PersonalRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ClanInitiativeMapper extends ClassMapperBase<ClanInitiative> {
  ClanInitiativeMapper._();

  static ClanInitiativeMapper? _instance;
  static ClanInitiativeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClanInitiativeMapper._());
      PersonalRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClanInitiative';

  static int _$week(ClanInitiative v) => v.week;
  static const Field<ClanInitiative, int> _f$week = Field('week', _$week);
  static String _$bonusRegion(ClanInitiative v) => v.bonusRegion;
  static const Field<ClanInitiative, String> _f$bonusRegion = Field(
    'bonusRegion',
    _$bonusRegion,
  );
  static List<PersonalReward> _$rewards(ClanInitiative v) => v.rewards;
  static const Field<ClanInitiative, List<PersonalReward>> _f$rewards = Field(
    'rewards',
    _$rewards,
  );

  @override
  final MappableFields<ClanInitiative> fields = const {
    #week: _f$week,
    #bonusRegion: _f$bonusRegion,
    #rewards: _f$rewards,
  };
  @override
  final bool ignoreNull = true;

  static ClanInitiative _instantiate(DecodingData data) {
    return ClanInitiative(
      week: data.dec(_f$week),
      bonusRegion: data.dec(_f$bonusRegion),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ClanInitiative fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClanInitiative>(map);
  }

  static ClanInitiative fromJson(String json) {
    return ensureInitialized().decodeJson<ClanInitiative>(json);
  }
}

mixin ClanInitiativeMappable {
  String toJson() {
    return ClanInitiativeMapper.ensureInitialized().encodeJson<ClanInitiative>(
      this as ClanInitiative,
    );
  }

  Map<String, dynamic> toMap() {
    return ClanInitiativeMapper.ensureInitialized().encodeMap<ClanInitiative>(
      this as ClanInitiative,
    );
  }

  ClanInitiativeCopyWith<ClanInitiative, ClanInitiative, ClanInitiative>
  get copyWith => _ClanInitiativeCopyWithImpl<ClanInitiative, ClanInitiative>(
    this as ClanInitiative,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ClanInitiativeMapper.ensureInitialized().stringifyValue(
      this as ClanInitiative,
    );
  }

  @override
  bool operator ==(Object other) {
    return ClanInitiativeMapper.ensureInitialized().equalsValue(
      this as ClanInitiative,
      other,
    );
  }

  @override
  int get hashCode {
    return ClanInitiativeMapper.ensureInitialized().hashValue(
      this as ClanInitiative,
    );
  }
}

extension ClanInitiativeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClanInitiative, $Out> {
  ClanInitiativeCopyWith<$R, ClanInitiative, $Out> get $asClanInitiative =>
      $base.as((v, t, t2) => _ClanInitiativeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClanInitiativeCopyWith<$R, $In extends ClanInitiative, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    PersonalReward,
    PersonalRewardCopyWith<$R, PersonalReward, PersonalReward>
  >
  get rewards;
  $R call({int? week, String? bonusRegion, List<PersonalReward>? rewards});
  ClanInitiativeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ClanInitiativeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClanInitiative, $Out>
    implements ClanInitiativeCopyWith<$R, ClanInitiative, $Out> {
  _ClanInitiativeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClanInitiative> $mapper =
      ClanInitiativeMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    PersonalReward,
    PersonalRewardCopyWith<$R, PersonalReward, PersonalReward>
  >
  get rewards => ListCopyWith(
    $value.rewards,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(rewards: v),
  );
  @override
  $R call({int? week, String? bonusRegion, List<PersonalReward>? rewards}) =>
      $apply(
        FieldCopyWithData({
          if (week != null) #week: week,
          if (bonusRegion != null) #bonusRegion: bonusRegion,
          if (rewards != null) #rewards: rewards,
        }),
      );
  @override
  ClanInitiative $make(CopyWithData data) => ClanInitiative(
    week: data.get(#week, or: $value.week),
    bonusRegion: data.get(#bonusRegion, or: $value.bonusRegion),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  ClanInitiativeCopyWith<$R2, ClanInitiative, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ClanInitiativeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

