import 'package:dart_mappable/dart_mappable.dart';

part 'region_schema.mapper.dart';

@MappableClass()
class RegionSchema with RegionSchemaMappable {
  RegionSchema({
    required this.uniqueName,
    required this.name,
    required this.systemIndex,
    required this.systemName,
    required this.nodeType,
    required this.masterReq,
    required this.missionIndex,
    required this.factionIndex,
    required this.minEnemyLevel,
    required this.maxEnemyLevel,
  });

  factory RegionSchema.fromJson(String json) =>
      RegionSchemaMapper.fromJson(json);

  factory RegionSchema.fromMap(Map<String, dynamic> map) =>
      RegionSchemaMapper.fromMap(map);

  final String uniqueName;
  final String name;
  final int systemIndex;
  final String systemName;
  final int nodeType;
  final int masterReq;
  final int missionIndex;
  final int factionIndex;
  final int minEnemyLevel;
  final int maxEnemyLevel;
}
