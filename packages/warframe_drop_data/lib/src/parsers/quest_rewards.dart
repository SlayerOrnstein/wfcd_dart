import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/exceptions.dart';
import 'package:warframe_drop_data/src/models/quest_rewards.dart';
import 'package:warframe_drop_data/src/utils.dart';
import 'package:warframe_drop_data/warframe_drop_data.dart';

List<QuestRewards> parseQuestRewards(Element element) {
  final table = element.getElementsByTagName('#keyRewards').first.nextElementSibling;
  final tBody = table?.children.first;
  if (tBody == null) throw ParsingException('Failed parse keyRewards table');

  final quests = <QuestRewards>[];

  QuestRewards? questRewards;
  String? rotation;
  for (final tr in tBody.children.where((tr) => tr.children.isNotEmpty)) {
    final elem = tr.children.first;
    final text = elem.text;

    if (elem.localName == 'th') {
      final temp = parseRotation(text);
      if (temp != null) {
        rotation = temp;
      } else {
        if (questRewards != null) quests.add(questRewards);

        questRewards = QuestRewards(id: hash(text), quest: text, rewards: Rotations.empty());
      }
    }

    if (elem.localName == 'td' && elem.className != 'blank-row') {
      final drop = parseChanceWithRarity(tr.children[1].text);
      if (drop == null || rotation == null) throw ParsingException('Failed to parse $text');

      questRewards?.rewards.addReward(
        rotation,
        ItemDrop(id: hash(text), item: text, chance: drop.chance, rarity: drop.rarity),
      );
    }
  }

  if (questRewards != null) quests.add(questRewards);

  return quests;
}
