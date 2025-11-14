// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'mission_reward.dart';

class PlanetMapper extends ClassMapperBase<Planet> {
  PlanetMapper._();

  static PlanetMapper? _instance;
  static PlanetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlanetMapper._());
      RegionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Planet';

  static String _$name(Planet v) => v.name;
  static const Field<Planet, String> _f$name = Field('name', _$name);
  static List<Region> _$nodes(Planet v) => v.nodes;
  static const Field<Planet, List<Region>> _f$nodes = Field('nodes', _$nodes);

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
  ListCopyWith<$R, Region, RegionCopyWith<$R, Region, Region>> get nodes;
  $R call({String? name, List<Region>? nodes});
  PlanetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlanetCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Planet, $Out>
    implements PlanetCopyWith<$R, Planet, $Out> {
  _PlanetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Planet> $mapper = PlanetMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Region, RegionCopyWith<$R, Region, Region>> get nodes =>
      ListCopyWith(
        $value.nodes,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(nodes: v),
      );
  @override
  $R call({String? name, List<Region>? nodes}) => $apply(
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

class RegionMapper extends ClassMapperBase<Region> {
  RegionMapper._();

  static RegionMapper? _instance;
  static RegionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegionMapper._());
      NodeEndlessMapper.ensureInitialized();
      NodeNonEndlessMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Region';

  static String _$name(Region v) => v.name;
  static const Field<Region, String> _f$name = Field('name', _$name);
  static String _$gameMode(Region v) => v.gameMode;
  static const Field<Region, String> _f$gameMode = Field(
    'gameMode',
    _$gameMode,
  );
  static bool _$isEvent(Region v) => v.isEvent;
  static const Field<Region, bool> _f$isEvent = Field('isEvent', _$isEvent);

  @override
  final MappableFields<Region> fields = const {
    #name: _f$name,
    #gameMode: _f$gameMode,
    #isEvent: _f$isEvent,
  };
  @override
  final bool ignoreNull = true;

  static Region _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'Region',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Region fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Region>(map);
  }

  static Region fromJson(String json) {
    return ensureInitialized().decodeJson<Region>(json);
  }
}

mixin RegionMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RegionCopyWith<Region, Region, Region> get copyWith;
}

