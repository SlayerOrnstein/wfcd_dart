import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/models/models.dart';
import 'package:warframe_drop_data/src/utils.dart';

/// Parses out blueprint/parts by drop
List<BlueprintPart> parseBlueprintLocations(Element body) {
  final table = body.getElementsByTagName('#blueprintByDrop').first.nextElementSibling!;
  final tbody = table.children.first.children;
  final items = <BlueprintPart>[];

  BlueprintPart? item;
  for (final tr in tbody.where((c) => c.children.any((e) => e.text.trim().isNotEmpty))) {
    final element = tr.children[0];
    final text = element.text;

    if (element.localName == 'th' && tr.children.length == 1) {
      if (item != null) items.add(item);

      item = BlueprintPart(
        id: hash(text),
        // Don't have to but "Mk Iii" and 'Mk Ii" was triggering me
        name: text.replaceAllMapped(RegExp(r'Mk I(?:i+$)?'), (m) => m[0]!.toUpperCase()),
        enemies: [],
      );
    }

    if (element.localName == 'td' && !element.classes.contains('blank-row')) {
      final chance = parseChanceWithRarity(tr.children[2].text);
      if (chance == null) throw Exception('Failed to parse ${tr.children[2].text}');

      final itemDropChance = tr.children[1].text;

      item?.enemies.add(
        ItemDrop(
          id: hash(text),
          item: text,
          chance: double.parse(itemDropChance.substring(0, itemDropChance.length - 1)),
          rarity: chance.rarity,
          status: chance.status,
        ),
      );
    }
  }

  if (item != null && !items.contains(item)) items.add(item);

  return items;
}
