import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/models/models.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'worldstate.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawWorldstate with RawWorldstateMappable {
  RawWorldstate({
    required this.time,
    required this.buildLabel,
    required this.events,
    required this.goals,
    required this.alerts,
    required this.sorties,
    required this.liteSorties,
    required this.syndicateMissions,
    required this.activeMissions,
    required this.globalUpgrades,
    required this.flashSales,
    required this.inGameMarket,
    required this.invasions,
    required this.voidTraders,
    required this.primeVaultTraders,
    required this.dailyDeals,
    required this.voidStorms,
    required this.projectPct,
    required this.endlessXpSchedule,
    required this.seasonInfo,
    required this.knownCalendarSeasons,
    required this.conquests,
    required this.tmp,
    required this.weeklyVaultBonusRewards,
  });

  static const fromJson = RawWorldstateMapper.fromJson;

  static const fromMap = RawWorldstateMapper.fromMap;

  final int time;
  final String buildLabel;
  final List<RawEvent> events;
  final List<RawGoal> goals;
  final List<RawAlert> alerts;
  final List<RawSortie> sorties;
  final List<RawSortie> liteSorties;
  final List<RawSyndicate> syndicateMissions;
  final List<RawActiveMission> activeMissions;
  final List<RawGlobalUpgrade> globalUpgrades;
  final List<RawFlashSale> flashSales;
  final RawInGameMarket inGameMarket;
  final List<RawInvasion> invasions;
  final List<RawTrader> voidTraders;
  final List<RawTrader> primeVaultTraders;
  final List<RawDailyDeal> dailyDeals;
  final List<RawActiveMission> voidStorms;
  final List<num> projectPct;
  final List<RawChoiceObject> endlessXpSchedule;
  final RawSeasonInfo? seasonInfo;
  final List<RawCalendar> knownCalendarSeasons;
  final List<RawConquest> conquests;
  final String tmp;
  final List<WeeklyVaultBonusRewards> weeklyVaultBonusRewards;

  Worldstate toWorldstate(Dependency deps) => Worldstate.fromRaw(this, deps);
}

@MappableClass()
class Worldstate with WorldstateMappable {
  Worldstate({
    required this.timestamp,
    required this.buildLabel,
    required this.news,
    required this.events,
    required this.alerts,
    required this.sortie,
    required this.archonHunt,
    required this.syndicateMissions,
    required this.fissures,
    required this.globalUpgrades,
    required this.flashSales,
    required this.inGameMarket,
    required this.invasions,
    required this.voidTraders,
    required this.vaultTrader,
    required this.dailyDeals,
    required this.constructionProgress,
    required this.duviriCycle,
    required this.nightwave,
    required this.calendar,
    required this.archimedeas,
    required this.cetusCycle,
    required this.vallisCycle,
    required this.cambionCycle,
    required this.zarimanCycle,
    required this.sentientOutpost,
    required this.steelPath,
    required this.clanInitiative,
  });

  ///
  factory Worldstate.fromJson(String json) => WorldstateMapper.fromJson(json);

  ///
  factory Worldstate.fromMap(Map<String, dynamic> map) => WorldstateMapper.fromMap(map);

