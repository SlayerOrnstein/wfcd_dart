import 'package:collection/collection.dart';
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
    required this.rewardTable,
  });

  factory VoidFissure.fromRaw(RawActiveMission raw, Dependency deps) {
    final node = deps.nodes.fetchNode(raw.node);
    final planetTable = deps.rewardTables.missionRewards.firstWhereOrNull((i) => node.name.contains(i.name));
    final nodeTable = planetTable?.nodes.firstWhereOrNull((n) => node.name.contains(n.name));

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
      rewardTable: nodeTable,
    );
  }

  final String node;
  final String missionType;
  final String faction;
  final String key;
  final bool isStorm;
  final bool isSteelpath;
  final Region? rewardTable;

  FissureTier get tier => FissureTier.values[int.parse(key.replaceAll(RegExp(r'\D'), '')) - 1];

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
