import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/schema.dart';

part 'companion_schema.mapper.dart';

@MappableClass()
class CompanionSchema extends Schema with CompanionSchemaMappable {
  CompanionSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    required this.health,
    required this.sheild,
    required this.armor,
    required this.stamina,
    required this.power,
    required this.masterReq,
    super.parentName,
    super.productCategory,
  });

  factory CompanionSchema.fromJson(String json) => CompanionSchemaMapper.fromJson(json);

  factory CompanionSchema.fromMap(Map<String, dynamic> map) => CompanionSchemaMapper.fromMap(map);

  final int health;
  final int sheild;
  final int armor;
  final int stamina;
  final int power;
  final int masterReq;
}
