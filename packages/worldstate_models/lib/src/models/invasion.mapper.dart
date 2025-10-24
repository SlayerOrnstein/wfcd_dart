// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'invasion.dart';

class RawMissionInfoMapper extends ClassMapperBase<RawMissionInfo> {
  RawMissionInfoMapper._();

  static RawMissionInfoMapper? _instance;
  static RawMissionInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawMissionInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawMissionInfo';

  static int _$seed(RawMissionInfo v) => v.seed;
  static const Field<RawMissionInfo, int> _f$seed = Field('seed', _$seed);
  static String _$faction(RawMissionInfo v) => v.faction;
  static const Field<RawMissionInfo, String> _f$faction = Field(
    'faction',
    _$faction,
  );

  @override
  final MappableFields<RawMissionInfo> fields = const {
    #seed: _f$seed,
    #faction: _f$faction,
  };
  @override
  final bool ignoreNull = true;

  static RawMissionInfo _instantiate(DecodingData data) {
    return RawMissionInfo(
      seed: data.dec(_f$seed),
      faction: data.dec(_f$faction),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawMissionInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawMissionInfo>(map);
  }

  static RawMissionInfo fromJson(String json) {
    return ensureInitialized().decodeJson<RawMissionInfo>(json);
  }
}

mixin RawMissionInfoMappable {
  String toJson() {
    return RawMissionInfoMapper.ensureInitialized().encodeJson<RawMissionInfo>(
      this as RawMissionInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return RawMissionInfoMapper.ensureInitialized().encodeMap<RawMissionInfo>(
      this as RawMissionInfo,
    );
  }

  RawMissionInfoCopyWith<RawMissionInfo, RawMissionInfo, RawMissionInfo>
  get copyWith => _RawMissionInfoCopyWithImpl<RawMissionInfo, RawMissionInfo>(
    this as RawMissionInfo,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawMissionInfoMapper.ensureInitialized().stringifyValue(
      this as RawMissionInfo,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawMissionInfoMapper.ensureInitialized().equalsValue(
      this as RawMissionInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return RawMissionInfoMapper.ensureInitialized().hashValue(
      this as RawMissionInfo,
    );
  }
}

extension RawMissionInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawMissionInfo, $Out> {
  RawMissionInfoCopyWith<$R, RawMissionInfo, $Out> get $asRawMissionInfo =>
      $base.as((v, t, t2) => _RawMissionInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawMissionInfoCopyWith<$R, $In extends RawMissionInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? seed, String? faction});
  RawMissionInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawMissionInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawMissionInfo, $Out>
    implements RawMissionInfoCopyWith<$R, RawMissionInfo, $Out> {
  _RawMissionInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawMissionInfo> $mapper =
      RawMissionInfoMapper.ensureInitialized();
  @override
  $R call({int? seed, String? faction}) => $apply(
    FieldCopyWithData({
      if (seed != null) #seed: seed,
      if (faction != null) #faction: faction,
    }),
  );
  @override
  RawMissionInfo $make(CopyWithData data) => RawMissionInfo(
    seed: data.get(#seed, or: $value.seed),
    faction: data.get(#faction, or: $value.faction),
  );

  @override
  RawMissionInfoCopyWith<$R2, RawMissionInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawMissionInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawInvasionMapper extends ClassMapperBase<RawInvasion> {
  RawInvasionMapper._();

  static RawInvasionMapper? _instance;
  static RawInvasionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawInvasionMapper._());
      RawMissionInfoMapper.ensureInitialized();
      RawRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawInvasion';

  static Map<String, dynamic> _$id(RawInvasion v) => v.id;
  static const Field<RawInvasion, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static Map<String, dynamic>? _$activation(RawInvasion v) => v.activation;
  static const Field<RawInvasion, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static String _$faction(RawInvasion v) => v.faction;
  static const Field<RawInvasion, String> _f$faction = Field(
    'faction',
    _$faction,
    key: r'Faction',
  );
  static String _$defenderFaction(RawInvasion v) => v.defenderFaction;
  static const Field<RawInvasion, String> _f$defenderFaction = Field(
    'defenderFaction',
    _$defenderFaction,
    key: r'DefenderFaction',
  );
  static String _$node(RawInvasion v) => v.node;
  static const Field<RawInvasion, String> _f$node = Field(
    'node',
    _$node,
    key: r'Node',
  );
  static int _$count(RawInvasion v) => v.count;
  static const Field<RawInvasion, int> _f$count = Field(
    'count',
    _$count,
    key: r'Count',
  );
  static int _$goal(RawInvasion v) => v.goal;
  static const Field<RawInvasion, int> _f$goal = Field(
    'goal',
    _$goal,
    key: r'Goal',
  );
  static String _$locTag(RawInvasion v) => v.locTag;
  static const Field<RawInvasion, String> _f$locTag = Field(
    'locTag',
    _$locTag,
    key: r'LocTag',
  );
  static bool _$completed(RawInvasion v) => v.completed;
  static const Field<RawInvasion, bool> _f$completed = Field(
    'completed',
    _$completed,
    key: r'Completed',
  );
  static RawReward? _$attackerReward(RawInvasion v) => v.attackerReward;
  static dynamic _arg$attackerReward(f) => f<RawReward>();
  static const Field<RawInvasion, dynamic> _f$attackerReward = Field(
    'attackerReward',
    _$attackerReward,
    key: r'AttackerReward',
    arg: _arg$attackerReward,
  );
  static RawMissionInfo _$attackerMissionInfo(RawInvasion v) =>
      v.attackerMissionInfo;
  static const Field<RawInvasion, RawMissionInfo> _f$attackerMissionInfo =
      Field(
        'attackerMissionInfo',
        _$attackerMissionInfo,
        key: r'AttackerMissionInfo',
      );
  static RawReward _$defenderReward(RawInvasion v) => v.defenderReward;
  static const Field<RawInvasion, RawReward> _f$defenderReward = Field(
    'defenderReward',
    _$defenderReward,
    key: r'DefenderReward',
  );
  static RawMissionInfo _$defenderMissionInfo(RawInvasion v) =>
      v.defenderMissionInfo;
  static const Field<RawInvasion, RawMissionInfo> _f$defenderMissionInfo =
      Field(
        'defenderMissionInfo',
        _$defenderMissionInfo,
        key: r'DefenderMissionInfo',
      );

  @override
  final MappableFields<RawInvasion> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #faction: _f$faction,
    #defenderFaction: _f$defenderFaction,
    #node: _f$node,
    #count: _f$count,
    #goal: _f$goal,
    #locTag: _f$locTag,
    #completed: _f$completed,
    #attackerReward: _f$attackerReward,
    #attackerMissionInfo: _f$attackerMissionInfo,
    #defenderReward: _f$defenderReward,
    #defenderMissionInfo: _f$defenderMissionInfo,
  };
  @override
  final bool ignoreNull = true;

  static RawInvasion _instantiate(DecodingData data) {
    return RawInvasion(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      faction: data.dec(_f$faction),
      defenderFaction: data.dec(_f$defenderFaction),
      node: data.dec(_f$node),
      count: data.dec(_f$count),
      goal: data.dec(_f$goal),
      locTag: data.dec(_f$locTag),
      completed: data.dec(_f$completed),
      attackerReward: data.dec(_f$attackerReward),
      attackerMissionInfo: data.dec(_f$attackerMissionInfo),
      defenderReward: data.dec(_f$defenderReward),
      defenderMissionInfo: data.dec(_f$defenderMissionInfo),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawInvasion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawInvasion>(map);
  }

  static RawInvasion fromJson(String json) {
    return ensureInitialized().decodeJson<RawInvasion>(json);
  }
}

mixin RawInvasionMappable {
  String toJson() {
    return RawInvasionMapper.ensureInitialized().encodeJson<RawInvasion>(
      this as RawInvasion,
    );
  }

  Map<String, dynamic> toMap() {
    return RawInvasionMapper.ensureInitialized().encodeMap<RawInvasion>(
      this as RawInvasion,
    );
  }

  RawInvasionCopyWith<RawInvasion, RawInvasion, RawInvasion> get copyWith =>
      _RawInvasionCopyWithImpl<RawInvasion, RawInvasion>(
        this as RawInvasion,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawInvasionMapper.ensureInitialized().stringifyValue(
      this as RawInvasion,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawInvasionMapper.ensureInitialized().equalsValue(
      this as RawInvasion,
      other,
    );
  }

  @override
  int get hashCode {
    return RawInvasionMapper.ensureInitialized().hashValue(this as RawInvasion);
  }
}

extension RawInvasionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawInvasion, $Out> {
  RawInvasionCopyWith<$R, RawInvasion, $Out> get $asRawInvasion =>
      $base.as((v, t, t2) => _RawInvasionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawInvasionCopyWith<$R, $In extends RawInvasion, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  RawMissionInfoCopyWith<$R, RawMissionInfo, RawMissionInfo>
  get attackerMissionInfo;
  RawRewardCopyWith<$R, RawReward, RawReward> get defenderReward;
  RawMissionInfoCopyWith<$R, RawMissionInfo, RawMissionInfo>
  get defenderMissionInfo;
  $R call({
    Map<String, dynamic>? id,
    Map<String, dynamic>? activation,
    String? faction,
    String? defenderFaction,
    String? node,
    int? count,
    int? goal,
    String? locTag,
    bool? completed,
    dynamic attackerReward,
    RawMissionInfo? attackerMissionInfo,
    RawReward? defenderReward,
    RawMissionInfo? defenderMissionInfo,
  });
  RawInvasionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawInvasionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawInvasion, $Out>
    implements RawInvasionCopyWith<$R, RawInvasion, $Out> {
  _RawInvasionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawInvasion> $mapper =
      RawInvasionMapper.ensureInitialized();
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
  RawMissionInfoCopyWith<$R, RawMissionInfo, RawMissionInfo>
  get attackerMissionInfo => $value.attackerMissionInfo.copyWith.$chain(
    (v) => call(attackerMissionInfo: v),
  );
  @override
  RawRewardCopyWith<$R, RawReward, RawReward> get defenderReward =>
      $value.defenderReward.copyWith.$chain((v) => call(defenderReward: v));
  @override
  RawMissionInfoCopyWith<$R, RawMissionInfo, RawMissionInfo>
  get defenderMissionInfo => $value.defenderMissionInfo.copyWith.$chain(
    (v) => call(defenderMissionInfo: v),
  );
  @override
  $R call({
    Map<String, dynamic>? id,
    Object? activation = $none,
    String? faction,
    String? defenderFaction,
    String? node,
    int? count,
    int? goal,
    String? locTag,
    bool? completed,
    Object? attackerReward = $none,
    RawMissionInfo? attackerMissionInfo,
    RawReward? defenderReward,
    RawMissionInfo? defenderMissionInfo,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (faction != null) #faction: faction,
      if (defenderFaction != null) #defenderFaction: defenderFaction,
      if (node != null) #node: node,
      if (count != null) #count: count,
      if (goal != null) #goal: goal,
      if (locTag != null) #locTag: locTag,
      if (completed != null) #completed: completed,
      if (attackerReward != $none) #attackerReward: attackerReward,
      if (attackerMissionInfo != null)
        #attackerMissionInfo: attackerMissionInfo,
      if (defenderReward != null) #defenderReward: defenderReward,
      if (defenderMissionInfo != null)
        #defenderMissionInfo: defenderMissionInfo,
    }),
  );
  @override
  RawInvasion $make(CopyWithData data) => RawInvasion(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    faction: data.get(#faction, or: $value.faction),
    defenderFaction: data.get(#defenderFaction, or: $value.defenderFaction),
    node: data.get(#node, or: $value.node),
    count: data.get(#count, or: $value.count),
    goal: data.get(#goal, or: $value.goal),
    locTag: data.get(#locTag, or: $value.locTag),
    completed: data.get(#completed, or: $value.completed),
    attackerReward: data.get(#attackerReward, or: $value.attackerReward),
    attackerMissionInfo: data.get(
      #attackerMissionInfo,
      or: $value.attackerMissionInfo,
    ),
    defenderReward: data.get(#defenderReward, or: $value.defenderReward),
    defenderMissionInfo: data.get(
      #defenderMissionInfo,
      or: $value.defenderMissionInfo,
    ),
  );

  @override
  RawInvasionCopyWith<$R2, RawInvasion, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawInvasionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class InvasionMapper extends ClassMapperBase<Invasion> {
  InvasionMapper._();

  static InvasionMapper? _instance;
  static InvasionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InvasionMapper._());
      InvasionFactionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Invasion';

  static String _$id(Invasion v) => v.id;
  static const Field<Invasion, String> _f$id = Field('id', _$id);
  static DateTime _$activation(Invasion v) => v.activation;
  static const Field<Invasion, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static String _$key(Invasion v) => v.key;
  static const Field<Invasion, String> _f$key = Field('key', _$key);
  static String _$node(Invasion v) => v.node;
  static const Field<Invasion, String> _f$node = Field('node', _$node);
  static String _$description(Invasion v) => v.description;
  static const Field<Invasion, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$attackingFaction(Invasion v) => v.attackingFaction;
  static const Field<Invasion, String> _f$attackingFaction = Field(
    'attackingFaction',
    _$attackingFaction,
  );
  static InvasionFaction _$attacker(Invasion v) => v.attacker;
  static const Field<Invasion, InvasionFaction> _f$attacker = Field(
    'attacker',
    _$attacker,
  );
  static String _$defendingFaction(Invasion v) => v.defendingFaction;
  static const Field<Invasion, String> _f$defendingFaction = Field(
    'defendingFaction',
    _$defendingFaction,
  );
  static InvasionFaction _$defender(Invasion v) => v.defender;
  static const Field<Invasion, InvasionFaction> _f$defender = Field(
    'defender',
    _$defender,
  );
  static bool _$vsInfestation(Invasion v) => v.vsInfestation;
  static const Field<Invasion, bool> _f$vsInfestation = Field(
    'vsInfestation',
    _$vsInfestation,
  );
  static int _$count(Invasion v) => v.count;
  static const Field<Invasion, int> _f$count = Field('count', _$count);
  static int _$requiredRuns(Invasion v) => v.requiredRuns;
  static const Field<Invasion, int> _f$requiredRuns = Field(
    'requiredRuns',
    _$requiredRuns,
  );
  static int _$completion(Invasion v) => v.completion;
  static const Field<Invasion, int> _f$completion = Field(
    'completion',
    _$completion,
  );
  static bool _$isCompleted(Invasion v) => v.isCompleted;
  static const Field<Invasion, bool> _f$isCompleted = Field(
    'isCompleted',
    _$isCompleted,
  );
  static List<String> _$rewardTypes(Invasion v) => v.rewardTypes;
  static const Field<Invasion, List<String>> _f$rewardTypes = Field(
    'rewardTypes',
    _$rewardTypes,
  );

  @override
  final MappableFields<Invasion> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #key: _f$key,
    #node: _f$node,
    #description: _f$description,
    #attackingFaction: _f$attackingFaction,
    #attacker: _f$attacker,
    #defendingFaction: _f$defendingFaction,
    #defender: _f$defender,
    #vsInfestation: _f$vsInfestation,
    #count: _f$count,
    #requiredRuns: _f$requiredRuns,
    #completion: _f$completion,
    #isCompleted: _f$isCompleted,
    #rewardTypes: _f$rewardTypes,
  };
  @override
  final bool ignoreNull = true;

  static Invasion _instantiate(DecodingData data) {
    return Invasion(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      key: data.dec(_f$key),
      node: data.dec(_f$node),
      description: data.dec(_f$description),
      attackingFaction: data.dec(_f$attackingFaction),
      attacker: data.dec(_f$attacker),
      defendingFaction: data.dec(_f$defendingFaction),
      defender: data.dec(_f$defender),
      vsInfestation: data.dec(_f$vsInfestation),
      count: data.dec(_f$count),
      requiredRuns: data.dec(_f$requiredRuns),
      completion: data.dec(_f$completion),
      isCompleted: data.dec(_f$isCompleted),
      rewardTypes: data.dec(_f$rewardTypes),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Invasion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Invasion>(map);
  }

  static Invasion fromJson(String json) {
    return ensureInitialized().decodeJson<Invasion>(json);
  }
}

mixin InvasionMappable {
  String toJson() {
    return InvasionMapper.ensureInitialized().encodeJson<Invasion>(
      this as Invasion,
    );
  }

  Map<String, dynamic> toMap() {
    return InvasionMapper.ensureInitialized().encodeMap<Invasion>(
      this as Invasion,
    );
  }

  InvasionCopyWith<Invasion, Invasion, Invasion> get copyWith =>
      _InvasionCopyWithImpl<Invasion, Invasion>(
        this as Invasion,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return InvasionMapper.ensureInitialized().stringifyValue(this as Invasion);
  }

  @override
  bool operator ==(Object other) {
    return InvasionMapper.ensureInitialized().equalsValue(
      this as Invasion,
      other,
    );
  }

  @override
  int get hashCode {
    return InvasionMapper.ensureInitialized().hashValue(this as Invasion);
  }
}

extension InvasionValueCopy<$R, $Out> on ObjectCopyWith<$R, Invasion, $Out> {
  InvasionCopyWith<$R, Invasion, $Out> get $asInvasion =>
      $base.as((v, t, t2) => _InvasionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InvasionCopyWith<$R, $In extends Invasion, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  InvasionFactionCopyWith<$R, InvasionFaction, InvasionFaction> get attacker;
  InvasionFactionCopyWith<$R, InvasionFaction, InvasionFaction> get defender;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get rewardTypes;
  $R call({
    String? id,
    DateTime? activation,
    String? key,
    String? node,
    String? description,
    String? attackingFaction,
    InvasionFaction? attacker,
    String? defendingFaction,
    InvasionFaction? defender,
    bool? vsInfestation,
    int? count,
    int? requiredRuns,
    int? completion,
    bool? isCompleted,
    List<String>? rewardTypes,
  });
  InvasionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InvasionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Invasion, $Out>
    implements InvasionCopyWith<$R, Invasion, $Out> {
  _InvasionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Invasion> $mapper =
      InvasionMapper.ensureInitialized();
  @override
  InvasionFactionCopyWith<$R, InvasionFaction, InvasionFaction> get attacker =>
      $value.attacker.copyWith.$chain((v) => call(attacker: v));
  @override
  InvasionFactionCopyWith<$R, InvasionFaction, InvasionFaction> get defender =>
      $value.defender.copyWith.$chain((v) => call(defender: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get rewardTypes => ListCopyWith(
    $value.rewardTypes,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(rewardTypes: v),
  );
  @override
  $R call({
    String? id,
    Object? activation = $none,
    String? key,
    String? node,
    String? description,
    String? attackingFaction,
    InvasionFaction? attacker,
    String? defendingFaction,
    InvasionFaction? defender,
    bool? vsInfestation,
    int? count,
    int? requiredRuns,
    int? completion,
    bool? isCompleted,
    List<String>? rewardTypes,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (key != null) #key: key,
      if (node != null) #node: node,
      if (description != null) #description: description,
      if (attackingFaction != null) #attackingFaction: attackingFaction,
      if (attacker != null) #attacker: attacker,
      if (defendingFaction != null) #defendingFaction: defendingFaction,
      if (defender != null) #defender: defender,
      if (vsInfestation != null) #vsInfestation: vsInfestation,
      if (count != null) #count: count,
      if (requiredRuns != null) #requiredRuns: requiredRuns,
      if (completion != null) #completion: completion,
      if (isCompleted != null) #isCompleted: isCompleted,
      if (rewardTypes != null) #rewardTypes: rewardTypes,
    }),
  );
  @override
  Invasion $make(CopyWithData data) => Invasion(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    key: data.get(#key, or: $value.key),
    node: data.get(#node, or: $value.node),
    description: data.get(#description, or: $value.description),
    attackingFaction: data.get(#attackingFaction, or: $value.attackingFaction),
    attacker: data.get(#attacker, or: $value.attacker),
    defendingFaction: data.get(#defendingFaction, or: $value.defendingFaction),
    defender: data.get(#defender, or: $value.defender),
    vsInfestation: data.get(#vsInfestation, or: $value.vsInfestation),
    count: data.get(#count, or: $value.count),
    requiredRuns: data.get(#requiredRuns, or: $value.requiredRuns),
    completion: data.get(#completion, or: $value.completion),
    isCompleted: data.get(#isCompleted, or: $value.isCompleted),
    rewardTypes: data.get(#rewardTypes, or: $value.rewardTypes),
  );

  @override
  InvasionCopyWith<$R2, Invasion, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _InvasionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class InvasionFactionMapper extends ClassMapperBase<InvasionFaction> {
  InvasionFactionMapper._();

  static InvasionFactionMapper? _instance;
  static InvasionFactionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InvasionFactionMapper._());
      RewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InvasionFaction';

  static String _$key(InvasionFaction v) => v.key;
  static const Field<InvasionFaction, String> _f$key = Field('key', _$key);
  static String _$faction(InvasionFaction v) => v.faction;
  static const Field<InvasionFaction, String> _f$faction = Field(
    'faction',
    _$faction,
  );
  static Reward? _$reward(InvasionFaction v) => v.reward;
  static const Field<InvasionFaction, Reward> _f$reward = Field(
    'reward',
    _$reward,
  );

  @override
  final MappableFields<InvasionFaction> fields = const {
    #key: _f$key,
    #faction: _f$faction,
    #reward: _f$reward,
  };
  @override
  final bool ignoreNull = true;

  static InvasionFaction _instantiate(DecodingData data) {
    return InvasionFaction(
      key: data.dec(_f$key),
      faction: data.dec(_f$faction),
      reward: data.dec(_f$reward),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static InvasionFaction fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InvasionFaction>(map);
  }

  static InvasionFaction fromJson(String json) {
    return ensureInitialized().decodeJson<InvasionFaction>(json);
  }
}

mixin InvasionFactionMappable {
  String toJson() {
    return InvasionFactionMapper.ensureInitialized()
        .encodeJson<InvasionFaction>(this as InvasionFaction);
  }

  Map<String, dynamic> toMap() {
    return InvasionFactionMapper.ensureInitialized().encodeMap<InvasionFaction>(
      this as InvasionFaction,
    );
  }

  InvasionFactionCopyWith<InvasionFaction, InvasionFaction, InvasionFaction>
  get copyWith =>
      _InvasionFactionCopyWithImpl<InvasionFaction, InvasionFaction>(
        this as InvasionFaction,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return InvasionFactionMapper.ensureInitialized().stringifyValue(
      this as InvasionFaction,
    );
  }

  @override
  bool operator ==(Object other) {
    return InvasionFactionMapper.ensureInitialized().equalsValue(
      this as InvasionFaction,
      other,
    );
  }

  @override
  int get hashCode {
    return InvasionFactionMapper.ensureInitialized().hashValue(
      this as InvasionFaction,
    );
  }
}

extension InvasionFactionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InvasionFaction, $Out> {
  InvasionFactionCopyWith<$R, InvasionFaction, $Out> get $asInvasionFaction =>
      $base.as((v, t, t2) => _InvasionFactionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InvasionFactionCopyWith<$R, $In extends InvasionFaction, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RewardCopyWith<$R, Reward, Reward>? get reward;
  $R call({String? key, String? faction, Reward? reward});
  InvasionFactionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _InvasionFactionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InvasionFaction, $Out>
    implements InvasionFactionCopyWith<$R, InvasionFaction, $Out> {
  _InvasionFactionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InvasionFaction> $mapper =
      InvasionFactionMapper.ensureInitialized();
  @override
  RewardCopyWith<$R, Reward, Reward>? get reward =>
      $value.reward?.copyWith.$chain((v) => call(reward: v));
  @override
  $R call({String? key, String? faction, Object? reward = $none}) => $apply(
    FieldCopyWithData({
      if (key != null) #key: key,
      if (faction != null) #faction: faction,
      if (reward != $none) #reward: reward,
    }),
  );
  @override
  InvasionFaction $make(CopyWithData data) => InvasionFaction(
    key: data.get(#key, or: $value.key),
    faction: data.get(#faction, or: $value.faction),
    reward: data.get(#reward, or: $value.reward),
  );

  @override
  InvasionFactionCopyWith<$R2, InvasionFaction, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _InvasionFactionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

