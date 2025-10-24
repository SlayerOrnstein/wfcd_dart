import 'package:dart_mappable/dart_mappable.dart';

part 'blueprint_part.mapper.dart';

/// {@template blueprint_part}
/// The blueprint/part
/// {@endtemplate}
@MappableClass()
class BlueprintPart with BlueprintPartMappable {
  /// {@macro blueprint_part}
  BlueprintPart({required this.id, required this.name, required this.enemies});

  /// MD5 generated ID
  final String id;

  /// Blueprint/Item name
  final String name;

  /// Enemies the blueprint/item drops from and drop chance
  final List<BlueprintSource> enemies;

  /// Short hand of [BlueprintLocation.enemies.add()]
  void addEnemy(BlueprintSource enemy) => enemies.add(enemy);
}

@MappableClass()
class BlueprintSource with BlueprintSourceMappable {
  BlueprintSource({
    required this.id,
    required this.name,
    required this.dropChance,
    required this.rarity,
    required this.chance,
  });

  /// MD5 generated ID
  final String id;

  /// Enemy name
  final String name;

  /// Blueprint/Item drop chance
  final double dropChance;

  /// Rarity
  final String? rarity;

  /// Chances that this enemy will drop the blueprint
  final double? chance;
}
