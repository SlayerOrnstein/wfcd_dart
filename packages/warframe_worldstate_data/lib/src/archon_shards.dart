import 'package:warframe_worldstate_data/src/tools.dart';

/// Represents an ArchonShard
typedef ArchonShard = ({String name, Map<String, String> upgrades});

/// Get all Archon Shard strings
Map<String, ArchonShard> archonShards([String locale = 'en']) =>
    i18n(locale).archonShards.shards.map((s, a) => MapEntry(s, (name: a.value, upgrades: a.upgradeTypes)));

/// Extensions for [Map<String, ArchonShard>]
extension ArchonShardExtension on Map<String, ArchonShard> {
  /// Get in-game Archon Shard color
  String color(String resource, [String locale = 'en']) {
    return this[resource]?.name ?? resource;
  }

  /// Get the archon shard update string or a humna readable string of it
  String upgrade(String resource, String upgradeType, [String locale = 'en']) {
    return this[resource]?.upgrades[upgradeType] ?? normalizeResourceName(upgradeType);
  }
}
