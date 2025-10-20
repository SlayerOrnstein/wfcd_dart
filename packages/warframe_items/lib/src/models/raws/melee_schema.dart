import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/schema.dart';

part 'melee_schema.mapper.dart';

@MappableClass()
class MeleeSchema extends Schema with MeleeSchemaMappable {
  MeleeSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    required super.productCategory,
    required super.excludeFromCodex,
    required this.damagePerShot,
    required this.totalDamage,
    required this.criticalChance,
    required this.criticalMultiplier,
    required this.procChance,
    required this.masteryReq,
    required this.slot,
    required this.omegaAttenuation,
    required this.maxLevelCap,
    required this.fireRate,
    required this.blockingAngle,
    required this.comboDuration,
    required this.followThrough,
    required this.range,
    required this.slamAttack,
    required this.slamRadialDamage,
    required this.slamRadius,
    required this.slideAttack,
    required this.heavyAttackDamage,
    required this.heavyAttackSlam,
    required this.heavySlamRadialDamage,
    required this.heavySlamRadius,
    required this.windUp,
  });

  factory MeleeSchema.fromJson(String json) => MeleeSchemaMapper.fromJson(json);

  factory MeleeSchema.fromMap(Map<String, dynamic> map) => MeleeSchemaMapper.fromMap(map);

  final List<double> damagePerShot;
  final double totalDamage;
  final double criticalChance;
  final double criticalMultiplier;
  final double procChance;
  final double fireRate;
  final int masteryReq;
  final int slot;
  final double omegaAttenuation;
  final int maxLevelCap;
  final int blockingAngle;
  final int comboDuration;
  final double followThrough;
  final double range;
  final double slamAttack;
  final double slamRadialDamage;
  final double slamRadius;
  final double slideAttack;
  final double heavyAttackDamage;
  final double heavyAttackSlam;
  final double heavySlamRadialDamage;
  final double heavySlamRadius;
  final double windUp;
}
