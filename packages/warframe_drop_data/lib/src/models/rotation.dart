import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/drop.dart';

part 'rotation.mapper.dart';

/// {@template rotations}
/// Represents an ABC rotation
/// {@endtemplate}
@MappableClass()
class Rotations<T extends ItemDrop> with RotationsMappable<T> {
  /// {@macro rotations}
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

  /// Add a reward in the given [Rotations]
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

  /// Get a rotation from string
  List<T> fetchRotation(String rotation) {
    return switch (rotation) {
      'A' => a,
      'B' => b,
      'C' => c,
      _ => throw Exception('Rotation $rotation is not valid.'),
    };
  }
}
