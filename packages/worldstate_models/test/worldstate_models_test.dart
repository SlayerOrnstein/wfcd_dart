// ignore_for_file: prefer_const_constructors
import 'dart:io';

import 'package:test/test.dart';
import 'package:worldstate_models/src/models/models.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';

import 'load_fixtures.dart';

void main() {
  final dir = Directory('./test/fixtures');
  final deps = Dependency([]);

  // Find all .json files in the fixtures directory
  final fixtureFiles = dir.listSync().where((file) => file.path.endsWith('.json')).toList();

  if (fixtureFiles.isEmpty) {
    // ignore: avoid_print not prod
    print('Warning: No .json fixtures found in ./test/fixtures. Skipping tests.');
    return;
  }

  for (final fixtureFile in fixtureFiles) {
    final fixtureName = fixtureFile.path.split(Platform.pathSeparator).last;

    // Load the fixture *once* per group
    final fixture = WorldstateFixture.load(path: fixtureFile.path);
    final shortSeed = fixture.worldSeed.substring(fixture.worldSeed.length - 10);

    group('WorldState Parser: $fixtureName (...$shortSeed)', () {
      test('Parses simple top-level properties', () {
        expect(fixture.worldSeed, isA<String>());
        expect(fixture.worldSeed, isNotEmpty);
        expect(fixture.version, isA<int>());
        expect(fixture.time, isA<int>());
        expect(fixture.buildLabel, isA<String>());
        expect(fixture.buildLabel, isNotEmpty);
        expect(fixture.mobileVersion, isA<String>());
        expect(fixture.mobileVersion, isNotEmpty);
        expect(fixture.primeTokenAvailability, isA<bool>());
        expect(fixture.tmp, isA<String>());
        expect(fixture.tmp, isNotEmpty);
        expect(fixture.projectPct, isA<List<double>>());
        expect(fixture.primeAccessAvailability, isA<Map<String, dynamic>>());
        expect(fixture.libraryInfo, isA<Map<String, dynamic>>());
        expect(fixture.forceLogoutVersion, isA<int>());
      });

      test('RawEvent -> News', () {
        final news = fixture.events.map((e) => RawEvent.fromMap(e).toNews());

        expect(news, isA<Iterable<News>>());
        if (news.isNotEmpty) {
          final first = news.first;
          expect(first.id, isA<String>());
          expect(first.id, isNotEmpty);
          expect(first.message, isA<String>());
          expect(first.message, isNotEmpty);
          expect(first.link, isA<String>());
          expect(first.date, isA<DateTime>());
          expect(first.isUpdate, isA<bool>());
          // Check the first event ID from the fixture
          expect(news.first.id, equals('62d31b87106360aa5703954d'));
        }
      });

      test('RawAlert -> Alert', () {
        final alerts = fixture.alerts.map((a) => RawAlert.fromMap(a).toAlert(deps));

        expect(alerts, isA<Iterable<Alert>>());
        if (alerts.isNotEmpty) {
          final first = alerts.first;
          expect(first.id, isA<String>());
          expect(first.expiry, isA<DateTime>());
          expect(first.mission, isA<Mission>());
          expect(first.mission.node, isA<String>());
          expect(first.mission.type, isA<String>());
          expect(first.mission.reward, isA<Reward>());
        }
      });

      test('RawGoal -> WorldEvent', () {
        final worldEvents = fixture.goals.map((g) => RawGoal.fromMap(g).toWorldEvent(deps));
        expect(worldEvents, isA<Iterable<WorldEvent>>());

        if (worldEvents.isNotEmpty) {
          final first = worldEvents.first;
          expect(first.id, isA<String>());
          expect(first.expiry, isA<DateTime>());
          expect(first.description, isA<String>());
          expect(first.node, isA<String>());
        }
      });

      test('RawSortie -> Sortie', () {
        final sortiesData = [...fixture.sorties, ...fixture.liteSorties];
        expect(sortiesData, isNotEmpty); // Both fixtures have sorties

        for (final raw in sortiesData) {
          final sortie = RawSortie.fromMap(raw).toSortie();

          expect(sortie, isA<Sortie>());
          expect(sortie.id, isA<String>());
          expect(sortie.expiry, isA<DateTime>());
          expect(sortie.boss, isA<String>());
          expect(sortie.faction, isA<String>());
          expect(sortie.missions, isA<List<Variant>>());
          expect(sortie.missions, isNotEmpty);
          expect(sortie.missions.length, 3);

          final mission = sortie.missions.first;
          expect(mission.node, isA<String>());
          expect(mission.type, isA<String>());

          // LiteSorties (Archon Hunts) don't have modifierType
          expect(mission.modifier, sortie.boss.contains('Archon') ? isNull : isA<Record>());
        }
      });

      test('RawSyndicate -> SyndicateMission', () async {
        final missions = fixture.syndicateMissions.map(
          (s) => RawSyndicate.fromMap(s).toSyndicate(Dependency([])),
        );

        expect(missions, isA<Iterable<SyndicateMission>>());

        if (missions.isNotEmpty) {
          final first = missions.first;
          expect(first.id, isA<String>());
          expect(first.name, isA<String>());
          expect(first.expiry, isA<DateTime>());
        }
      });

      test('RawActiveMissions -> VoidFissures', () {
        final raws = [...fixture.activeMissions, ...fixture.voidStorms];
        final fissures = raws.map((raw) => RawActiveMission.fromMap(raw).toVoidFissure(deps));

        expect(fissures.length, raws.length);
        expect(fissures, isA<Iterable<VoidFissure>>());

        if (fissures.isNotEmpty) {
          final first = fissures.first;
          expect(first.id, isA<String>());
          expect(first.node, isA<String>());
          expect(first.missionType, isA<String>());
          expect(first.key, isA<String>());
          expect(first.expiry, isA<DateTime>());
          expect(first.isStorm, isA<bool>());
        }
      });

      test(
        'RawGlobalUpgrade -> GlobalUpgrade',
        () {
          final upgradesData = fixture.globalUpgrades;
          final upgrades = upgradesData.map((u) => RawGlobalUpgrade.fromMap(u).toGlobalUpgrade());
          expect(upgrades, isA<Iterable<GlobalUpgrade>>());

          if (upgrades.isNotEmpty) {
            expect(upgrades.first.description, isA<String>());
            expect(upgrades.first.description, isNotEmpty);
            expect(upgrades.first.expiry, isA<DateTime>());
          }
        },
        skip: fixture.globalUpgrades.isEmpty ? 'No GlobalUpgrades in this fixture' : false,
      );

      test('RawInGameMarket -> InGameMarket', () {
        final market = RawInGameMarket.fromMap(fixture.inGameMarket).toInGameMarket(deps);
        expect(market, isA<InGameMarket>());
        expect(market.landingPage.categories, isA<List<Category>>());

        final popular = market.landingPage.categories.firstWhere((c) => c.category == 'Popular');
        expect(popular, isNotNull);
        expect(popular.items, isNotEmpty);
        expect(popular.items.first, isA<String>());
      });

      test('RawInvasion -> Invasion', () {
        final invasions = fixture.invasions.map((u) => RawInvasion.fromMap(u).toInvasion(deps));

        expect(invasions, isA<Iterable<Invasion>>());
        expect(invasions, isNotEmpty);

        final first = invasions.first;
        expect(first.id, isA<String>());
        expect(first.node, isA<String>());
        expect(first.attacker, isA<InvasionFaction>());
        expect(first.defender, isA<InvasionFaction>());
        expect(first.attacker.reward, isA<Reward>());
        expect(first.defender.reward, isA<Reward>());
        expect(first.isComplete, isA<bool>());
      });

      test('RawTrader (VoidTraders) -> Trader', () {
        final traders = fixture.voidTraders.map((r) => RawTrader.fromMap(r).toTrader(deps));
        expect(traders, isA<Iterable<Trader>>());
        expect(traders, isNotEmpty);

        final baro = traders.first;
        expect(baro.id, isA<String>());
        expect(baro.character, isA<String>());
        expect(baro.node, isA<String>());
        expect(baro.expiry, isA<DateTime>());
        expect(baro.evergreenItems, isEmpty);
      });

      test('RawTrader (PrimeVaultTraders) -> Trader', () {
        final traders = fixture.primeVaultTraders.map((r) => RawTrader.fromMap(r).toTrader(deps));
        expect(traders, isA<Iterable<Trader>>());
        expect(traders, isNotEmpty);

        for (final trader in traders) {
          expect(trader.id, isA<String>());
          expect(trader.node, isA<String>());
          expect(trader.expiry, isA<DateTime>());
          expect(trader.inventory, isA<List<TraderItem>>());
          expect(trader.inventory, isNotEmpty);
          expect(trader.evergreenItems, isA<List<TraderItem>>());
          expect(trader.evergreenItems, isNotEmpty);
        }
      });

      test('RawDailyDeal -> DailyDeal', () {
        final deals = fixture.dailyDeals.map((d) => RawDailyDeal.fromMap(d).toDeal(deps));

        expect(deals.length, fixture.dailyDeals.length);
        expect(deals, isA<Iterable<DailyDeal>>());
        expect(deals, isNotEmpty);

        final first = deals.first;
        expect(first.id, isA<String>());
        expect(first.item, isA<String>());
        expect(first.price, isA<int>());
        expect(first.salePrice, isA<int>());
        expect(first.total, isA<int>());
        expect(first.sold, isA<int>());
        expect(first.expiry, isA<DateTime>());
      });

      // test('RawPVPChallenge -> PVPChallenge', () {
      //   final challenges = fixture.pVPChallengeInstances.map((p) => RawPVPChallenge.fromMap(p).toPVPChallenge(deps));

      //   expect(challenges, isA<Iterable<PVPChallenge>>());
      //   if (challenges.isNotEmpty) {
      //     final first = challenges.first;
      //     expect(first.id, isA<String>());
      //     expect(first.challengeType, isA<String>());
      //     expect(first.endDate, isA<DateTime>());
      //     expect(first.category, isA<String>());
      //   }
      // });

      test('RawEndlessXpChoice -> CircuitChoices', () {
        final choices = fixture.endlessXpChoices.map((c) => RawCircuitChoice.fromMap(c).toCircuitChoice());

        expect(choices, isA<Iterable<CircuitChoice>>());
        if (choices.isNotEmpty) {
          final first = choices.first;
          expect(first.key, isA<String>());
          expect(first.choices, isA<List<String>>());
          expect(first.choices, isNotEmpty);
        }
      });

      // test('RawFeaturedGuild -> FeaturedGuild', () {
      //   final guilds = fixture.featuredGuilds.map((g) => RawFeaturedGuild.fromMap(g).toFeaturedGuild(deps));

      //   expect(guilds, isA<Iterable<FeaturedGuild>>());
      //   expect(guilds, isNotEmpty);

      //   final first = guilds.first;
      //   expect(first.id, isA<String>());
      //   expect(first.name, isA<String>());
      //   expect(first.tier, isA<int>());
      // });

      test('RawSeasonInfo -> Nightwave', () {
        final seasonData = fixture.seasonInfo!; // If the test is running then it exist
        final info = RawSeasonInfo.fromMap(seasonData).toNightwave(deps);

        expect(info, isA<Nightwave>());
        expect(info.season, isA<int>());
        expect(info.expiry, isA<DateTime>());
        expect(info.challenges, isA<List<NightwaveChallenge>>());
        expect(info.challenges, isNotEmpty);

        final challenge = info.challenges.first;
        expect(challenge.id, isA<String>());
        expect(challenge.expiry, isA<DateTime>());
        expect(challenge.isDaily, isA<bool>());
      }, skip: fixture.seasonInfo == null ? 'No SeasonInfo in this fixture' : false);

      test('RawKnownCalendarSeason -> Calendar', () {
        final calendars = fixture.knownCalendarSeasons.map(
          (s) => RawCalendar.fromMap(s).toCalender(deps),
        );

        expect(calendars, isA<Iterable<Calendar>>());
        expect(calendars, isNotEmpty);

        final first = calendars.first;
        expect(first.expiry, isA<DateTime>());
        expect(first.season, isA<String>());
        expect(first.days, isA<List<CalendarDay>>());
        expect(first.days, isNotEmpty);

        final event = first.days.first;
        expect(event.day, isA<DateTime>());
        expect(event.events, isA<List<CalendarDayEvent>>());
      });

      // This key is NOT in the helper, so we access it manually
      test('RawConquest -> Conquest', () {
        final conquests = fixture.conquests
            .cast<Map<String, dynamic>>()
            .map((c) => RawConquest.fromMap(c).toArchimedea(deps))
            .toList();

        expect(conquests, isA<List<Archimedea>>());

        if (conquests.isNotEmpty) {
          final first = conquests.first;
          expect(first, isA<Archimedea>());
          expect(first.type, isA<String>());
          expect(first.expiry, isA<DateTime>());
          expect(first.missions, isA<List<ArchimedeaMission>>());
          expect(first.missions, isNotEmpty);
        }
      }, skip: !fixture.data.containsKey('Conquests') ? 'No Conquests in this fixture' : false);
    });
  }
}
