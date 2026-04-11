import 'package:dart_mappable/dart_mappable.dart';
import 'package:profile_models/src/models/color_map.dart';

part 'item_config.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawItemConfig with RawItemConfigMappable {
  RawItemConfig({
    required this.skins,
    required this.pvpUgrades,
    required this.pricol,
    required this.sigcol,
    required this.attcol,
    required this.syancol,
  });

  static const fromMap = RawItemConfigMapper.fromMap;

  final List<String>? skins;
  final List<String>? pvpUgrades;
  final RawColorMap? pricol;
  final RawColorMap? sigcol;
  final RawColorMap? attcol;
  final RawColorMap? syancol;

  ItemConfig toItemConfig() => ItemConfig.fromRaw(this);
}

@MappableClass()
class ItemConfig with ItemConfigMappable {
  ItemConfig({
    required this.skins,
    required this.conclaveUpgrades,
    required this.primaryColor,
    required this.sigilColor,
    required this.attachmentsColor,
    required this.syandanaColor,
  });

  factory ItemConfig.fromRaw(RawItemConfig raw) {
    return ItemConfig(
      skins: raw.skins ?? [],
      conclaveUpgrades: raw.pvpUgrades ?? [],
      primaryColor: raw.pricol?.toColorMap(),
      sigilColor: raw.sigcol?.toColorMap(),
      attachmentsColor: raw.attcol?.toColorMap(),
      syandanaColor: raw.syancol?.toColorMap(),
    );
  }

  final List<String> skins;
  final List<String>? conclaveUpgrades;
  final ColorMap? primaryColor;
  final ColorMap? sigilColor;
  final ColorMap? attachmentsColor;
  final ColorMap? syandanaColor;
}
