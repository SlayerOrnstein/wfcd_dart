import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:worldstate_models/src/models/models.dart';
import 'package:worldstate_models/src/utils/types.dart';

void main() {
  final dir = Directory('./test/fixtures');

  for (final fixture in dir.listSync()) {
    final file = File(fixture.path).readAsStringSync();
    final worldstate = json.decode(file) as JsonObject;
    final seed = worldstate['WorldSeed'] as String;

    group('WorldSeed ${seed.substring(seed.length - 10)}', () {
      test('RawEvent -> News', () {
        final events = List<JsonObject>.from(worldstate['Events'] as List<dynamic>);
        final news = events.map((e) => RawEvent.fromMap(e).toNews());

        expect(news, isA<Iterable<News>>());
        expect(news.first.id, equals('62d31b87106360aa5703954d'));
      });

      test('RawGoal -> WorldEvent', () {
        final goals = List<JsonObject>.from(worldstate['Goals'] as List<dynamic>);

        expect(goals.map((g) => RawGoal.fromMap(g).toWorldEvent()), isA<Iterable<WorldEvent>>());
      });

      test('RawSortie -> Sortie', () {
        final sorties = List<JsonObject>.from([
          ...worldstate['Sorties'] as List<dynamic>,
          ...worldstate['LiteSorties'] as List<dynamic>,
        ]);

        for (final raw in sorties) {
          final sortie = RawSortie.fromMap(raw).toSortie();

          expect(sortie, isA<Sortie>());
          expect(sortie.missions, isNotEmpty);
        }
      });

      test('RawSyndicate -> SyndicateMission', () async {
        final syndicateMissions = List<JsonObject>.from(worldstate['SyndicateMissions'] as List<dynamic>);
        final missions = await Future.wait(syndicateMissions.map((s) => RawSyndicate.fromMap(s).toSyndicate()));

        expect(missions.toList(), isA<List<SyndicateMission>>());
      });

      test('ActiveMission & VoidStorm -> VoidFissure', () {
        final raws = List<JsonObject>.from([
          ...worldstate['ActiveMissions'] as List<dynamic>,
          ...worldstate['VoidStorms'] as List<dynamic>,
        ]);

        final fissures = raws.map((raw) => RawActiveMission.fromMap(raw).toVoidFissure());

        expect(fissures.length, raws.length);
      });

      test('RawGlobalUpgrade -> GlobalUpgrade', () {
        final upgrades = List<JsonObject>.from(
          worldstate['GlobalUpgrades'] as List<dynamic>,
        ).map((u) => RawGlobalUpgrade.fromMap(u).toGlobalUpgrade());

        expect(upgrades.first.description, equals('Mission Kill XP is multiplied by 2x'));
      }, skip: (worldstate['GlobalUpgrades'] as List<dynamic>).isEmpty);

      test('RawInGameMarket -> InGameMarket', () {
        final raw = worldstate['InGameMarket'] as Map<String, dynamic>;
        expect(RawInGameMarket.fromMap(raw).toInGameMarket(), isA<InGameMarket>());
      });

      test('RawInvasion -> Invasion', () {
        final invasions = List<JsonObject>.from(
          worldstate['Invasions'] as List<dynamic>,
        ).map((u) => RawInvasion.fromMap(u).toInvasion());

        expect(invasions, isA<Iterable<Invasion>>());
      });

      test('RawTrader -> List<Trader>', () {
        final raws = List<JsonObject>.from(worldstate['VoidTraders'] as List<dynamic>);
        expect(raws.map((r) => RawTrader.fromMap(r).toTrader()), isA<List<Trader>>());
      });

      test('RawTrader -> Trader', () {
        final raws = List<JsonObject>.from(worldstate['PrimeVaultTraders'] as List<dynamic>);
        final traders = raws.map((r) => RawTrader.fromMap(r).toTrader());

        for (final trader in traders) {
          expect(trader.evergreenItems!.isNotEmpty, isTrue);
        }
      });

      test('RawDailyDeal -> DailyDeal', () {
        final raws = List<JsonObject>.from(worldstate['DailyDeals'] as List<dynamic>);
        final deals = raws.map((d) => RawDailyDeal.fromMap(d).toDeal());

        expect(deals.length, raws.length);
      });
    });
  }
}
