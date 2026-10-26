import 'package:dart_mappable/dart_mappable.dart';

part 'drop_slim.mapper.dart';

/// {@template drop_slim}
/// Slimmed version of Drops
/// {@endtemplate}
@MappableClass()
class DropSlim with DropSlimMappable {
  /// {@macro drop_slim}
  DropSlim({required this.place, required this.item, required this.rarity, required this.chance});

  /// [DropSlim] from json string
  static const DropSlim Function(String json) fromJson = DropSlimMapper.fromJson;

  /// [DropSlim] from [Map]
  static const DropSlim Function(Map<String, dynamic> map) fromMap = DropSlimMapper.fromMap;

  /// Location items drops
  final String place;

  /// Item name
  final String item;

  /// Rarity of the drop
  final String rarity;

  /// Drop chance
  final num chance;
}
