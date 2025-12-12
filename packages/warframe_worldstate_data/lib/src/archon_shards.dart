import 'package:warframe_worldstate_data/src/i18n/i18n.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

/// Extensions for [Map<String, ArchonShard>]
extension ArchonShardExtension on Map<String, ArchonShard> {
  /// Get in-game Archon Shard color
  String color(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
    return this[resource]?.name ?? resource;
  }

  /// Get the archon shard update string or a humna readable string of it
  String upgrade(String resource, String upgradeType, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
    return this[resource]?.upgrades[upgradeType] ?? normalizeResourceName(upgradeType);
  }
}
