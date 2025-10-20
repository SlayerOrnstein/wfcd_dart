import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/schema.dart';

part 'warframe_schema.mapper.dart';

@MappableClass()
class WarframeSchema extends Schema with WarframeSchemaMappable {
  WarframeSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    required super.parentName,
    required super.productCategory,
    required this.health,
    required this.shield,
    required this.armor,
    required this.stamina,
    required this.power,
    required this.masteryReq,
    required this.sprintSpeed,
    required this.passiveDescription,
    required this.exalted,
    required this.abilities,
  });

  factory WarframeSchema.fromJson(String json) => WarframeSchemaMapper.fromJson(json);

  factory WarframeSchema.fromMap(Map<String, dynamic> map) => WarframeSchemaMapper.fromMap(map);

  final int health;
  final int shield;
  final int armor;
  final int stamina;
  final int power;
  final int masteryReq;
  final double sprintSpeed;
  final String passiveDescription;
  final List<String> exalted;
  final List<AbilitySchema> abilities;
}

@MappableClass()
class AbilitySchema with AbilitySchemaMappable {
  AbilitySchema({
    required this.uniqueName,
    required this.name,
    required this.description,
  });

  @MappableField(key: 'abilityUniqueName')
  final String uniqueName;

  @MappableField(key: 'abilityName')
  final String name;

  final String description;
}