  ///
  factory Worldstate.fromRaw(RawWorldstate raw, Dependency deps) {
    final tmp = json.decode(raw.tmp) as Map<String, dynamic>;

    // Bounties all have the same 2 hour cycle so safe to just reuse one.
    final cetusBountyEnd = parseDate(raw.syndicateMissions.firstWhere((s) => s.tag == 'CetusSyndicate').expiry);
    final news = raw.events
        .where((n) => n.messages.firstWhereOrNull((m) => m['LanguageCode'] == deps.locale.name) != null)
        .toList();

    return Worldstate(
      timestamp: DateTime.fromMillisecondsSinceEpoch(raw.time * 1000, isUtc: true),
      buildLabel: raw.buildLabel,
      news: parseArray(news, (event) => News.fromRaw(event, deps.locale)),
      events: parseArray(raw.goals, (goal) => WorldEvent.fromRaw(goal, deps)),
      alerts: parseArray(raw.alerts, (alert) => Alert.fromRaw(alert, deps)),
      sortie: Sortie.fromRaw(raw.sorties.first, deps.locale),
      archonHunt: Sortie.fromRaw(raw.liteSorties.first, deps.locale),
      syndicateMissions: parseArray(raw.syndicateMissions, (mission) => SyndicateMission.fromRaw(mission, deps)),
      fissures: parseArray([...raw.activeMissions, ...raw.voidStorms], (f) => VoidFissure.fromRaw(f, deps)),
      globalUpgrades: parseArray(raw.globalUpgrades, (upgrade) => GlobalUpgrade.fromRaw(upgrade, deps.locale)),
      flashSales: parseArray(raw.flashSales, (sale) => FlashSale.fromRaw(sale, deps)),
      inGameMarket: InGameMarket.fromRaw(raw.inGameMarket, deps),
      invasions: parseArray(raw.invasions, (invasion) => Invasion.fromRaw(invasion, deps)),
      voidTraders: parseArray(raw.voidTraders, (trader) => Trader.fromRaw(trader, deps)),
      vaultTrader: Trader.fromRaw(raw.primeVaultTraders.first, deps, character: 'Varzia'),
      dailyDeals: parseArray(raw.dailyDeals, (deal) => DailyDeal.fromRaw(deal, deps)),
      constructionProgress: ConstructionProgress.fromRaw(raw.projectPct),
      duviriCycle: DuviriCycle.fromRaw(raw.endlessXpSchedule[0]),
      nightwave: raw.seasonInfo != null ? Nightwave.fromRaw(raw.seasonInfo!, deps) : null,
      calendar: Calendar.fromRaw(raw.knownCalendarSeasons.first, deps),
      archimedeas: raw.conquests.map((c) => Archimedea.fromRaw(c, deps)).toList(),
      cetusCycle: CetusCycle.fromBountiesEndDate(cetusBountyEnd),
      vallisCycle: VallisCycle.init(),
      cambionCycle: CambionCycle.fromBountiesEndDate(cetusBountyEnd),
      zarimanCycle: ZarimanCycle.fromBountiesEndDate(cetusBountyEnd),
      sentientOutpost: SentientOutpost.fromSfn(tmp['sfn'] as int?),
      steelPath: SteelPath.init(),
      clanInitiative: parseArray(raw.weeklyVaultBonusRewards, (week) => ClanInitiative.fromRaw(week, deps)).first,
    );
  }

  ///  Timestamp for this generated state
  final DateTime timestamp;

  /// Build label for the currently released game version
  final String buildLabel;

  /// Warframe news
  final List<News> news;

  /// Current on going events
  final List<WorldEvent> events;

  /// Currently on going alerts
  final List<Alert> alerts;

  /// Current sortie
  final Sortie sortie;

  /// Current archon hunt
  final Sortie archonHunt;

  /// Current syndicate bounties/nodes
  final List<SyndicateMission> syndicateMissions;

  /// Current on going fissures
  final List<VoidFissure> fissures;

  /// Current on going 2x weekend
  final List<GlobalUpgrade> globalUpgrades;

  /// Current on going sales
  final List<FlashSale> flashSales;

  /// Current special?
  final InGameMarket inGameMarket;

  /// Current on going invasions
  final List<Invasion> invasions;

  /// Baro trader instances
  final List<Trader> voidTraders;

  /// THe main Baro instances that appears on weekends
  final Trader vaultTrader;

  /// Darvo's daily deals
  final List<DailyDeal> dailyDeals;

  /// Invasion construction progress
  final ConstructionProgress constructionProgress;

  /// Current state and choices for duviri
  final DuviriCycle duviriCycle;

  /// Current Nightwave challenges
  final Nightwave? nightwave;

  /// The current weeks calendar events and rewards
  final Calendar calendar;

  /// Current running Archimedeas
  final List<Archimedea> archimedeas;

  /// Current Cetus state
  final CetusCycle cetusCycle;

  /// Current Orb Vallis state
  final VallisCycle vallisCycle;

  /// Current Cambion Drift state
  final CambionCycle cambionCycle;

  /// Current Zariman state
  final ZarimanCycle zarimanCycle;

  /// Current location of the sentient outpost
  final SentientOutpost sentientOutpost;

  /// Current Steel path rotation and duration
  final SteelPath steelPath;

  /// Personal rewards and bonus region for clan initiative
  final ClanInitiative clanInitiative;
}
