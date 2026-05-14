// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'mission_reward.dart';

class PlanetMapper extends ClassMapperBase<Planet> {
  PlanetMapper._();

  static PlanetMapper? _instance;
  static PlanetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlanetMapper._());
      RegionRewardPoolMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Planet';

  static String _$name(Planet v) => v.name;
  static const Field<Planet, String> _f$name = Field('name', _$name);
  static List<RegionRewardPool> _$nodes(Planet v) => v.nodes;
  static const Field<Planet, List<RegionRewardPool>> _f$nodes = Field(
    'nodes',
    _$nodes,
  );

  @override
  final MappableFields<Planet> fields = const {
    #name: _f$name,
    #nodes: _f$nodes,
  };
  @override
  final bool ignoreNull = true;

  static Planet _instantiate(DecodingData data) {
    return Planet(name: data.dec(_f$name), nodes: data.dec(_f$nodes));
  }

  @override
  final Function instantiate = _instantiate;

  static Planet fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Planet>(map);
  }

  static Planet fromJson(String json) {
    return ensureInitialized().decodeJson<Planet>(json);
  }
}

mixin PlanetMappable {
  String toJson() {
    return PlanetMapper.ensureInitialized().encodeJson<Planet>(this as Planet);
  }

  Map<String, dynamic> toMap() {
    return PlanetMapper.ensureInitialized().encodeMap<Planet>(this as Planet);
  }

  PlanetCopyWith<Planet, Planet, Planet> get copyWith =>
      _PlanetCopyWithImpl<Planet, Planet>(this as Planet, $identity, $identity);
  @override
  String toString() {
    return PlanetMapper.ensureInitialized().stringifyValue(this as Planet);
  }

  @override
  bool operator ==(Object other) {
    return PlanetMapper.ensureInitialized().equalsValue(this as Planet, other);
  }

  @override
  int get hashCode {
    return PlanetMapper.ensureInitialized().hashValue(this as Planet);
  }
}

extension PlanetValueCopy<$R, $Out> on ObjectCopyWith<$R, Planet, $Out> {
  PlanetCopyWith<$R, Planet, $Out> get $asPlanet =>
      $base.as((v, t, t2) => _PlanetCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlanetCopyWith<$R, $In extends Planet, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    RegionRewardPool,
    RegionRewardPoolCopyWith<$R, RegionRewardPool, RegionRewardPool>
  >
  get nodes;
  $R call({String? name, List<RegionRewardPool>? nodes});
  PlanetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlanetCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Planet, $Out>
    implements PlanetCopyWith<$R, Planet, $Out> {
  _PlanetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Planet> $mapper = PlanetMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    RegionRewardPool,
    RegionRewardPoolCopyWith<$R, RegionRewardPool, RegionRewardPool>
  >
  get nodes => ListCopyWith(
    $value.nodes,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(nodes: v),
  );
  @override
  $R call({String? name, List<RegionRewardPool>? nodes}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (nodes != null) #nodes: nodes,
    }),
  );
  @override
  Planet $make(CopyWithData data) => Planet(
    name: data.get(#name, or: $value.name),
    nodes: data.get(#nodes, or: $value.nodes),
  );

  @override
  PlanetCopyWith<$R2, Planet, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PlanetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RegionRewardPoolMapper extends ClassMapperBase<RegionRewardPool> {
  RegionRewardPoolMapper._();

  static RegionRewardPoolMapper? _instance;
  static RegionRewardPoolMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegionRewardPoolMapper._());
      SingleRewardPoolMapper.ensureInitialized();
      MultiRewardPoolMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RegionRewardPool';

  static String _$name(RegionRewardPool v) => v.name;
  static const Field<RegionRewardPool, String> _f$name = Field('name', _$name);
  static String? _$gameMode(RegionRewardPool v) => v.gameMode;
  static const Field<RegionRewardPool, String> _f$gameMode = Field(
    'gameMode',
    _$gameMode,
    opt: true,
  );
  static bool? _$isEvent(RegionRewardPool v) => v.isEvent;
  static const Field<RegionRewardPool, bool> _f$isEvent = Field(
    'isEvent',
    _$isEvent,
    opt: true,
  );

  @override
  final MappableFields<RegionRewardPool> fields = const {
    #name: _f$name,
    #gameMode: _f$gameMode,
    #isEvent: _f$isEvent,
  };
  @override
  final bool ignoreNull = true;

  static RegionRewardPool _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'RegionRewardPool',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RegionRewardPool fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegionRewardPool>(map);
  }

  static RegionRewardPool fromJson(String json) {
    return ensureInitialized().decodeJson<RegionRewardPool>(json);
  }
}

mixin RegionRewardPoolMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RegionRewardPoolCopyWith<RegionRewardPool, RegionRewardPool, RegionRewardPool>
  get copyWith;
}

