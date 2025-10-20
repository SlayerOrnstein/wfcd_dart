import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/schema.dart';
import 'package:warframe_items/src/models/raws/upgrade_schema.dart';

part 'arcane_schema.mapper.dart';

@MappableClass()
class ArcaneSchema extends Schema with ArcaneSchemaMappable {
  ArcaneSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    required this.rarity,
    required this.levelStats,
    super.excludeFromCodex,
  });

  factory ArcaneSchema.fromJson(String json) => ArcaneSchemaMapper.fromJson(json);

  factory ArcaneSchema.fromMap(Map<String, dynamic> map) => ArcaneSchemaMapper.fromMap(map);

  final String rarity;
  final List<LevelStat> levelStats;
}
