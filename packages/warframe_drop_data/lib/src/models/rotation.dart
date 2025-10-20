import 'package:dart_mappable/dart_mappable.dart';

part 'rotation.mapper.dart';

@MappableClass()
class Rotations with RotationsMappable {
  Rotations({this.a = const [], this.b = const [], this.c = const []});

  /// Rotation A
  @MappableField(key: 'A')
  final List<RotationReward> a;

  /// Rotation B
  @MappableField(key: 'B')
  final List<RotationReward> b;

  /// Rotation C
  @MappableField(key: 'C')
  final List<RotationReward> c;

  /// Add a reward in the given [rotation]
  Rotations addReward(String rotation, RotationReward reward) {
    return switch (rotation) {
      'A' => copyWith(a: [...a, reward]),
      'B' => copyWith(b: [...b, reward]),
      'C' => copyWith(c: [...c, reward]),
      _ => throw Exception('Rotation $rotation is not valid.'),
    };
  }
}

@MappableClass()
class RotationReward with RotationRewardMappable {
  RotationReward({
    required this.id,
    required this.name,
    required this.rarity,
    required this.chance,
    required this.stage,
  });

  final String id;
  final String name;
  final String? rarity;
  final double? chance;
  final String? stage;
}
