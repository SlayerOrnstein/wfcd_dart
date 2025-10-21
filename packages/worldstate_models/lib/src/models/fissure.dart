import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
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

  VoidFissure toVoidFissure([String locale = 'en']) => VoidFissure.fromRaw(this, locale);
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
    required this.tier,
    required this.tierNum,
    required this.isStorm,
    required this.isSteelpath,
  });

  factory VoidFissure.fromRaw(RawActiveMission raw, String locale) {
    final node = solNodes(locale).fetchNode(raw.node);
    final tier = fissure(raw.modifier ?? raw.activeMissionTier!, locale);

    return VoidFissure(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      node: node.name,
      missionType: node.type ?? raw.missionType ?? raw.node,
      faction: node.enemy ?? raw.node,
      tier: tier.name,
      tierNum: tier.tier,
      isStorm: raw.node.contains('CrewBattle'),
      isSteelpath: raw.hard ?? false,
    );
  }

  final String node;
  final String missionType;
  final String faction;
  final String tier;
  final int tierNum;
  final bool isStorm;
  final bool isSteelpath;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
