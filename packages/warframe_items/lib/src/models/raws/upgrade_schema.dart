import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/schema.dart';

part 'upgrade_schema.mapper.dart';

@MappableClass()
class UpgradeSchema extends Schema with UpgradeSchemaMappable {
  UpgradeSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    required this.polarity,
    required this.rarity,
    required this.baseDrain,
    required this.fusionLimit,
    required this.isUtility,
    required this.compatName,
    required this.type,
    required this.subtype,
    required this.levelStats,
    super.excludeFromCodex,
    super.parentName,
    super.productCategory,
  });

  factory UpgradeSchema.fromJson(String json) => UpgradeSchemaMapper.fromJson(json);

  factory UpgradeSchema.fromMap(Map<String, dynamic> map) => UpgradeSchemaMapper.fromMap(map);

  final String polarity;
  final String rarity;
  final int baseDrain;
  final int fusionLimit;
  final bool isUtility;
  final String compatName;
  final String type;
  final String subtype;
  final List<LevelStat> levelStats;
}

@MappableClass()
class LevelStat with LevelStatMappable {
  LevelStat({required this.stats});

  factory LevelStat.fromJson(String json) => LevelStatMapper.fromJson(json);

  factory LevelStat.fromMap(Map<String, dynamic> map) => LevelStatMapper.fromMap(map);

  final List<String> stats;
}
