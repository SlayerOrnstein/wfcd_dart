import 'package:warframe_drop_data/src/models/models.dart';

extension RotationsExtensions<T extends ItemDrop> on Rotations<T> {
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
