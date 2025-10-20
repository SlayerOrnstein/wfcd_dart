import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/schema.dart';

part 'generic_schema.mapper.dart';

@MappableClass()
class GenericSchema extends Schema with GenericSchemaMappable {
  GenericSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    super.parentName,
  });

  factory GenericSchema.fromJson(String json) => GenericSchemaMapper.fromJson(json);

  factory GenericSchema.fromMap(Map<String, dynamic> map) => GenericSchemaMapper.fromMap(map);
}
