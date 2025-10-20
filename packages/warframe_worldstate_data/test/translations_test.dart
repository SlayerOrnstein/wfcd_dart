import 'package:test/test.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

void main() {
  group('Archon Shards', () {
    // Currently there are 6 base shards x2 if you include Tauforged
    test('archonShards() => not empty', () => expect(archonShards().length, greaterThanOrEqualTo(12)));

    test('archonShards().color(string) => matching in-game string', () {
      final shard = archonShards().color('ACC_ORANGE');
      expect(shard, 'Topaz');
    });

    test('archonShards().upgrade(string)', () {
      final shard = archonShards().upgrade(
        'ACC_ORANGE',
        '/Lotus/Upgrades/Invigorations/ArchonCrystalUpgrades/ArchonCrystalUpgradeWarframeHPBoostFromImpact',
      );

      expect(shard, 'Gain 2 Health per enemy killed with Blast Damage. Max 450 Health.');
    });
  });

  group('Conclave', () {
    test('conclave() => get data', () => expect(conclave(), isA<ConclaveData>()));

    test('conclave().getModeString(string) => get matching mode', () {
      expect(conclave().getModeString('PVPMODE_TEAMDEATHMATCH'), 'Team Annihilation');
    });

    test('conclave().getCategoryString(string) => get matching category', () {
      expect(conclave().getCategoryString('PVPChallengeTypeCategory_WEEKLY_ROOT'), 'Weekly Category');
    });

    test('conclave().getChallenge(string) => get matching challenge', () {
      expect(conclave().getChallenge('PVPTimedChallengeKillsPrimaryHARD'), (
        title: 'Focused Primary Target',
        description: 'Kill 3 enemies with your Primary Weapon in a match',
        standing: 3000,
      ));
    });

    test('conclave().getAffector(string) => get matching affect', () {
      expect(conclave().getAffector('PVPTimedAffectorSuperMeleeDamage'), (
        title: 'Extra Melee Damage',
        description: 'Extra Melee Damage - Melee Damage is increased',
      ));
    });
  });

  group('FocusSchools', () {
    test('FocusSchools.translateFocus(string) => get focus school name', () {
      expect(FocusSchools.translateFocus('Focus/Tactic'), 'Naramon');
    });

    test('FocusSchools.translateFocus(string) => return key when no match is found', () {
      expect(FocusSchools.translateFocus('Not/Found'), 'Not/Found');
    });
  });

  group('Languages', () {
    test('lanugages() => map of language data', () => expect(languages(), isA<Map<String, LanguageString>>()));

    test('languages().value(string) => get matching value for resource path', () {
      expect(
        languages().fetchValue('/Lotus/Types/Challenges/Calendar1999/CalendarDestroyPropsMedium'),
        'Starve the beast',
      );
    });

    test('languages().value(string) => return a human readable string when not found', () {
      expect(
        languages().fetchValue('/Lotus/Types/Calendar1999/CalendarDestroyPropsMedium'),
        'Calendar Destroy Props Medium',
      );
    });

    test('languages().description(string) => get matching description for resource path', () {
      expect(
        languages().fetchDescription('/Lotus/Types/Challenges/Calendar1999/CalendarDestroyPropsMedium'),
        'Destroy 150 Containers',
      );
    });

    test('languages().description(string) => return a human readable string when not found', () {
      expect(
        languages().fetchDescription('/Lotus/Types/Calendar1999/CalendarDestroyPropsMedium'),
        '[PH] Calendar Destroy Props Medium Desc',
      );
    });
  });

  group('Polarities', () {
    test('Polarities.translatePolarity(string) => get focus school name', () {
      expect(Polarities.translatePolarity('AP_TACTIC'), 'Naramon');
    });

    test('Polarities.translatePolarity(string) => return key when no match is found', () {
      expect(Polarities.translatePolarity('NOT_FOUND'), 'NOT_FOUND');
    });
  });

  group('SolNodes', () {
    test('solNodes() => get all nodes', () => expect(solNodes(), isA<Map<String, Node>>()));

    test('solNode().getNode(string) => returns the matching node', () {
      expect(solNodes().fetchNode('SolNode405'), (name: 'Ani (Void)', enemy: 'Orokin', type: 'Survival'));
    });

    test('solNode().getNode(string) => returns the provided string', () {
      expect(solNodes().fetchNode('SolNode000'), (name: 'SolNode000', enemy: null, type: null));
    });
  });

  group('Factions', () {
    test('factions() => get all factions', () {
      expect(factions(), isA<Map<String, String>>());
      expect(factions(), isNotEmpty);
    });

    test('faction(string) => get the matching faction', () => expect(faction('FC_CORPUS'), 'Corpus'));

    test('faction(string) => normalize string when no match is found', () {
      expect(faction('FC_NOTFOUND'), 'Notfound');
    });
  });

  group('Fissures', () {
    test('fissures() => get all fissure tiers', () {
      expect(fissures(), isA<Map<String, FissureModifier>>());
      expect(fissures(), isNotEmpty);
    });

    test('fissure(string) => get the matching tier', () => expect(fissure('VoidT3'), (name: 'Neo', tier: 3)));

    test('fissure(string) => normalize string when no match is found', () {
      expect(fissure('VoidT7'), (name: 'VoidT7', tier: 7));
    });
  });

  group('Mission Types', () {
    test('missionTypes() => get all mission types', () {
      expect(missionTypes(), isA<Map<String, String>>());
      expect(missionTypes(), isNotEmpty);
    });

    test('missionType(string) => get the matching tier', () => expect(missionType('MT_SURVIVAL'), 'Survival'));

    test('missionType(string) => normalize string when no match is found', () {
      expect(missionType('MT_NOT_FOUND'), 'Not Found');
    });
  });

  group('Sortie', () {
    test(
      'sortieFaction(string) => get sortie boss and faction',
      () => expect(sortieFaction('SORTIE_BOSS_VOR'), (boss: 'Captain Vor', faction: 'Grineer')),
    );

    test(
      'sortieModifier(string) => get modifier type and description',
      () => expect(sortieModifier('SORTIE_MODIFIER_HAZARD_RADIATION'), (
        type: 'Environmental Hazard: Radiation Pockets',
        description: 'Any damage received will impart radiation effects, and so will green clouds around the tileset.',
      )),
    );
  });

  test('steelPath() => get steel path item data', () {
    expect(steelPath().rotation, isNotEmpty);
    expect(steelPath().evergreen, isNotEmpty);
  });

  // I want to test this anyways
  // ignore: deprecated_member_use_from_same_package
  test('translateSeason(string) => normalize calendar season', () => expect(translateSeason('CST_WINTER'), 'Winter'));

  test('syndicate(string) => get the matching syndicate', () => expect(syndicate('VentKidsSyndicate'), 'Vent Kids'));

  test('synthTargets() => get all synthesis target', () => expect(synthTargets(), isA<List<SynthTarget>>()));
}
