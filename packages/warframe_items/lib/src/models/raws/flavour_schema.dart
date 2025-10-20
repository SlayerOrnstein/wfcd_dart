import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/raws.dart';

part 'flavour_schema.mapper.dart';

@MappableClass()
class FlavourSchema extends Schema with FlavourSchemaMappable {
  FlavourSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    required this.hexColours,
  });

  factory FlavourSchema.fromJson(String json) => FlavourSchemaMapper.fromJson(json);

  factory FlavourSchema.fromMap(Map<String, dynamic> map) => FlavourSchemaMapper.fromMap(map);

  final List<HexColour> hexColours;
}

@MappableClass()
class HexColour with HexColourMappable {
  HexColour({required this.value});

  factory HexColour.fromJson(String json) => HexColourMapper.fromJson(json);

  factory HexColour.fromMap(Map<String, dynamic> map) => HexColourMapper.fromMap(map);

  final String value;
}
