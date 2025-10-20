import 'package:dart_mappable/dart_mappable.dart';

part 'node_schema.mapper.dart';

@MappableClass()
class NodeSchema with NodeSchemaMappable {
  NodeSchema({required this.uniqueName, required this.name});

  factory NodeSchema.fromJson(String json) => NodeSchemaMapper.fromJson(json);

  factory NodeSchema.fromMap(Map<String, dynamic> map) => NodeSchemaMapper.fromMap(map);

  final String uniqueName;
  final String name;
}
