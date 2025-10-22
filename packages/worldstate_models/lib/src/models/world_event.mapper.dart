// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'world_event.dart';

class RawGoalMapper extends ClassMapperBase<RawGoal> {
  RawGoalMapper._();

  static RawGoalMapper? _instance;
  static RawGoalMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawGoalMapper._());
      RawRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawGoal';

  static Map<String, dynamic> _$id(RawGoal v) => v.id;
  static const Field<RawGoal, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static Map<String, dynamic>? _$activation(RawGoal v) => v.activation;
  static const Field<RawGoal, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawGoal v) => v.expiry;
  static const Field<RawGoal, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String? _$node(RawGoal v) => v.node;
  static const Field<RawGoal, String> _f$node = Field(
    'node',
    _$node,
    key: r'Node',
  );
  static String? _$victimNode(RawGoal v) => v.victimNode;
  static const Field<RawGoal, String> _f$victimNode = Field(
    'victimNode',
    _$victimNode,
    key: r'VictimNode',
  );
  static String? _$scoreVar(RawGoal v) => v.scoreVar;
  static const Field<RawGoal, String> _f$scoreVar = Field(
    'scoreVar',
    _$scoreVar,
    key: r'ScoreVar',
  );
  static String? _$scoreLocTag(RawGoal v) => v.scoreLocTag;
  static const Field<RawGoal, String> _f$scoreLocTag = Field(
    'scoreLocTag',
    _$scoreLocTag,
    key: r'ScoreLocTag',
  );
  static int _$count(RawGoal v) => v.count;
  static const Field<RawGoal, int> _f$count = Field(
    'count',
    _$count,
    key: r'Count',
  );
  static double? _$healthPct(RawGoal v) => v.healthPct;
  static const Field<RawGoal, double> _f$healthPct = Field(
    'healthPct',
    _$healthPct,
    key: r'HealthPct',
  );
  static String _$desc(RawGoal v) => v.desc;
  static const Field<RawGoal, String> _f$desc = Field(
    'desc',
    _$desc,
    key: r'Desc',
  );
  static String? _$tooltip(RawGoal v) => v.tooltip;
  static const Field<RawGoal, String> _f$tooltip = Field(
    'tooltip',
    _$tooltip,
    key: r'ToolTip',
  );
  static bool? _$optionalInMission(RawGoal v) => v.optionalInMission;
  static const Field<RawGoal, bool> _f$optionalInMission = Field(
    'optionalInMission',
    _$optionalInMission,
    key: r'OptionalInMission',
  );
  static bool _$personal(RawGoal v) => v.personal;
  static const Field<RawGoal, bool> _f$personal = Field(
    'personal',
    _$personal,
    key: r'Personal',
  );
  static bool? _$community(RawGoal v) => v.community;
  static const Field<RawGoal, bool> _f$community = Field(
    'community',
    _$community,
    key: r'Community',
  );
  static int? _$goal(RawGoal v) => v.goal;
  static const Field<RawGoal, int> _f$goal = Field(
    'goal',
    _$goal,
    key: r'Goal',
  );
  static List<int>? _$clanGoal(RawGoal v) => v.clanGoal;
  static const Field<RawGoal, List<int>> _f$clanGoal = Field(
    'clanGoal',
    _$clanGoal,
    key: r'ClanGoal',
  );
  static RawReward? _$reward(RawGoal v) => v.reward;
  static const Field<RawGoal, RawReward> _f$reward = Field(
    'reward',
    _$reward,
    key: r'Reward',
  );
  static List<int>? _$interimGoals(RawGoal v) => v.interimGoals;
  static const Field<RawGoal, List<int>> _f$interimGoals = Field(
    'interimGoals',
    _$interimGoals,
    key: r'InterimGoals',
  );
  static List<RawReward>? _$interimRewards(RawGoal v) => v.interimRewards;
  static const Field<RawGoal, List<RawReward>> _f$interimRewards = Field(
    'interimRewards',
    _$interimRewards,
    key: r'InterimRewards',
  );
  static String _$tag(RawGoal v) => v.tag;
  static const Field<RawGoal, String> _f$tag = Field('tag', _$tag, key: r'Tag');

  @override
  final MappableFields<RawGoal> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #node: _f$node,
    #victimNode: _f$victimNode,
    #scoreVar: _f$scoreVar,
    #scoreLocTag: _f$scoreLocTag,
    #count: _f$count,
    #healthPct: _f$healthPct,
    #desc: _f$desc,
    #tooltip: _f$tooltip,
    #optionalInMission: _f$optionalInMission,
    #personal: _f$personal,
    #community: _f$community,
    #goal: _f$goal,
    #clanGoal: _f$clanGoal,
    #reward: _f$reward,
    #interimGoals: _f$interimGoals,
    #interimRewards: _f$interimRewards,
    #tag: _f$tag,
  };
  @override
  final bool ignoreNull = true;

  static RawGoal _instantiate(DecodingData data) {
    return RawGoal(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      node: data.dec(_f$node),
      victimNode: data.dec(_f$victimNode),
      scoreVar: data.dec(_f$scoreVar),
      scoreLocTag: data.dec(_f$scoreLocTag),
      count: data.dec(_f$count),
      healthPct: data.dec(_f$healthPct),
      desc: data.dec(_f$desc),
      tooltip: data.dec(_f$tooltip),
      optionalInMission: data.dec(_f$optionalInMission),
      personal: data.dec(_f$personal),
      community: data.dec(_f$community),
      goal: data.dec(_f$goal),
      clanGoal: data.dec(_f$clanGoal),
      reward: data.dec(_f$reward),
      interimGoals: data.dec(_f$interimGoals),
      interimRewards: data.dec(_f$interimRewards),
      tag: data.dec(_f$tag),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawGoal fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawGoal>(map);
  }

  static RawGoal fromJson(String json) {
    return ensureInitialized().decodeJson<RawGoal>(json);
  }
}