abstract class RegionRewardPoolCopyWith<$R, $In extends RegionRewardPool, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? gameMode, bool? isEvent});
  RegionRewardPoolCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class SingleRewardPoolMapper extends SubClassMapperBase<SingleRewardPool> {
  SingleRewardPoolMapper._();

  static SingleRewardPoolMapper? _instance;
  static SingleRewardPoolMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SingleRewardPoolMapper._());
      RegionRewardPoolMapper.ensureInitialized().addSubMapper(_instance!);
      ItemDropMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SingleRewardPool';

  static String _$name(SingleRewardPool v) => v.name;
  static const Field<SingleRewardPool, String> _f$name = Field('name', _$name);
  static String? _$gameMode(SingleRewardPool v) => v.gameMode;
  static const Field<SingleRewardPool, String> _f$gameMode = Field(
    'gameMode',
    _$gameMode,
    opt: true,
  );
  static bool? _$isEvent(SingleRewardPool v) => v.isEvent;
  static const Field<SingleRewardPool, bool> _f$isEvent = Field(
    'isEvent',
    _$isEvent,
    opt: true,
  );
  static List<ItemDrop> _$rewards(SingleRewardPool v) => v.rewards;
  static const Field<SingleRewardPool, List<ItemDrop>> _f$rewards = Field(
    'rewards',
    _$rewards,
    opt: true,
  );

  @override
  final MappableFields<SingleRewardPool> fields = const {
    #name: _f$name,
    #gameMode: _f$gameMode,
    #isEvent: _f$isEvent,
    #rewards: _f$rewards,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'end_of_mission';
  @override
  late final ClassMapperBase superMapper =
      RegionRewardPoolMapper.ensureInitialized();

  static SingleRewardPool _instantiate(DecodingData data) {
    return SingleRewardPool(
      name: data.dec(_f$name),
      gameMode: data.dec(_f$gameMode),
      isEvent: data.dec(_f$isEvent),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SingleRewardPool fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SingleRewardPool>(map);
  }

  static SingleRewardPool fromJson(String json) {
    return ensureInitialized().decodeJson<SingleRewardPool>(json);
  }
}

mixin SingleRewardPoolMappable {
  String toJson() {
    return SingleRewardPoolMapper.ensureInitialized()
        .encodeJson<SingleRewardPool>(this as SingleRewardPool);
  }

  Map<String, dynamic> toMap() {
    return SingleRewardPoolMapper.ensureInitialized()
        .encodeMap<SingleRewardPool>(this as SingleRewardPool);
  }

  SingleRewardPoolCopyWith<SingleRewardPool, SingleRewardPool, SingleRewardPool>
  get copyWith =>
      _SingleRewardPoolCopyWithImpl<SingleRewardPool, SingleRewardPool>(
        this as SingleRewardPool,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SingleRewardPoolMapper.ensureInitialized().stringifyValue(
      this as SingleRewardPool,
    );
  }

  @override
  bool operator ==(Object other) {
    return SingleRewardPoolMapper.ensureInitialized().equalsValue(
      this as SingleRewardPool,
      other,
    );
  }

  @override
  int get hashCode {
    return SingleRewardPoolMapper.ensureInitialized().hashValue(
      this as SingleRewardPool,
    );
  }
}

extension SingleRewardPoolValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SingleRewardPool, $Out> {
  SingleRewardPoolCopyWith<$R, SingleRewardPool, $Out>
  get $asSingleRewardPool =>
      $base.as((v, t, t2) => _SingleRewardPoolCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SingleRewardPoolCopyWith<$R, $In extends SingleRewardPool, $Out>
    implements RegionRewardPoolCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ItemDrop, ItemDropCopyWith<$R, ItemDrop, ItemDrop>>
  get rewards;
  @override
  $R call({
    String? name,
    String? gameMode,
    bool? isEvent,
    List<ItemDrop>? rewards,
  });
  SingleRewardPoolCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SingleRewardPoolCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SingleRewardPool, $Out>
    implements SingleRewardPoolCopyWith<$R, SingleRewardPool, $Out> {
  _SingleRewardPoolCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SingleRewardPool> $mapper =
      SingleRewardPoolMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ItemDrop, ItemDropCopyWith<$R, ItemDrop, ItemDrop>>
  get rewards => ListCopyWith(
    $value.rewards,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(rewards: v),
  );
  @override
  $R call({
    String? name,
    Object? gameMode = $none,
    Object? isEvent = $none,
    Object? rewards = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (gameMode != $none) #gameMode: gameMode,
      if (isEvent != $none) #isEvent: isEvent,
      if (rewards != $none) #rewards: rewards,
    }),
  );
  @override
  SingleRewardPool $make(CopyWithData data) => SingleRewardPool(
    name: data.get(#name, or: $value.name),
    gameMode: data.get(#gameMode, or: $value.gameMode),
    isEvent: data.get(#isEvent, or: $value.isEvent),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  SingleRewardPoolCopyWith<$R2, SingleRewardPool, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SingleRewardPoolCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MultiRewardPoolMapper extends SubClassMapperBase<MultiRewardPool> {
  MultiRewardPoolMapper._();

  static MultiRewardPoolMapper? _instance;
  static MultiRewardPoolMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MultiRewardPoolMapper._());
      RegionRewardPoolMapper.ensureInitialized().addSubMapper(_instance!);
      RotationsMapper.ensureInitialized();
      ItemDropMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MultiRewardPool';

  static String _$name(MultiRewardPool v) => v.name;
  static const Field<MultiRewardPool, String> _f$name = Field('name', _$name);
  static String? _$gameMode(MultiRewardPool v) => v.gameMode;
  static const Field<MultiRewardPool, String> _f$gameMode = Field(
    'gameMode',
    _$gameMode,
    opt: true,
  );
  static bool? _$isEvent(MultiRewardPool v) => v.isEvent;
  static const Field<MultiRewardPool, bool> _f$isEvent = Field(
    'isEvent',
    _$isEvent,
    opt: true,
  );
  static Rotations<ItemDrop> _$rewards(MultiRewardPool v) => v.rewards;
  static const Field<MultiRewardPool, Rotations<ItemDrop>> _f$rewards = Field(
    'rewards',
    _$rewards,
    opt: true,
  );

  @override
  final MappableFields<MultiRewardPool> fields = const {
    #name: _f$name,
    #gameMode: _f$gameMode,
    #isEvent: _f$isEvent,
    #rewards: _f$rewards,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'rotations';
  @override
  late final ClassMapperBase superMapper =
      RegionRewardPoolMapper.ensureInitialized();

  static MultiRewardPool _instantiate(DecodingData data) {
    return MultiRewardPool(
      name: data.dec(_f$name),
      gameMode: data.dec(_f$gameMode),
      isEvent: data.dec(_f$isEvent),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MultiRewardPool fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MultiRewardPool>(map);
  }

  static MultiRewardPool fromJson(String json) {
    return ensureInitialized().decodeJson<MultiRewardPool>(json);
  }
}

mixin MultiRewardPoolMappable {
  String toJson() {
    return MultiRewardPoolMapper.ensureInitialized()
        .encodeJson<MultiRewardPool>(this as MultiRewardPool);
  }

  Map<String, dynamic> toMap() {
    return MultiRewardPoolMapper.ensureInitialized().encodeMap<MultiRewardPool>(
      this as MultiRewardPool,
    );
  }

  MultiRewardPoolCopyWith<MultiRewardPool, MultiRewardPool, MultiRewardPool>
  get copyWith =>
      _MultiRewardPoolCopyWithImpl<MultiRewardPool, MultiRewardPool>(
        this as MultiRewardPool,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MultiRewardPoolMapper.ensureInitialized().stringifyValue(
      this as MultiRewardPool,
    );
  }

  @override
  bool operator ==(Object other) {
    return MultiRewardPoolMapper.ensureInitialized().equalsValue(
      this as MultiRewardPool,
      other,
    );
  }

  @override
  int get hashCode {
    return MultiRewardPoolMapper.ensureInitialized().hashValue(
      this as MultiRewardPool,
    );
  }
}

extension MultiRewardPoolValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MultiRewardPool, $Out> {
  MultiRewardPoolCopyWith<$R, MultiRewardPool, $Out> get $asMultiRewardPool =>
      $base.as((v, t, t2) => _MultiRewardPoolCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MultiRewardPoolCopyWith<$R, $In extends MultiRewardPool, $Out>
    implements RegionRewardPoolCopyWith<$R, $In, $Out> {
  RotationsCopyWith<$R, Rotations<ItemDrop>, Rotations<ItemDrop>, ItemDrop>
  get rewards;
  @override
  $R call({
    String? name,
    String? gameMode,
    bool? isEvent,
    Rotations<ItemDrop>? rewards,
  });
  MultiRewardPoolCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MultiRewardPoolCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MultiRewardPool, $Out>
    implements MultiRewardPoolCopyWith<$R, MultiRewardPool, $Out> {
  _MultiRewardPoolCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MultiRewardPool> $mapper =
      MultiRewardPoolMapper.ensureInitialized();
  @override
  RotationsCopyWith<$R, Rotations<ItemDrop>, Rotations<ItemDrop>, ItemDrop>
  get rewards => ($value.rewards as Rotations<ItemDrop>).copyWith.$chain(
    (v) => call(rewards: v),
  );
  @override
  $R call({
    String? name,
    Object? gameMode = $none,
    Object? isEvent = $none,
    Object? rewards = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (gameMode != $none) #gameMode: gameMode,
      if (isEvent != $none) #isEvent: isEvent,
      if (rewards != $none) #rewards: rewards,
    }),
  );
  @override
  MultiRewardPool $make(CopyWithData data) => MultiRewardPool(
    name: data.get(#name, or: $value.name),
    gameMode: data.get(#gameMode, or: $value.gameMode),
    isEvent: data.get(#isEvent, or: $value.isEvent),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  MultiRewardPoolCopyWith<$R2, MultiRewardPool, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MultiRewardPoolCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

