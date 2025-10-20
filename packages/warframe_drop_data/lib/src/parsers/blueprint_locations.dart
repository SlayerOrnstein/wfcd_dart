import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/models/models.dart';
import 'package:warframe_drop_data/src/utils.dart';

List<BlueprintLocation> parseBlueprintLocations(Element body) {
  final table = body.getElementsByTagName('#blueprintByDrop').first.nextElementSibling!;
  final tbody = table.children.first.children;

  final items = <BlueprintLocation>[];
  BlueprintLocation? item;
  for (final row in tbody.where((c) => c.children.any((e) => e.text.trim().isNotEmpty))) {
    final element = row.children[0];
    final text = element.text;

    if (element.localName == 'th' && row.children.length == 1) {
      if (item != null) items.add(item);

      item = BlueprintLocation(
        id: createHash(text),
        // Don't have to but "Mk Iii" and 'Mk Ii" was triggering me
        name: text.replaceAllMapped(RegExp(r'Mk I(?:i+$)?'), (m) => m[0]!.toUpperCase()),
        enemies: <BlueprintLocationEnemy>[],
      );
    }

    if (element.localName == 'td' && !element.classes.contains('blank-row')) {
      final chance = parseChance(row.children[2].text);
      final itemDropChance = row.children[1].text;

      item?.addEnemy(
        BlueprintLocationEnemy(
          id: createHash(text),
          name: text,
          dropChance: double.parse(itemDropChance.substring(0, itemDropChance.length - 1)),
          rarity: chance?.rarity,
          chance: chance?.chance,
        ),
      );
    }
  }

  return items;
}
