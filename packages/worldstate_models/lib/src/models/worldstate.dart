import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/models/models.dart';
import 'package:worldstate_models/src/supporting/config.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'worldstate.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawWorldstate with RawWorldstateMappable {
  RawWorldstate({
    required this.time,
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
    required this.endlessXpChoices,
    required this.seasonInfo,
    required this.knownCalendarSeasons,
    required this.conquests,
    required this.tmp,
  });

  static const fromJson = RawWorldstateMapper.fromJson;

  static const fromMap = RawWorldstateMapper.fromMap;

  final int time;
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
  final List<RawCircuitChoice> endlessXpChoices;
  final RawSeasonInfo seasonInfo;
  final List<RawCalendar> knownCalendarSeasons;
  final List<RawConquest> conquests;
  final String tmp;

  Future<Worldstate> toWorldstate(Config config) => Worldstate.fromRaw(this, config);
}

@MappableClass()
class Worldstate with WorldstateMappable {
  Worldstate({
    required this.timestamp,
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
  });

  static const fromJson = WorldstateMapper.fromJson;

  static const fromMap = WorldstateMapper.fromMap;

  static Future<Worldstate> fromRaw(RawWorldstate raw, Config config) async {
    final tmp = json.decode(raw.tmp) as Map<String, dynamic>;

    // Bounties all have the same 2 hour cycle so safe to just reuse one.
    final cetusBountyEnd = parseDate(raw.syndicateMissions.firstWhere((s) => s.tag == 'CetusSyndicate').expiry);
    raw.events.retainWhere((n) => n.messages.firstWhereOrNull((m) => m['LanguageCode'] == config.locale) != null);

    return Worldstate(
      timestamp: DateTime.fromMillisecondsSinceEpoch(raw.time * 1000, isUtc: true),
      news: await parseArray(raw.events, (event) => News.fromRaw(event, config.locale)),
      events: await parseArray(raw.goals, (goal) => WorldEvent.fromRaw(goal, config.locale)),
      alerts: await parseArray(raw.alerts, (alert) => Alert.fromRaw(alert, config.locale)),
      sortie: Sortie.fromRaw(raw.sorties.first, config.locale),
      archonHunt: Sortie.fromRaw(raw.liteSorties.first, config.locale),
      syndicateMissions: await parseArray(
        raw.syndicateMissions,
        (mission) async => SyndicateMission.fromRaw(mission, config),
      ),
      fissures: await parseArray([
        ...raw.activeMissions,
        ...raw.voidStorms,
      ], (f) => VoidFissure.fromRaw(f, config.locale)),
      globalUpgrades: await parseArray(raw.globalUpgrades, (upgrade) => GlobalUpgrade.fromRaw(upgrade, config.locale)),
      flashSales: await parseArray(raw.flashSales, (sale) => FlashSale.fromRaw(sale, config.locale)),
      inGameMarket: InGameMarket.fromRaw(raw.inGameMarket, config.locale),
      invasions: await parseArray(raw.invasions, (invasion) => Invasion.fromRaw(invasion, config.locale)),
      voidTraders: await parseArray(raw.voidTraders, (trader) => Trader.fromRaw(trader, config.locale)),
      vaultTrader: Trader.fromRaw(raw.primeVaultTraders.first, config.locale, character: 'Varzia'),
      dailyDeals: await parseArray(raw.dailyDeals, (deal) => DailyDeal.fromRaw(deal, config.locale)),
      constructionProgress: ConstructionProgress.fromRaw(raw.projectPct),
      duviriCycle: DuviriCycle.fromRaw(raw.endlessXpChoices),
      nightwave: Nightwave.fromRaw(raw.seasonInfo, config.locale),
      calendar: Calendar.fromRaw(raw.knownCalendarSeasons.first, config.locale),
      archimedeas: raw.conquests.map((c) => Archimedea.fromRaw(c, config.locale)).toList(),
      cetusCycle: CetusCycle.fromBountiesEndDate(cetusBountyEnd),
      vallisCycle: VallisCycle.init(),
      cambionCycle: CambionCycle.fromBountiesEndDate(cetusBountyEnd),
      zarimanCycle: ZarimanCycle.fromBountiesEndDate(cetusBountyEnd),
      sentientOutpost: SentientOutpost.fromSfn(tmp['sfn'] as int?),
      steelPath: SteelPath.init(),
    );
  }

  final DateTime timestamp;
  final List<News> news;
  final List<WorldEvent> events;
  final List<Alert> alerts;
  final Sortie sortie;
  final Sortie archonHunt;
  final List<SyndicateMission> syndicateMissions;
  final List<VoidFissure> fissures;
  final List<GlobalUpgrade> globalUpgrades;
  final List<FlashSale> flashSales;
  final InGameMarket inGameMarket;
  final List<Invasion> invasions;
  final List<Trader> voidTraders;
  final Trader vaultTrader;
  final List<DailyDeal> dailyDeals;
  final ConstructionProgress constructionProgress;
  final DuviriCycle duviriCycle;
  final Nightwave? nightwave;
  final Calendar calendar;
  final List<Archimedea> archimedeas;
  final CetusCycle cetusCycle;
  final VallisCycle vallisCycle;
  final CambionCycle cambionCycle;
  final ZarimanCycle zarimanCycle;
  final SentientOutpost sentientOutpost;
  final SteelPath steelPath;
}
