import 'package:warframe_drop_data/src/models/models.dart';

extension RotationsExtensions<T extends ItemDrop> on Rotations<T> {
  /// Add a reward in the given [Rotations]
  void addReward(String rotation, T reward) {
    return switch (rotation.toUpperCase()) {
      'A' => a.add(reward),
      'B' => b.add(reward),
      'C' => c.add(reward),
      _ => throw Exception('Rotation $rotation is not valid.'),
    };
  }

  /// Get a rotation from string
  List<T> fetchRotation(String rotation) {
    return switch (rotation.toUpperCase()) {
      'A' => a,
      'B' => b,
      'C' => c,
      _ => throw Exception('Rotation $rotation is not valid.'),
    };
  }
}

/// Helper functions to use [Planet] and its list of nodes
extension PlanetExtension on Planet {
  /// Get an array of reward pools for a specfic node
  Iterable<RegionRewardPool> findRewardPools(String node) sync* {
    for (final n in nodes) {
      // use contain to also add any extra or cache reward pools for railjack nodes
      if (!n.name.contains(node)) continue;
      yield n;
    }
  }
}
