enum ExportCategory {
  customs,
  drones,
  flavour,
  fusionBundles,
  gear,
  keys,
  recipes,
  regions,
  relicArcane,
  resources,
  sentinels,
  sortieRewards,
  upgrades,
  warframes,
  weapons,
  manifest;

  const ExportCategory();

  static ExportCategory fromExportString(String export) {
    final regex = RegExp(r'^Export|(_\w{2})?\.json.*$');

    return ExportCategory.values.firstWhere((e) {
      final category = export.replaceAll(regex, '');

      return category[0].toLowerCase() + category.substring(1) == e.name;
    });
  }
}
