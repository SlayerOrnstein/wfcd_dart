import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/exceptions.dart';
import 'package:warframe_drop_data/src/models/models.dart';
import 'package:warframe_drop_data/src/utils.dart';

List<Avatar> parseEnemyModTables(Element element) {
  final table = element.getElementsByTagName('#modByAvatar').first.nextElementSibling;
  final tBody = table?.children.first;
  if (tBody == null) throw ParsingException('Failed to extract #modByAvatar table');

  final enemies = <Avatar>{};
  Avatar? enemy;
  for (final tr in tBody.children.where((tr) => tr.children.isNotEmpty)) {
    final elem = tr.children.first;
    final text = elem.text;

    if (elem.localName == 'th' && tr.children.length == 2) {
      if (enemy != null && !enemies.contains(enemy)) enemies.add(enemy);

      final modDropChanceText = tr.children[1].text.split(':').last.trim().replaceAll('%', '');
      final modDropChance = double.parse(modDropChanceText);
      enemy = Avatar(id: hash(text), name: text, chance: modDropChance, items: []);
    }

    if (elem.localName == 'td' && elem.className != 'blank-row') {
      final name = tr.children[1].text;
      final chance = parseChanceWithRarity(tr.children[2].text);

      if (chance != null) {
        enemy?.items.add(ItemDrop(id: hash(name), item: name, chance: chance.chance, rarity: chance.rarity));
      }
    }
  }

  if (enemy != null && !enemies.contains(enemy)) enemies.add(enemy);
  return enemies.toList();
}
