import 'package:dart_mappable/dart_mappable.dart';

part 'set_schema.mapper.dart';

@MappableClass()
class SetSchema with SetSchemaMappable {
  SetSchema({
    required this.uniqueName,
    required this.numUpgradesInSet,
    required this.stats,
  });

  factory SetSchema.fromJson(String json) => SetSchemaMapper.fromJson(json);

  factory SetSchema.fromMap(Map<String, dynamic> map) =>
      SetSchemaMapper.fromMap(map);

  final String uniqueName;
  final int numUpgradesInSet;
  final List<String> stats;
}
