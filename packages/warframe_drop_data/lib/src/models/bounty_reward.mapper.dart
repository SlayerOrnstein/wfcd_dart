// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bounty_reward.dart';

class BountyRewardTableMapper extends ClassMapperBase<BountyRewardTable> {
  BountyRewardTableMapper._();

  static BountyRewardTableMapper? _instance;
  static BountyRewardTableMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BountyRewardTableMapper._());
      RotationsMapper.ensureInitialized();
      BountyRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BountyRewardTable';

  static String _$id(BountyRewardTable v) => v.id;
  static const Field<BountyRewardTable, String> _f$id = Field('id', _$id);
  static String _$level(BountyRewardTable v) => v.level;
  static const Field<BountyRewardTable, String> _f$level = Field(
    'level',
    _$level,
  );
  static Rotations<BountyReward> _$rewards(BountyRewardTable v) => v.rewards;
  static const Field<BountyRewardTable, Rotations<BountyReward>> _f$rewards =
      Field('rewards', _$rewards);

  @override
  final MappableFields<BountyRewardTable> fields = const {
    #id: _f$id,
    #level: _f$level,
    #rewards: _f$rewards,
  };
  @override
  final bool ignoreNull = true;

  static BountyRewardTable _instantiate(DecodingData data) {
    return BountyRewardTable(
      id: data.dec(_f$id),
      level: data.dec(_f$level),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BountyRewardTable fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BountyRewardTable>(map);
  }

  static BountyRewardTable fromJson(String json) {
    return ensureInitialized().decodeJson<BountyRewardTable>(json);
  }
}

mixin BountyRewardTableMappable {
  String toJson() {
    return BountyRewardTableMapper.ensureInitialized()
        .encodeJson<BountyRewardTable>(this as BountyRewardTable);
  }

  Map<String, dynamic> toMap() {
    return BountyRewardTableMapper.ensureInitialized()
        .encodeMap<BountyRewardTable>(this as BountyRewardTable);
  }

  BountyRewardTableCopyWith<
    BountyRewardTable,
    BountyRewardTable,
    BountyRewardTable
  >
  get copyWith =>
      _BountyRewardTableCopyWithImpl<BountyRewardTable, BountyRewardTable>(
        this as BountyRewardTable,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return BountyRewardTableMapper.ensureInitialized().stringifyValue(
      this as BountyRewardTable,
    );
  }

  @override
  bool operator ==(Object other) {
    return BountyRewardTableMapper.ensureInitialized().equalsValue(
      this as BountyRewardTable,
      other,
    );
  }

  @override
  int get hashCode {
    return BountyRewardTableMapper.ensureInitialized().hashValue(
      this as BountyRewardTable,
    );
  }
}

