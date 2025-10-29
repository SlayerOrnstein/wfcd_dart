import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/drop.dart';

part 'blueprint_part.mapper.dart';

/// {@template blueprint_part}
/// The blueprint/part
/// {@endtemplate}
@MappableClass()
class BlueprintPart with BlueprintPartMappable {
  /// {@macro blueprint_part}
  const BlueprintPart({required this.id, required this.name, required this.enemies});

  /// MD5 generated ID
  final String id;

  /// Blueprint/Item name
  final String name;

  /// Enemies the blueprint/item drops from and drop chance
  final List<ItemDrop> enemies;
}
