import 'package:collection/collection.dart';
import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/exceptions.dart';
import 'package:warframe_drop_data/src/models/models.dart';
import 'package:warframe_drop_data/src/utils.dart';

final _relicRegex = RegExp(
  r'([A-z]*)\s(?:([A-Z][0-9]+)|([IVXLCDM]*)|(Eterna))\s?Relic\s\(([A-z]*)\)',
  caseSensitive: false,
);

Relic? parseRelic(String str) {
  final results = _relicRegex.firstMatch(str);
  if (results == null || results.groupCount != 5) return null;

  final relicName = results[2] ?? results[3];
  final tier = RelicTypes.values.firstWhereOrNull((i) => i.name == results[1]?.toLowerCase());
  final state = RelicStates.values.firstWhereOrNull((i) => i.name == results[5]?.toLowerCase());

  if (state == null) print(str);

  return Relic(
    id: hash('${tier}_${relicName}_$state'),
    name: relicName?.toUpperCase() ?? '',
    tier: tier ?? RelicTypes.unknown,
    state: state ?? RelicStates.unknown,
    rewards: [],
  );
}

/// Parses out relics from the drops page
List<Relic> parseRelicRewards(Element element) {
  final table = element.getElementsByTagName('#relicRewards').first.nextElementSibling;
  final body = table?.children.first;
  if (body == null) throw ParsingException('Could not parse relic rewards');

  Relic? relic;
  final relics = <Relic>[];
  for (final tr in body.children.where((etr) => etr.children.isNotEmpty)) {
    final elem = tr.children.first;
    final text = elem.text;

    if (elem.localName == 'th') {
      if (relic != null) relics.add(relic);

      final temp = parseRelic(text);
      if (temp != null) relic = temp;
    }

    if (elem.localName == 'td' && elem.className != 'blank-row') {
      final chanceElem = tr.children[1];
      final drop = parseChanceWithRarity(chanceElem.text)!;

      relic?.rewards.add(ItemDrop(id: hash(text), item: text, chance: drop.chance, rarity: drop.rarity));
    }
  }

  if (relic != null && relic.name.isNotEmpty) relics.add(relic);
  return relics;
}
