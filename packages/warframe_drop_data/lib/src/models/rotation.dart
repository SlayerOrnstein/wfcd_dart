import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/src/models/drop.dart';

part 'rotation.mapper.dart';

/// {@template rotations}
/// Represents an ABC rotation
/// {@endtemplate}
@MappableClass()
class Rotations<T extends ItemDrop> with RotationsMappable<T> {
  /// {@macro rotations}
  Rotations({required this.a, required this.b, required this.c});

  /// Create an empty rotation
  factory Rotations.empty() => Rotations(a: [], b: [], c: []);

  /// Get [Rotations] from map
  static const fromMap = RotationsMapper.fromMap;

  /// Rotation A
  @MappableField(key: 'A')
  final List<T> a;

  /// Rotation B
  @MappableField(key: 'B')
  final List<T> b;

  /// Rotation C
  @MappableField(key: 'C')
  final List<T> c;
}
