import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/schema.dart';

part 'extractor_schema.mapper.dart';

@MappableClass()
class ExtractorSchema extends Schema with ExtractorSchemaMappable {
  ExtractorSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    required this.binCount,
    required this.binCapacity,
    required this.fillRate,
    required this.durability,
    required this.repairRate,
    required this.capacityMultiplier,
    required this.specialities,
    super.excludeFromCodex,
  });

  final int binCount;
  final int binCapacity;
  final int fillRate;
  final int durability;
  final int repairRate;
  final List<int> capacityMultiplier;
  final List<String> specialities;
}
