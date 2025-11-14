import 'package:dart_mappable/dart_mappable.dart';

part 'drop.mapper.dart';

/// {@template enemy_drop}
/// Represents a drop
/// {@endtemplate}
@MappableClass()
class ItemDrop with ItemDropMappable {
  /// {@macro enemy_drop}
  const ItemDrop({required this.id, required this.item, required this.chance, required this.rarity, this.status});

  /// Generated ID
  final String id;

  /// Item being dropped
  final String item;

  /// Chance that this item could drop
  final double chance;

  /// Item drop rarity
  final String rarity;

  /// Denotes any status DE may have added to said item
  final String? status;
}
