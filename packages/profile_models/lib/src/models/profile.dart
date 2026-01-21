import 'package:dart_mappable/dart_mappable.dart';
import 'package:profile_models/src/models/intrinsics.dart';
import 'package:profile_models/src/models/loadout.dart';
import 'package:profile_models/src/models/loadout_preset.dart';
import 'package:profile_models/src/utils/utils.dart';

part 'profile.mapper.dart';

@MappableRecord(caseStyle: CaseStyle.pascalCase)
typedef RawOperatorAlignment = ({num wisdom, num alignment});

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawProfile with RawProfileMappable {
  RawProfile({
    required this.accountId,
    required this.displayName,
    required this.platformNames,
    required this.playerLevel,
    required this.loadoutPreset,
    required this.loadoutInventory,
    required this.playerSkills,
    required this.guildId,
    required this.deathMarks,
    required this.harvestable,
    required this.deathSquadable,
    required this.created,
    required this.dailyAffiliation,
    required this.dailyAffiliationPvp,
    required this.dailyAffiliationLibrary,
    required this.dailyAffiliationCetus,
    required this.dailyAffiliationQuills,
    required this.dailyAffiliationSolaris,
    required this.dailyAffiliationVentKids,
    required this.dailyAffiliationVox,
    required this.dailyAffiliationEntrati,
    required this.dailyAffiliationNecraloid,
    required this.dailyAffiliationZariman,
    required this.dailyAffiliationKahl,
    required this.dailyAffiliationCavia,
    required this.dailyAffiliationHex,
    required this.dailyFocus,
    required this.unlockedOperator,
    required this.unlockedAlignment,
    required this.alignment,
  });

  static const fromJson = RawProfileMapper.fromJson;

  static const fromMap = RawProfileMapper.fromMap;

  final JsonObject accountId;
  final String displayName;
  final List<String> platformNames;
  final int playerLevel;

  @MappableField(key: 'LoadOutPreset')
  final RawLoadoutPreset loadoutPreset;

  @MappableField(key: 'LoadOutInventory')
  final RawLoadout loadoutInventory;

  final RawIntrinsics playerSkills;
  final JsonObject guildId;
  final List<String> deathMarks;
  final bool harvestable;
  final bool deathSquadable;
  final JsonObject created;
  final int dailyAffiliation;
  final int? dailyAffiliationPvp;
  final int? dailyAffiliationLibrary;
  final int? dailyAffiliationCetus;
  final int? dailyAffiliationQuills;
  final int? dailyAffiliationSolaris;
  final int? dailyAffiliationVentKids;
  final int? dailyAffiliationVox;
  final int? dailyAffiliationEntrati;
  final int? dailyAffiliationNecraloid;
  final int? dailyAffiliationZariman;
  final int? dailyAffiliationKahl;
  final int? dailyAffiliationCavia;
  final int? dailyAffiliationHex;
  final int dailyFocus;
  final bool unlockedOperator;
  final bool unlockedAlignment;
  final RawOperatorAlignment alignment;

  Profile toProfile() => Profile.fromRaw(this);
}

@MappableRecord()
typedef DailyStanding = ({
  int daily,
  int? conclave,
  int? simaris,
  int? ostron,
  int? quills,
  int? solaris,
  int? ventKids,
  int? voxSolaris,
  int? entrati,
  int? necraloid,
  int? holdfasts,
  int? kahl,
  int? cavia,
  int? hex,
});

@MappableRecord()
typedef OperatorAlignment = ({num wisdom, num alignment});

@MappableClass()
class Profile with ProfileMappable {
  Profile({
    required this.id,
    required this.username,
    required this.platformUsernames,
    required this.masteryRank,
    required this.preset,
    required this.loadout,
    required this.intrinsics,
    required this.isHarvestable,
    required this.isDeathSquadable,
    required this.createdOn,
    required this.dailyStanding,
    required this.dailyFocus,
    required this.alignment,
    this.unlockedOperator = false,
    this.unlockedAlignment = false,
  });

  factory Profile.fromRaw(RawProfile raw) {
    return Profile(
      id: parseId(raw.accountId),
      username: raw.displayName,
      platformUsernames: raw.platformNames,
      masteryRank: raw.playerLevel,
      preset: raw.loadoutPreset.toLoadoutPreset(),
      loadout: raw.loadoutInventory.toLoadout(),
      intrinsics: raw.playerSkills.toInstrinsics(),
      isHarvestable: raw.harvestable,
      isDeathSquadable: raw.deathSquadable,
      createdOn: parseDate(raw.created),
      dailyStanding: (
        daily: raw.dailyAffiliation,
        conclave: raw.dailyAffiliationPvp,
        simaris: raw.dailyAffiliationLibrary,
        ostron: raw.dailyAffiliationCetus,
        quills: raw.dailyAffiliationQuills,
        solaris: raw.dailyAffiliationSolaris,
        ventKids: raw.dailyAffiliationVentKids,
        voxSolaris: raw.dailyAffiliationEntrati,
        entrati: raw.dailyAffiliationEntrati,
        necraloid: raw.dailyAffiliationNecraloid,
        holdfasts: raw.dailyAffiliationZariman,
        kahl: raw.dailyAffiliationKahl,
        cavia: raw.dailyAffiliationCavia,
        hex: raw.dailyAffiliationHex,
      ),
      dailyFocus: raw.dailyFocus,
      alignment: (wisdom: raw.alignment.wisdom, alignment: raw.alignment.alignment),
    );
  }

  static const fromJson = ProfileMapper.fromJson;

  static const fromMap = ProfileMapper.fromMap;

  final String id;
  final String username;
  final List<String> platformUsernames;
  final int masteryRank;
  final LoadoutPreset? preset;
  final Loadout loadout;
  final Intrinsics intrinsics;
  final bool isHarvestable;
  final bool isDeathSquadable;
  final DateTime createdOn;
  final DailyStanding dailyStanding;
  final int dailyFocus;
  final bool unlockedOperator;
  final bool unlockedAlignment;
  final OperatorAlignment alignment;
}
