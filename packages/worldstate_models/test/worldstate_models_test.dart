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
      test('News -> can be instantiated', () {
        final events = List<JsonObject>.from(worldstate['Events'] as List<dynamic>);
        final news = events.map((e) => RawEvent.fromMap(e).toNews());

        expect(news, isA<Iterable<News>>());
        expect(news.first.id, equals('62d31b87106360aa5703954d'));
      });

      test('WorldEvent -> can be instantiated', () {
        final goals = List<JsonObject>.from(worldstate['Goals'] as List<dynamic>);

        expect(goals.map((g) => RawGoal.fromMap(g).toWorldEvent()), isA<Iterable<WorldEvent>>());
      });

      test('Sortie -> can be instantiated', () {
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

      test('Syndicates -> can be instantiated', () {
        final syndicateMissions = List<JsonObject>.from(worldstate['SyndicateMissions'] as List<dynamic>);

        expect(syndicateMissions.map((s) => RawSyndicate.fromMap(s).toSyndicate()), isA<Iterable<SyndicateMission>>());
      });

      test('VoidFissure -> can be instantiated', () {
        final fissures = List<JsonObject>.from([
          ...worldstate['ActiveMissions'] as List<dynamic>,
          ...worldstate['VoidStorms'] as List<dynamic>,
        ]);

        for (final fissure in fissures) {
          expect(RawActiveMission.fromMap(fissure).toVoidFissure(), isA<VoidFissure>());
        }
      });

      test('GlobalUpgrade -> can be instantiated', () {
        final upgrades = List<JsonObject>.from(
          worldstate['GlobalUpgrades'] as List<dynamic>,
        ).map((u) => RawGlobalUpgrade.fromMap(u).toGlobalUpgrade());

        expect(upgrades.first.description, equals('Mission Kill XP is multiplied by 2x'));
      }, skip: (worldstate['GlobalUpgrades'] as List<dynamic>).isEmpty);

      test('Invasion -> can be instantiated', () {
        final invasions = List<JsonObject>.from(
          worldstate['Invasions'] as List<dynamic>,
        ).map((u) => RawInvasion.fromMap(u).toInvasion());

        expect(invasions, isA<Iterable<Invasion>>());
      });
    });
  }
}