mixin RawGoalMappable {
  String toJson() {
    return RawGoalMapper.ensureInitialized().encodeJson<RawGoal>(
      this as RawGoal,
    );
  }

  Map<String, dynamic> toMap() {
    return RawGoalMapper.ensureInitialized().encodeMap<RawGoal>(
      this as RawGoal,
    );
  }

  RawGoalCopyWith<RawGoal, RawGoal, RawGoal> get copyWith =>
      _RawGoalCopyWithImpl<RawGoal, RawGoal>(
        this as RawGoal,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawGoalMapper.ensureInitialized().stringifyValue(this as RawGoal);
  }

  @override
  bool operator ==(Object other) {
    return RawGoalMapper.ensureInitialized().equalsValue(
      this as RawGoal,
      other,
    );
  }

  @override
  int get hashCode {
    return RawGoalMapper.ensureInitialized().hashValue(this as RawGoal);
  }
}

extension RawGoalValueCopy<$R, $Out> on ObjectCopyWith<$R, RawGoal, $Out> {
  RawGoalCopyWith<$R, RawGoal, $Out> get $asRawGoal =>
      $base.as((v, t, t2) => _RawGoalCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawGoalCopyWith<$R, $In extends RawGoal, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get clanGoal;
  RawRewardCopyWith<$R, RawReward, RawReward>? get reward;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get interimGoals;
  ListCopyWith<$R, RawReward, RawRewardCopyWith<$R, RawReward, RawReward>>?
  get interimRewards;
  $R call({
    Map<String, dynamic>? id,
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? node,
    String? victimNode,
    String? scoreVar,
    String? scoreLocTag,
    int? count,
    double? healthPct,
    String? desc,
    String? tooltip,
    bool? optionalInMission,
    bool? personal,
    bool? community,
    int? goal,
    List<int>? clanGoal,
    RawReward? reward,
    List<int>? interimGoals,
    List<RawReward>? interimRewards,
    String? tag,
  });
  RawGoalCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawGoalCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawGoal, $Out>
    implements RawGoalCopyWith<$R, RawGoal, $Out> {
  _RawGoalCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawGoal> $mapper =
      RawGoalMapper.ensureInitialized();
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
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get clanGoal =>
      $value.clanGoal != null
      ? ListCopyWith(
          $value.clanGoal!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(clanGoal: v),
        )
      : null;
  @override
  RawRewardCopyWith<$R, RawReward, RawReward>? get reward =>
      $value.reward?.copyWith.$chain((v) => call(reward: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get interimGoals =>
      $value.interimGoals != null
      ? ListCopyWith(
          $value.interimGoals!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(interimGoals: v),
        )
      : null;
  @override
  ListCopyWith<$R, RawReward, RawRewardCopyWith<$R, RawReward, RawReward>>?
  get interimRewards => $value.interimRewards != null
      ? ListCopyWith(
          $value.interimRewards!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(interimRewards: v),
        )
      : null;
  @override
  $R call({
    Map<String, dynamic>? id,
    Object? activation = $none,
    Object? expiry = $none,
    Object? node = $none,
    Object? victimNode = $none,
    Object? scoreVar = $none,
    Object? scoreLocTag = $none,
    int? count,
    Object? healthPct = $none,
    String? desc,
    Object? tooltip = $none,
    Object? optionalInMission = $none,
    bool? personal,
    Object? community = $none,
    Object? goal = $none,
    Object? clanGoal = $none,
    Object? reward = $none,
    Object? interimGoals = $none,
    Object? interimRewards = $none,
    String? tag,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (node != $none) #node: node,
      if (victimNode != $none) #victimNode: victimNode,
      if (scoreVar != $none) #scoreVar: scoreVar,
      if (scoreLocTag != $none) #scoreLocTag: scoreLocTag,
      if (count != null) #count: count,
      if (healthPct != $none) #healthPct: healthPct,
      if (desc != null) #desc: desc,
      if (tooltip != $none) #tooltip: tooltip,
      if (optionalInMission != $none) #optionalInMission: optionalInMission,
      if (personal != null) #personal: personal,
      if (community != $none) #community: community,
      if (goal != $none) #goal: goal,
      if (clanGoal != $none) #clanGoal: clanGoal,
      if (reward != $none) #reward: reward,
      if (interimGoals != $none) #interimGoals: interimGoals,
      if (interimRewards != $none) #interimRewards: interimRewards,
      if (tag != null) #tag: tag,
    }),
  );
  @override
  RawGoal $make(CopyWithData data) => RawGoal(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    node: data.get(#node, or: $value.node),
    victimNode: data.get(#victimNode, or: $value.victimNode),
    scoreVar: data.get(#scoreVar, or: $value.scoreVar),
    scoreLocTag: data.get(#scoreLocTag, or: $value.scoreLocTag),
    count: data.get(#count, or: $value.count),
    healthPct: data.get(#healthPct, or: $value.healthPct),
    desc: data.get(#desc, or: $value.desc),
    tooltip: data.get(#tooltip, or: $value.tooltip),
    optionalInMission: data.get(
      #optionalInMission,
      or: $value.optionalInMission,
    ),
    personal: data.get(#personal, or: $value.personal),
    community: data.get(#community, or: $value.community),
    goal: data.get(#goal, or: $value.goal),
    clanGoal: data.get(#clanGoal, or: $value.clanGoal),
    reward: data.get(#reward, or: $value.reward),
    interimGoals: data.get(#interimGoals, or: $value.interimGoals),
    interimRewards: data.get(#interimRewards, or: $value.interimRewards),
    tag: data.get(#tag, or: $value.tag),
  );

  @override
  RawGoalCopyWith<$R2, RawGoal, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RawGoalCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class WorldEventMapper extends ClassMapperBase<WorldEvent> {
  WorldEventMapper._();

  static WorldEventMapper? _instance;
  static WorldEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorldEventMapper._());
      RewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'WorldEvent';

  static String _$id(WorldEvent v) => v.id;
  static const Field<WorldEvent, String> _f$id = Field('id', _$id);
  static DateTime _$activation(WorldEvent v) => v.activation;
  static const Field<WorldEvent, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(WorldEvent v) => v.expiry;
  static const Field<WorldEvent, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static String? _$node(WorldEvent v) => v.node;
  static const Field<WorldEvent, String> _f$node = Field('node', _$node);
  static String? _$victimNode(WorldEvent v) => v.victimNode;
  static const Field<WorldEvent, String> _f$victimNode = Field(
    'victimNode',
    _$victimNode,
  );
  static String? _$scoreVar(WorldEvent v) => v.scoreVar;
  static const Field<WorldEvent, String> _f$scoreVar = Field(
    'scoreVar',
    _$scoreVar,
  );
  static String? _$scoreLocTag(WorldEvent v) => v.scoreLocTag;
  static const Field<WorldEvent, String> _f$scoreLocTag = Field(
    'scoreLocTag',
    _$scoreLocTag,
  );
  static int _$count(WorldEvent v) => v.count;
  static const Field<WorldEvent, int> _f$count = Field('count', _$count);
  static num? _$health(WorldEvent v) => v.health;
  static const Field<WorldEvent, num> _f$health = Field('health', _$health);
  static String _$description(WorldEvent v) => v.description;
  static const Field<WorldEvent, String> _f$description = Field(
    'description',
    _$description,
  );
  static String? _$tooltip(WorldEvent v) => v.tooltip;
  static const Field<WorldEvent, String> _f$tooltip = Field(
    'tooltip',
    _$tooltip,
  );
  static bool? _$optional(WorldEvent v) => v.optional;
  static const Field<WorldEvent, bool> _f$optional = Field(
    'optional',
    _$optional,
  );
  static bool _$personal(WorldEvent v) => v.personal;
  static const Field<WorldEvent, bool> _f$personal = Field(
    'personal',
    _$personal,
  );
  static bool? _$community(WorldEvent v) => v.community;
  static const Field<WorldEvent, bool> _f$community = Field(
    'community',
    _$community,
  );
  static int? _$goal(WorldEvent v) => v.goal;
  static const Field<WorldEvent, int> _f$goal = Field('goal', _$goal);
  static List<int>? _$clanGoal(WorldEvent v) => v.clanGoal;
  static const Field<WorldEvent, List<int>> _f$clanGoal = Field(
    'clanGoal',
    _$clanGoal,
  );
  static Reward? _$reward(WorldEvent v) => v.reward;
  static const Field<WorldEvent, Reward> _f$reward = Field('reward', _$reward);
  static List<int>? _$interimGoals(WorldEvent v) => v.interimGoals;
  static const Field<WorldEvent, List<int>> _f$interimGoals = Field(
    'interimGoals',
    _$interimGoals,
  );
  static List<Reward>? _$interimRewards(WorldEvent v) => v.interimRewards;
  static const Field<WorldEvent, List<Reward>> _f$interimRewards = Field(
    'interimRewards',
    _$interimRewards,
  );
  static String _$tag(WorldEvent v) => v.tag;
  static const Field<WorldEvent, String> _f$tag = Field('tag', _$tag);

  @override
  final MappableFields<WorldEvent> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #node: _f$node,
    #victimNode: _f$victimNode,
    #scoreVar: _f$scoreVar,
    #scoreLocTag: _f$scoreLocTag,
    #count: _f$count,
    #health: _f$health,
    #description: _f$description,
    #tooltip: _f$tooltip,
    #optional: _f$optional,
    #personal: _f$personal,
    #community: _f$community,
    #goal: _f$goal,
    #clanGoal: _f$clanGoal,
    #reward: _f$reward,
    #interimGoals: _f$interimGoals,
    #interimRewards: _f$interimRewards,
    #tag: _f$tag,
  };
  @override
  final bool ignoreNull = true;

  static WorldEvent _instantiate(DecodingData data) {
    return WorldEvent(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      node: data.dec(_f$node),
      victimNode: data.dec(_f$victimNode),
      scoreVar: data.dec(_f$scoreVar),
      scoreLocTag: data.dec(_f$scoreLocTag),
      count: data.dec(_f$count),
      health: data.dec(_f$health),
      description: data.dec(_f$description),
      tooltip: data.dec(_f$tooltip),
      optional: data.dec(_f$optional),
      personal: data.dec(_f$personal),
      community: data.dec(_f$community),
      goal: data.dec(_f$goal),
      clanGoal: data.dec(_f$clanGoal),
      reward: data.dec(_f$reward),
      interimGoals: data.dec(_f$interimGoals),
      interimRewards: data.dec(_f$interimRewards),
      tag: data.dec(_f$tag),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WorldEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WorldEvent>(map);
  }

  static WorldEvent fromJson(String json) {
    return ensureInitialized().decodeJson<WorldEvent>(json);
  }
}

mixin WorldEventMappable {
  String toJson() {
    return WorldEventMapper.ensureInitialized().encodeJson<WorldEvent>(
      this as WorldEvent,
    );
  }

  Map<String, dynamic> toMap() {
    return WorldEventMapper.ensureInitialized().encodeMap<WorldEvent>(
      this as WorldEvent,
    );
  }

  WorldEventCopyWith<WorldEvent, WorldEvent, WorldEvent> get copyWith =>
      _WorldEventCopyWithImpl<WorldEvent, WorldEvent>(
        this as WorldEvent,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WorldEventMapper.ensureInitialized().stringifyValue(
      this as WorldEvent,
    );
  }

  @override
  bool operator ==(Object other) {
    return WorldEventMapper.ensureInitialized().equalsValue(
      this as WorldEvent,
      other,
    );
  }

  @override
  int get hashCode {
    return WorldEventMapper.ensureInitialized().hashValue(this as WorldEvent);
  }
}

extension WorldEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WorldEvent, $Out> {
  WorldEventCopyWith<$R, WorldEvent, $Out> get $asWorldEvent =>
      $base.as((v, t, t2) => _WorldEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WorldEventCopyWith<$R, $In extends WorldEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get clanGoal;
  RewardCopyWith<$R, Reward, Reward>? get reward;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get interimGoals;
  ListCopyWith<$R, Reward, RewardCopyWith<$R, Reward, Reward>>?
  get interimRewards;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? node,
    String? victimNode,
    String? scoreVar,
    String? scoreLocTag,
    int? count,
    num? health,
    String? description,
    String? tooltip,
    bool? optional,
    bool? personal,
    bool? community,
    int? goal,
    List<int>? clanGoal,
    Reward? reward,
    List<int>? interimGoals,
    List<Reward>? interimRewards,
    String? tag,
  });
  WorldEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WorldEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WorldEvent, $Out>
    implements WorldEventCopyWith<$R, WorldEvent, $Out> {
  _WorldEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WorldEvent> $mapper =
      WorldEventMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get clanGoal =>
      $value.clanGoal != null
      ? ListCopyWith(
          $value.clanGoal!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(clanGoal: v),
        )
      : null;
  @override
  RewardCopyWith<$R, Reward, Reward>? get reward =>
      $value.reward?.copyWith.$chain((v) => call(reward: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>? get interimGoals =>
      $value.interimGoals != null
      ? ListCopyWith(
          $value.interimGoals!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(interimGoals: v),
        )
      : null;
  @override
  ListCopyWith<$R, Reward, RewardCopyWith<$R, Reward, Reward>>?
  get interimRewards => $value.interimRewards != null
      ? ListCopyWith(
          $value.interimRewards!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(interimRewards: v),
        )
      : null;
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    Object? node = $none,
    Object? victimNode = $none,
    Object? scoreVar = $none,
    Object? scoreLocTag = $none,
    int? count,
    Object? health = $none,
    String? description,
    Object? tooltip = $none,
    Object? optional = $none,
    bool? personal,
    Object? community = $none,
    Object? goal = $none,
    Object? clanGoal = $none,
    Object? reward = $none,
    Object? interimGoals = $none,
    Object? interimRewards = $none,
    String? tag,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (node != $none) #node: node,
      if (victimNode != $none) #victimNode: victimNode,
      if (scoreVar != $none) #scoreVar: scoreVar,
      if (scoreLocTag != $none) #scoreLocTag: scoreLocTag,
      if (count != null) #count: count,
      if (health != $none) #health: health,
      if (description != null) #description: description,
      if (tooltip != $none) #tooltip: tooltip,
      if (optional != $none) #optional: optional,
      if (personal != null) #personal: personal,
      if (community != $none) #community: community,
      if (goal != $none) #goal: goal,
      if (clanGoal != $none) #clanGoal: clanGoal,
      if (reward != $none) #reward: reward,
      if (interimGoals != $none) #interimGoals: interimGoals,
      if (interimRewards != $none) #interimRewards: interimRewards,
      if (tag != null) #tag: tag,
    }),
  );
  @override
  WorldEvent $make(CopyWithData data) => WorldEvent(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    node: data.get(#node, or: $value.node),
    victimNode: data.get(#victimNode, or: $value.victimNode),
    scoreVar: data.get(#scoreVar, or: $value.scoreVar),
    scoreLocTag: data.get(#scoreLocTag, or: $value.scoreLocTag),
    count: data.get(#count, or: $value.count),
    health: data.get(#health, or: $value.health),
    description: data.get(#description, or: $value.description),
    tooltip: data.get(#tooltip, or: $value.tooltip),
    optional: data.get(#optional, or: $value.optional),
    personal: data.get(#personal, or: $value.personal),
    community: data.get(#community, or: $value.community),
    goal: data.get(#goal, or: $value.goal),
    clanGoal: data.get(#clanGoal, or: $value.clanGoal),
    reward: data.get(#reward, or: $value.reward),
    interimGoals: data.get(#interimGoals, or: $value.interimGoals),
    interimRewards: data.get(#interimRewards, or: $value.interimRewards),
    tag: data.get(#tag, or: $value.tag),
  );

  @override
  WorldEventCopyWith<$R2, WorldEvent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WorldEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

