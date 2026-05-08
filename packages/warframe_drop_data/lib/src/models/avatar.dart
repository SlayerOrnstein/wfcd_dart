import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/drop.dart';

part 'avatar.mapper.dart';

/// {@template enemy}
/// Represents an enemy and their drops
/// {@endtemplate}
@MappableClass()
class Avatar with AvatarMappable {
  /// {@macro enemy}
  Avatar({required this.id, required this.name, required this.chance, required this.items});

  /// Creates an [Avatar] from map
  static const fromMap = AvatarMapper.fromMap;

  /// Generated ID
  final String id;

  /// Enemy name
  final String name;

  /// Enemy's chances of droping an item
  final double chance;

  /// Possible items droped for this avatar drops
  final List<ItemDrop> items;
}
