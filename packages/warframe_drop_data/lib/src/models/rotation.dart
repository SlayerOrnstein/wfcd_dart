import 'package:dart_mappable/dart_mappable.dart';

part 'rotation.mapper.dart';

@MappableClass()
class Rotations<T extends RotationReward> with RotationsMappable<T> {
  Rotations([List<T>? a, List<T>? b, List<T>? c]) : a = a ?? <T>[], b = b ?? <T>[], c = c ?? <T>[];

  /// Rotation A
  @MappableField(key: 'A')
  final List<T> a;

  /// Rotation B
  @MappableField(key: 'B')
  final List<T> b;

  /// Rotation C
  @MappableField(key: 'C')
  final List<T> c;

  /// Add a reward in the given [rotation]
  void addReward(String rotation, T reward) {
    switch (rotation) {
      case 'A':
        a.add(reward);
      case 'B':
        b.add(reward);
      case 'C':
        c.add(reward);
      default:
        throw Exception('Rotation $rotation is not valid.');
    }
  }
}

/// {@template rotation_reward}
/// Represents a [Rotations] reward
/// {@endtemplate}
@MappableClass(discriminatorKey: 'type')
abstract class RotationReward with RotationRewardMappable {
  /// {@macro rotation_reward}
  RotationReward({required this.id, required this.name, required this.rarity, required this.chance});

  /// Reward ID
  final String id;

  /// Reward name
  final String name;

  /// Rarity level
  final String? rarity;

  /// Drop chance
  final double? chance;
}