abstract class RegionCopyWith<$R, $In extends Region, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? gameMode, bool? isEvent});
  RegionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class NodeEndlessMapper extends SubClassMapperBase<NodeEndless> {
  NodeEndlessMapper._();

  static NodeEndlessMapper? _instance;
  static NodeEndlessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NodeEndlessMapper._());
      RegionMapper.ensureInitialized().addSubMapper(_instance!);
      RotationsMapper.ensureInitialized();
      ItemDropMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NodeEndless';

  static String _$name(NodeEndless v) => v.name;
  static const Field<NodeEndless, String> _f$name = Field('name', _$name);
  static String _$gameMode(NodeEndless v) => v.gameMode;
  static const Field<NodeEndless, String> _f$gameMode = Field(
    'gameMode',
    _$gameMode,
  );
  static bool _$isEvent(NodeEndless v) => v.isEvent;
  static const Field<NodeEndless, bool> _f$isEvent = Field(
    'isEvent',
    _$isEvent,
  );
  static Rotations<ItemDrop> _$rewards(NodeEndless v) => v.rewards;
  static const Field<NodeEndless, Rotations<ItemDrop>> _f$rewards = Field(
    'rewards',
    _$rewards,
  );

  @override
  final MappableFields<NodeEndless> fields = const {
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
  final dynamic discriminatorValue = 'endless';
  @override
  late final ClassMapperBase superMapper = RegionMapper.ensureInitialized();

  static NodeEndless _instantiate(DecodingData data) {
    return NodeEndless(
      name: data.dec(_f$name),
      gameMode: data.dec(_f$gameMode),
      isEvent: data.dec(_f$isEvent),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static NodeEndless fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NodeEndless>(map);
  }

  static NodeEndless fromJson(String json) {
    return ensureInitialized().decodeJson<NodeEndless>(json);
  }
}

mixin NodeEndlessMappable {
  String toJson() {
    return NodeEndlessMapper.ensureInitialized().encodeJson<NodeEndless>(
      this as NodeEndless,
    );
  }

  Map<String, dynamic> toMap() {
    return NodeEndlessMapper.ensureInitialized().encodeMap<NodeEndless>(
      this as NodeEndless,
    );
  }

  NodeEndlessCopyWith<NodeEndless, NodeEndless, NodeEndless> get copyWith =>
      _NodeEndlessCopyWithImpl<NodeEndless, NodeEndless>(
        this as NodeEndless,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return NodeEndlessMapper.ensureInitialized().stringifyValue(
      this as NodeEndless,
    );
  }

  @override
  bool operator ==(Object other) {
    return NodeEndlessMapper.ensureInitialized().equalsValue(
      this as NodeEndless,
      other,
    );
  }

  @override
  int get hashCode {
    return NodeEndlessMapper.ensureInitialized().hashValue(this as NodeEndless);
  }
}

extension NodeEndlessValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NodeEndless, $Out> {
  NodeEndlessCopyWith<$R, NodeEndless, $Out> get $asNodeEndless =>
      $base.as((v, t, t2) => _NodeEndlessCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NodeEndlessCopyWith<$R, $In extends NodeEndless, $Out>
    implements RegionCopyWith<$R, $In, $Out> {
  RotationsCopyWith<$R, Rotations<ItemDrop>, Rotations<ItemDrop>, ItemDrop>
  get rewards;
  @override
  $R call({
    String? name,
    String? gameMode,
    bool? isEvent,
    Rotations<ItemDrop>? rewards,
  });
  NodeEndlessCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NodeEndlessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NodeEndless, $Out>
    implements NodeEndlessCopyWith<$R, NodeEndless, $Out> {
  _NodeEndlessCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NodeEndless> $mapper =
      NodeEndlessMapper.ensureInitialized();
  @override
  RotationsCopyWith<$R, Rotations<ItemDrop>, Rotations<ItemDrop>, ItemDrop>
  get rewards => $value.rewards.copyWith.$chain((v) => call(rewards: v));
  @override
  $R call({
    String? name,
    String? gameMode,
    bool? isEvent,
    Rotations<ItemDrop>? rewards,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (gameMode != null) #gameMode: gameMode,
      if (isEvent != null) #isEvent: isEvent,
      if (rewards != null) #rewards: rewards,
    }),
  );
  @override
  NodeEndless $make(CopyWithData data) => NodeEndless(
    name: data.get(#name, or: $value.name),
    gameMode: data.get(#gameMode, or: $value.gameMode),
    isEvent: data.get(#isEvent, or: $value.isEvent),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  NodeEndlessCopyWith<$R2, NodeEndless, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _NodeEndlessCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NodeNonEndlessMapper extends SubClassMapperBase<NodeNonEndless> {
  NodeNonEndlessMapper._();

  static NodeNonEndlessMapper? _instance;
  static NodeNonEndlessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NodeNonEndlessMapper._());
      RegionMapper.ensureInitialized().addSubMapper(_instance!);
      ItemDropMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NodeNonEndless';

  static String _$name(NodeNonEndless v) => v.name;
  static const Field<NodeNonEndless, String> _f$name = Field('name', _$name);
  static String _$gameMode(NodeNonEndless v) => v.gameMode;
  static const Field<NodeNonEndless, String> _f$gameMode = Field(
    'gameMode',
    _$gameMode,
  );
  static bool _$isEvent(NodeNonEndless v) => v.isEvent;
  static const Field<NodeNonEndless, bool> _f$isEvent = Field(
    'isEvent',
    _$isEvent,
  );
  static List<ItemDrop> _$rewards(NodeNonEndless v) => v.rewards;
  static const Field<NodeNonEndless, List<ItemDrop>> _f$rewards = Field(
    'rewards',
    _$rewards,
  );

  @override
  final MappableFields<NodeNonEndless> fields = const {
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
  final dynamic discriminatorValue = 'non-endless';
  @override
  late final ClassMapperBase superMapper = RegionMapper.ensureInitialized();

  static NodeNonEndless _instantiate(DecodingData data) {
    return NodeNonEndless(
      name: data.dec(_f$name),
      gameMode: data.dec(_f$gameMode),
      isEvent: data.dec(_f$isEvent),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static NodeNonEndless fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NodeNonEndless>(map);
  }

  static NodeNonEndless fromJson(String json) {
    return ensureInitialized().decodeJson<NodeNonEndless>(json);
  }
}

mixin NodeNonEndlessMappable {
  String toJson() {
    return NodeNonEndlessMapper.ensureInitialized().encodeJson<NodeNonEndless>(
      this as NodeNonEndless,
    );
  }

  Map<String, dynamic> toMap() {
    return NodeNonEndlessMapper.ensureInitialized().encodeMap<NodeNonEndless>(
      this as NodeNonEndless,
    );
  }

  NodeNonEndlessCopyWith<NodeNonEndless, NodeNonEndless, NodeNonEndless>
  get copyWith => _NodeNonEndlessCopyWithImpl<NodeNonEndless, NodeNonEndless>(
    this as NodeNonEndless,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return NodeNonEndlessMapper.ensureInitialized().stringifyValue(
      this as NodeNonEndless,
    );
  }

  @override
  bool operator ==(Object other) {
    return NodeNonEndlessMapper.ensureInitialized().equalsValue(
      this as NodeNonEndless,
      other,
    );
  }

  @override
  int get hashCode {
    return NodeNonEndlessMapper.ensureInitialized().hashValue(
      this as NodeNonEndless,
    );
  }
}

extension NodeNonEndlessValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NodeNonEndless, $Out> {
  NodeNonEndlessCopyWith<$R, NodeNonEndless, $Out> get $asNodeNonEndless =>
      $base.as((v, t, t2) => _NodeNonEndlessCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NodeNonEndlessCopyWith<$R, $In extends NodeNonEndless, $Out>
    implements RegionCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ItemDrop, ItemDropCopyWith<$R, ItemDrop, ItemDrop>>
  get rewards;
  @override
  $R call({
    String? name,
    String? gameMode,
    bool? isEvent,
    List<ItemDrop>? rewards,
  });
  NodeNonEndlessCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _NodeNonEndlessCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NodeNonEndless, $Out>
    implements NodeNonEndlessCopyWith<$R, NodeNonEndless, $Out> {
  _NodeNonEndlessCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NodeNonEndless> $mapper =
      NodeNonEndlessMapper.ensureInitialized();
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
    String? gameMode,
    bool? isEvent,
    List<ItemDrop>? rewards,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (gameMode != null) #gameMode: gameMode,
      if (isEvent != null) #isEvent: isEvent,
      if (rewards != null) #rewards: rewards,
    }),
  );
  @override
  NodeNonEndless $make(CopyWithData data) => NodeNonEndless(
    name: data.get(#name, or: $value.name),
    gameMode: data.get(#gameMode, or: $value.gameMode),
    isEvent: data.get(#isEvent, or: $value.isEvent),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  NodeNonEndlessCopyWith<$R2, NodeNonEndless, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _NodeNonEndlessCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

