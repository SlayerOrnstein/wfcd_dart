import 'package:dart_mappable/dart_mappable.dart';

part 'blueprint_location.mapper.dart';

@MappableClass()
class BlueprintLocation with BlueprintLocationMappable {
  BlueprintLocation({required this.id, required this.name, required this.enemies});

  /// MD5 generated ID
  final String id;

  /// Blueprint/Item name
  final String name;

  /// Enemies the blueprint/item drops from and drop chance
  final List<BlueprintLocationEnemy> enemies;

  /// Short hand of [BlueprintLocation.enemies.add()]
  void addEnemy(BlueprintLocationEnemy enemy) => enemies.add(enemy);
}

@MappableClass()
class BlueprintLocationEnemy with BlueprintLocationEnemyMappable {
  BlueprintLocationEnemy({
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
