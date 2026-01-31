import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

part 'archon_upgrade.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawArchonUpgrade with RawArchonUpgradeMappable {
  RawArchonUpgrade({required this.color, required this.upgradeType});

  static const fromMap = RawArchonUpgradeMapper.fromMap;

  final String color;
  final String upgradeType;

  ArchonUpgrade toArchonUpgrade([WorldstateDataLocale locale = .en]) => ArchonUpgrade.fromRaw(this, locale);
}

@MappableClass()
class ArchonUpgrade with ArchonUpgradeMappable {
  ArchonUpgrade({required this.color, required this.modifier});

  factory ArchonUpgrade.fromRaw(RawArchonUpgrade raw, [WorldstateDataLocale locale = .en]) {
    final shards = archonShards(locale);

    return ArchonUpgrade(
      color: shards.color(raw.color),
      modifier: shards.upgrade(raw.color, raw.upgradeType),
    );
  }

  final String color;
  final String modifier;
}
