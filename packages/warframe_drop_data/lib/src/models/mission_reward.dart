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
  final List<RegionRewardPool> nodes;
}

/// {@template node}
/// Base Class for both endless and non-endless nodes.
/// {@endtemplate}
@MappableClass(discriminatorKey: 'type')
abstract class RegionRewardPool with RegionRewardPoolMappable {
  /// {@macro node}
  RegionRewardPool({required this.name, this.gameMode, this.isEvent});

  /// Get a either a [MultiRewardPool] or [SingleRewardPool] depending on type.
  static const fromMap = RegionRewardPoolMapper.fromMap;

  /// Node name
  final String name;

  /// Node mission type
  final String? gameMode;

  /// Whether or not this is an event node
  final bool? isEvent;
}

/// {@template node_nonendless}
/// Node info for missions that give drops on completion
/// {@endtemplate}
@MappableClass(discriminatorValue: 'end_of_mission')
class SingleRewardPool extends RegionRewardPool with SingleRewardPoolMappable {
  /// {@macro node_nonendless}
  SingleRewardPool({required super.name, super.gameMode, super.isEvent, List<ItemDrop>? rewards})
    : rewards = rewards ?? [];

  /// Creates a [SingleRewardPool] from map
  static const fromMap = SingleRewardPoolMapper.fromMap;

  /// Possible drops recieved at the end of a mission
  final List<ItemDrop> rewards;
}

/// {@template node_endless}
/// Node info for missions with [Rotations]
/// {@endtemplate}
@MappableClass(discriminatorValue: 'rotations')
class MultiRewardPool extends RegionRewardPool with MultiRewardPoolMappable {
  /// {@macro node_endless}
  MultiRewardPool({required super.name, super.gameMode, super.isEvent, Rotations? rewards})
    : rewards = rewards ?? Rotations.empty();

  /// Creates a [MultiRewardPool] from map
  static const fromMap = MultiRewardPoolMapper.fromMap;

  /// Rewards per ABC rotation
  final Rotations rewards;
}
