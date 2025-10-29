import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/models/models.dart';
import 'package:warframe_drop_data/src/utils.dart';

/// Parse blueprint location by avatar
List<dynamic> parseBlueprintByAvatar(Element body) {
  final table = body.getElementsByTagName('#blueprintByAvatar').first;
  final tbody = table.children[0];

  final enemies = <Avatar>[];

  Avatar? enemy;
  for (final tr in tbody.children.where((tr) => tr.children.isNotEmpty)) {
    final element = tr.children[0];
    final text = element.text;

    if (element.localName == 'th' && tr.children.length == 2) {
      if (enemy != null) enemies.add(enemy);

      final chance = parseChance(tr.children[1].text);
      if (chance == null) throw Exception('Failed to parse ${tr.children[1].text}');

      enemy = Avatar(id: hash(text), name: text, chance: chance, drops: []);
    }

    if (element.localName == 'td' && element.className != 'blank-row') {
      final item = tr.children[1].text;
      final chance = parseChanceWithRarity(tr.children[2].text)!;

      enemy?.drops.add(
        ItemDrop(id: hash(item), item: item, rarity: chance.rarity, chance: chance.chance, status: chance.status),
      );
    }
  }

  if (enemy != null) enemies.add(enemy);
  return enemies;
}
