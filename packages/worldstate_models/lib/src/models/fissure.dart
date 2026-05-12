import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/warframe_drop_data.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'fissure.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawActiveMission extends BaseContentObject with RawActiveMissionMappable {
  RawActiveMission({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.node,
    required this.missionType,
    required this.modifier,
    required this.hard,
    required this.activeMissionTier,
  });

  static const fromMap = RawActiveMissionMapper.fromMap;

  final String node;
  final String? missionType;
  final String? modifier;
  final bool? hard;
  final String? activeMissionTier;

  VoidFissure toVoidFissure(Dependency deps) => VoidFissure.fromRaw(this, deps);
}

@MappableClass()
class VoidFissure extends WorldstateObject with VoidFissureMappable {
  VoidFissure({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.node,
    required this.missionType,
    required this.faction,
    required this.key,
    required this.isStorm,
    required this.isSteelpath,
    required this.rewardTables,
  });

  factory VoidFissure.fromRaw(RawActiveMission raw, Dependency deps) {
    final node = deps.nodes.fetchNode(raw.node);
    final regions = _findMissionRewards(node.name, deps.rewardTables.missionRewards);

    return VoidFissure(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      node: node.name,
      missionType: node.type ?? raw.missionType ?? raw.node,
      faction: node.enemy ?? raw.node,
      key: raw.modifier ?? raw.activeMissionTier!,
      isStorm: raw.node.contains('CrewBattle'),
      isSteelpath: raw.hard ?? false,
      rewardTables: regions,
    );
  }

  final String node;
  final String missionType;
  final String faction;
  final String key;
  final bool isStorm;
  final bool isSteelpath;
  final List<Region> rewardTables;

  FissureTier get tier => FissureTier.values[int.parse(key.replaceAll(RegExp(r'\D'), '')) - 1];

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;

  static List<Region> _findMissionRewards(String node, List<Planet> planets) {
    final planet = RegExp(r'\(([^)]+)\)').firstMatch(node)?.group(1);
    if (planet == null) return throw FormatException('the give node is not valid: $node');

    final nodeName = node.split('(').first.trim();
    final tables = <Region>[];
    for (final p in planets) {
      // Data does not include 'Proxima' in its naming scheme
      if (!p.name.startsWith(planet)) continue;

      for (final node in p.nodes) {
        // Don't need reward pools for events in the context of fissures
        if (node.name != nodeName || node.isEvent) continue;
        tables.add(node);
      }

      break; // Don't need to go through the rest of the planets at this point
    }

    return tables;
  }
}
