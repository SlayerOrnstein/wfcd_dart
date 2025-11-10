import 'package:dart_mappable/dart_mappable.dart';
import 'package:profile_models/src/models/loadout_item.dart';
import 'package:profile_models/src/utils/utils.dart';

part 'loadout.mapper.dart';

@MappableRecord(caseStyle: CaseStyle.pascalCase)
typedef RawXpItem = ({String itemType, @MappableField(key: 'XP') int xp});

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawLoadout with RawLoadoutMappable {
  RawLoadout({
    required this.skins,
    required this.suits,
    required this.pistols,
    required this.longGuns,
    required this.melee,
    required this.xpInfo,
  });

  final List<JsonObject>? skins;
  final List<RawLoadoutItem> suits;
  final List<RawLoadoutItem>? pistols;
  final List<RawLoadoutItem>? longGuns;
  final List<RawLoadoutItem>? melee;

  @MappableField(key: 'XPInfo')
  final List<RawXpItem> xpInfo;

  Loadout toLoadout() => Loadout.fromRaw(this);
}

@MappableRecord()
typedef XpItem = ({String uniqueName, int xp});

@MappableClass()
class Loadout with LoadoutMappable {
  Loadout({
    required this.warframe,
    required this.primary,
    required this.secondary,
    required this.melee,
    required this.xpInfo,
  });

  factory Loadout.fromRaw(RawLoadout raw) {
    return Loadout(
      warframe: raw.suits.first.toLoadoutItem(),
      primary: raw.longGuns?.first.toLoadoutItem(),
      secondary: raw.pistols?.first.toLoadoutItem(),
      melee: raw.melee?.first.toLoadoutItem(),
      xpInfo: raw.xpInfo.map<XpItem>((i) => (uniqueName: i.itemType, xp: i.xp)).toList(),
    );
  }

  final LoadoutItem warframe;
  final LoadoutItem? primary;
  final LoadoutItem? secondary;
  final LoadoutItem? melee;
  final List<XpItem> xpInfo;
}
