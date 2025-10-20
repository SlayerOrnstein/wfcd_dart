import 'package:dart_mappable/dart_mappable.dart';

part 'weapon_schema.mapper.dart';

@MappableClass()
class WeaponSchema with WeaponSchemaMappable {
  WeaponSchema({
    required this.uniqueName,
    required this.name,
    required this.description,
    required this.codexSecret,
    required this.damagePerShot,
    required this.totalDamage,
    required this.criticalChance,
    required this.criticalMultiplier,
    required this.procChance,
    required this.fireRate,
    required this.masteryReq,
    required this.productCategory,
    required this.excludeFromCodex,
    required this.slot,
    required this.accuracy,
    required this.omegaAttenuation,
    required this.maxLevelCap,
    required this.noise,
    required this.trigger,
    required this.magazineSize,
    required this.reloadTime,
    required this.sentinel,
    required this.multishot,
  });

  factory WeaponSchema.fromJson(String json) => WeaponSchemaMapper.fromJson(json);

  factory WeaponSchema.fromMap(Map<String, dynamic> map) => WeaponSchemaMapper.fromMap(map);

  final String uniqueName;
  final String name;
  final String description;
  final bool codexSecret;
  final List<double> damagePerShot;
  final double totalDamage;
  final double criticalChance;
  final double criticalMultiplier;
  final double procChance;
  final double fireRate;
  final int masteryReq;
  final String productCategory;
  final bool excludeFromCodex;
  final int slot;
  final double accuracy;
  final double omegaAttenuation;
  final int maxLevelCap;
  final String noise;
  final String trigger;
  final int magazineSize;
  final double reloadTime;
  final bool sentinel;
  final int multishot;
}
