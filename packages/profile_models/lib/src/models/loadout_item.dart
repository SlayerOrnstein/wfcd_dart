import 'package:dart_mappable/dart_mappable.dart';
import 'package:profile_models/src/models/archon_upgrade.dart';
import 'package:profile_models/src/models/color_map.dart';
import 'package:profile_models/src/models/item_config.dart';
import 'package:profile_models/src/models/polarity.dart';
import 'package:profile_models/src/utils/utils.dart';

part 'loadout_item.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawLoadoutItem with RawLoadoutItemMappable {
  RawLoadoutItem({
    required this.itemId,
    required this.itemType,
    required this.itemName,
    required this.configs,
    required this.upgradeType,
    required this.upgradeFingerprint,
    required this.features,
    required this.upgradeVer,
    required this.xp,
    required this.polarized,
    required this.polarity,
    required this.archonCrystalUpgrades,
    required this.focusLens,
    required this.custimizationSlotPurchases,
    required this.pricool,
    required this.sigcol,
    required this.ugly,
    required this.attcol,
    required this.syancol,
    required this.infestationDate,
  });

  final JsonObject itemId;
  final String itemType;
  final String? itemName;
  final List<RawItemConfig> configs;
  final String? upgradeType;
  final String? upgradeFingerprint;
  final int? features;
  final int upgradeVer;
  final int? xp;
  final int? polarized;
  final List<RawPolarity>? polarity;
  final List<dynamic>? archonCrystalUpgrades;
  final String? focusLens;
  final int? custimizationSlotPurchases;
  final RawColorMap? pricool;
  final RawColorMap? sigcol;
  final bool? ugly;
  final RawColorMap? attcol;
  final RawColorMap? syancol;
  final JsonObject? infestationDate;

  LoadoutItem toLoadoutItem() => LoadoutItem.fromRaw(this);
}

@MappableClass()
class LoadoutItem with LoadoutItemMappable {
  LoadoutItem({
    required this.id,
    required this.uniqueName,
    required this.name,
    required this.nemesis,
    required this.configs,
    required this.features,
    required this.xp,
    required this.polarized,
    required this.polarities,
    required this.archonUpgrades,
    required this.focusLens,
    required this.customizationSlotPurchases,
    required this.primaryColor,
    required this.sigilColor,
    required this.enablePrime,
    required this.attachmentsColor,
    required this.syandanaColor,
    required this.infestationDate,
  });

  factory LoadoutItem.fromRaw(RawLoadoutItem raw) {
    final names = raw.itemName?.split('|');

    raw.archonCrystalUpgrades?.removeWhere((c) => c is! Map);

    return LoadoutItem(
      id: parseId(raw.itemId),
      uniqueName: raw.itemType,
      name: names?.first ?? raw.itemType, // TODO(Orn): find a way to translate this with items
      nemesis: names?.length != 2 ? null : names!.last,
      configs: raw.configs.map(ItemConfig.fromRaw).toList(),
      features: raw.features,
      xp: raw.xp,
      polarized: raw.polarized,
      polarities: raw.polarity?.map((p) => p.toPolarity()).toList(),
      archonUpgrades: raw.archonCrystalUpgrades
          ?.map((c) => RawArchonUpgrade.fromMap(c as Map<String, dynamic>))
          .map((c) => c.toArchonUpgrade())
          .toList(),
      focusLens: raw.focusLens,
      customizationSlotPurchases: raw.custimizationSlotPurchases ?? 0,
      primaryColor: raw.pricool?.toColorMap(),
      sigilColor: raw.sigcol?.toColorMap(),
      enablePrime: raw.ugly ?? false,
      attachmentsColor: raw.attcol?.toColorMap(),
      syandanaColor: raw.syancol?.toColorMap(),
      infestationDate: raw.infestationDate != null ? parseDate(raw.infestationDate) : null,
    );
  }

  final String id;
  final String uniqueName;
  final String name;
  final String? nemesis;
  final List<ItemConfig> configs;
  final int? features;
  final int? xp;
  final int? polarized;
  final List<Polarity>? polarities;
  final List<ArchonUpgrade>? archonUpgrades;
  final String? focusLens;
  final int customizationSlotPurchases;
  final ColorMap? primaryColor;
  final ColorMap? sigilColor;
  final bool enablePrime;
  final ColorMap? attachmentsColor;
  final ColorMap? syandanaColor;
  final DateTime? infestationDate;
}
