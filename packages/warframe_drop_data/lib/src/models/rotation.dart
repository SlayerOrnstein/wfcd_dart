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
