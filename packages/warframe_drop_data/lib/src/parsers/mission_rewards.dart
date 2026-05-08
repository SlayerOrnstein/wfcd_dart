import 'dart:developer' as developer;

import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/exceptions.dart';
import 'package:warframe_drop_data/src/utils.dart';
import 'package:warframe_drop_data/warframe_drop_data.dart';

ParsedLocation _updateLocation(ParsedLocation location, String Function(String old) update) {
  return (planet: location.planet, node: update(location.node), gameMode: location.gameMode, isEvent: location.isEvent);
}

/// Parses all mission rewards
List<Planet>? parseMissionRewards(Element body) {
  final table = body.getElementsByTagName('#missionRewards').first.nextElementSibling;
  final tbody = table?.children.first;
  if (tbody == null) throw ParsingException("missionRewards table is empty when it shouldn't be");

  final missionRewards = <String, Map<String, Region>>{};

  late ParsedLocation location;
  String? rotation;
  for (final tr in tbody.children.where((tr) => tr.children.isNotEmpty)) {
    final element = tr.children[0];
    final text = element.text;

    if (element.localName == 'th') {
      final tmp = parseLocation(text);

      if (tmp != null) {
        location = tmp;

        missionRewards.putIfAbsent(location.planet, () => <String, Region>{});

        final node = missionRewards[location.planet]?[location.node];
        if (node != null && location.gameMode == 'Hard') {
          location = _updateLocation(location, (old) => '$old (Hard)');
        }

        if (node != null && location.planet == 'Void') {
          location = _updateLocation(location, (old) => '$old (Extra)');
        }
      } else {
        final rot = parseRotation(text);
        if (rot != null) rotation = rot;
      }
    }

    if (element.localName == 'td' && element.className == 'blank-row') {
      rotation = null;
    }

    if (element.localName == 'td' && element.className != 'blank-row') {
      final chance = parseChanceWithRarity(tr.children.last.text);
      if (chance == null) developer.log(tr.children.map((i) => i.text).toString());

      final item = ItemDrop(id: hash(text), item: text, chance: chance?.chance ?? 0.0, rarity: chance?.rarity ?? '');

      if (rotation == null) {
        var node = location.node;
        if (missionRewards[location.planet]?[node] is! NodeNonEndless) {
          node += ' (override)';
        }

        missionRewards[location.planet]?.update(
          location.node,
          (region) {
            final reg = region as NodeNonEndless;
            if (reg.rewards.contains(item)) return reg;
            return reg..rewards.add(item);
          },
          ifAbsent: () => NodeNonEndless(
            name: location.node,
            gameMode: location.gameMode,
            isEvent: location.isEvent,
            rewards: [item],
          ),
        );
      } else {
        var node = location.node;
        if (missionRewards[location.planet]?[node] is! NodeEndless) {
          node += ' (override)';
        }

        missionRewards[location.planet]?.update(
          node,
          (region) {
            final reg = region as NodeEndless;
            if (reg.rewards.fetchRotation(rotation!).contains(item)) return reg;
            return reg..rewards.addReward(rotation, item);
          },
          ifAbsent: () => NodeEndless(
            name: location.node,
            gameMode: location.gameMode,
            isEvent: location.isEvent,
            rewards: Rotations(),
          )..rewards.addReward(rotation!, item),
        );
      }
    }
  }

  return missionRewards.entries
      .map((entry) => Planet(name: entry.key, nodes: entry.value.entries.map((e) => e.value).toList()))
      .toList();
}