extension BountyRewardTableValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BountyRewardTable, $Out> {
  BountyRewardTableCopyWith<$R, BountyRewardTable, $Out>
  get $asBountyRewardTable => $base.as(
    (v, t, t2) => _BountyRewardTableCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class BountyRewardTableCopyWith<
  $R,
  $In extends BountyRewardTable,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  RotationsCopyWith<
    $R,
    Rotations<BountyReward>,
    Rotations<BountyReward>,
    BountyReward
  >
  get rewards;
  $R call({String? id, String? level, Rotations<BountyReward>? rewards});
  BountyRewardTableCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _BountyRewardTableCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BountyRewardTable, $Out>
    implements BountyRewardTableCopyWith<$R, BountyRewardTable, $Out> {
  _BountyRewardTableCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BountyRewardTable> $mapper =
      BountyRewardTableMapper.ensureInitialized();
  @override
  RotationsCopyWith<
    $R,
    Rotations<BountyReward>,
    Rotations<BountyReward>,
    BountyReward
  >
  get rewards => $value.rewards.copyWith.$chain((v) => call(rewards: v));
  @override
  $R call({String? id, String? level, Rotations<BountyReward>? rewards}) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (level != null) #level: level,
          if (rewards != null) #rewards: rewards,
        }),
      );
  @override
  BountyRewardTable $make(CopyWithData data) => BountyRewardTable(
    id: data.get(#id, or: $value.id),
    level: data.get(#level, or: $value.level),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  BountyRewardTableCopyWith<$R2, BountyRewardTable, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BountyRewardTableCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BountyRewardMapper extends SubClassMapperBase<BountyReward> {
  BountyRewardMapper._();

  static BountyRewardMapper? _instance;
  static BountyRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BountyRewardMapper._());
      ItemDropMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'BountyReward';

  static String _$id(BountyReward v) => v.id;
  static const Field<BountyReward, String> _f$id = Field('id', _$id);
  static String _$item(BountyReward v) => v.item;
  static const Field<BountyReward, String> _f$item = Field('item', _$item);
  static String _$rarity(BountyReward v) => v.rarity;
  static const Field<BountyReward, String> _f$rarity = Field(
    'rarity',
    _$rarity,
  );
  static double _$chance(BountyReward v) => v.chance;
  static const Field<BountyReward, double> _f$chance = Field(
    'chance',
    _$chance,
  );
  static List<int> _$stages(BountyReward v) => v.stages;
  static const Field<BountyReward, List<int>> _f$stages = Field(
    'stages',
    _$stages,
  );
  static bool _$onFinalStage(BountyReward v) => v.onFinalStage;
  static const Field<BountyReward, bool> _f$onFinalStage = Field(
    'onFinalStage',
    _$onFinalStage,
  );
  static bool? _$onFirstCompletion(BountyReward v) => v.onFirstCompletion;
  static const Field<BountyReward, bool> _f$onFirstCompletion = Field(
    'onFirstCompletion',
    _$onFirstCompletion,
  );
  static String? _$status(BountyReward v) => v.status;
  static const Field<BountyReward, String> _f$status = Field(
    'status',
    _$status,
  );

  @override
  final MappableFields<BountyReward> fields = const {
    #id: _f$id,
    #item: _f$item,
    #rarity: _f$rarity,
    #chance: _f$chance,
    #stages: _f$stages,
    #onFinalStage: _f$onFinalStage,
    #onFirstCompletion: _f$onFirstCompletion,
    #status: _f$status,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'BountyReward';
  @override
  late final ClassMapperBase superMapper = ItemDropMapper.ensureInitialized();

  static BountyReward _instantiate(DecodingData data) {
    return BountyReward(
      id: data.dec(_f$id),
      item: data.dec(_f$item),
      rarity: data.dec(_f$rarity),
      chance: data.dec(_f$chance),
      stages: data.dec(_f$stages),
      onFinalStage: data.dec(_f$onFinalStage),
      onFirstCompletion: data.dec(_f$onFirstCompletion),
      status: data.dec(_f$status),
    );
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
    return BountyRewardMapper.ensureInitialized().encodeJson<BountyReward>(
      this as BountyReward,
    );
  }

  Map<String, dynamic> toMap() {
    return BountyRewardMapper.ensureInitialized().encodeMap<BountyReward>(
      this as BountyReward,
    );
  }

  BountyRewardCopyWith<BountyReward, BountyReward, BountyReward> get copyWith =>
      _BountyRewardCopyWithImpl<BountyReward, BountyReward>(
        this as BountyReward,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return BountyRewardMapper.ensureInitialized().stringifyValue(
      this as BountyReward,
    );
  }

  @override
  bool operator ==(Object other) {
    return BountyRewardMapper.ensureInitialized().equalsValue(
      this as BountyReward,
      other,
    );
  }

  @override
  int get hashCode {
    return BountyRewardMapper.ensureInitialized().hashValue(
      this as BountyReward,
    );
  }
}

extension BountyRewardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BountyReward, $Out> {
  BountyRewardCopyWith<$R, BountyReward, $Out> get $asBountyReward =>
      $base.as((v, t, t2) => _BountyRewardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BountyRewardCopyWith<$R, $In extends BountyReward, $Out>
    implements ItemDropCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get stages;
  @override
  $R call({
    String? id,
    String? item,
    String? rarity,
    double? chance,
    List<int>? stages,
    bool? onFinalStage,
    bool? onFirstCompletion,
    String? status,
  });
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
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get stages =>
      ListCopyWith(
        $value.stages,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(stages: v),
      );
  @override
  $R call({
    String? id,
    String? item,
    String? rarity,
    double? chance,
    List<int>? stages,
    bool? onFinalStage,
    Object? onFirstCompletion = $none,
    Object? status = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (item != null) #item: item,
      if (rarity != null) #rarity: rarity,
      if (chance != null) #chance: chance,
      if (stages != null) #stages: stages,
      if (onFinalStage != null) #onFinalStage: onFinalStage,
      if (onFirstCompletion != $none) #onFirstCompletion: onFirstCompletion,
      if (status != $none) #status: status,
    }),
  );
  @override
  BountyReward $make(CopyWithData data) => BountyReward(
    id: data.get(#id, or: $value.id),
    item: data.get(#item, or: $value.item),
    rarity: data.get(#rarity, or: $value.rarity),
    chance: data.get(#chance, or: $value.chance),
    stages: data.get(#stages, or: $value.stages),
    onFinalStage: data.get(#onFinalStage, or: $value.onFinalStage),
    onFirstCompletion: data.get(
      #onFirstCompletion,
      or: $value.onFirstCompletion,
    ),
    status: data.get(#status, or: $value.status),
  );

  @override
  BountyRewardCopyWith<$R2, BountyReward, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BountyRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

