import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/drop.dart';
import 'package:warframe_drop_data/src/models/rotation.dart';

part 'mission_reward.mapper.dart';

/// {@template planet}
/// Planet name and associated nodes
/// {@endtemplate}
@MappableClass()
class Planet with PlanetMappable {
  /// {@macro planet}
  Planet({required this.name, required this.nodes});

  /// Creates a [Planet] from map
  static const fromMap = PlanetMapper.fromMap;

  /// Planet name
  final String name;

  /// Nodes on said planet
  final List<Region> nodes;
}

/// {@template node}
/// Base Class for both endless and non-endless nodes.
/// {@endtemplate}
@MappableClass(discriminatorKey: 'type')
abstract class Region with RegionMappable {
  /// {@macro node}
  Region({required this.name, required this.gameMode, required this.isEvent});

  /// Get a either a [NodeEndless] or [NodeNonEndless] depending on type.
  static const fromMap = RegionMapper.fromMap;

  /// Node name
  final String name;

  /// Node mission type
  final String gameMode;

  /// Whether or not this is an event node
  final bool isEvent;
}

/// {@template node_endless}
/// Node info for missions with [Rotations]
/// {@endtemplate}
@MappableClass(discriminatorValue: 'endless')
class NodeEndless extends Region with NodeEndlessMappable {
  /// {@macro node_endless}
  NodeEndless({required super.name, required super.gameMode, required super.isEvent, required this.rewards});

  /// Creates a [NodeEndless] from map
  static const fromMap = NodeEndlessMapper.fromMap;

  /// Rewards per ABC rotation
  final Rotations rewards;
}

/// {@template node_nonendless}
/// Node info for missions that give drops on completion
/// {@endtemplate}
@MappableClass(discriminatorValue: 'non-endless')
class NodeNonEndless extends Region with NodeNonEndlessMappable {
  /// {@macro node_nonendless}
  NodeNonEndless({required super.name, required super.gameMode, required super.isEvent, required this.rewards});

  /// Creates a [NodeNonEndless] from map
  static const fromMap = NodeNonEndlessMapper.fromMap;

  /// Possible drops recieved at the end of a mission
  final List<ItemDrop> rewards;
}
