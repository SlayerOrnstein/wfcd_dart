import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/exceptions.dart';
import 'package:warframe_drop_data/src/extensions.dart';
import 'package:warframe_drop_data/src/models/models.dart';
import 'package:warframe_drop_data/src/utils.dart';

List<RegionRewardPool> parseTransientRewards(Element element) {
  final table = element.getElementsByTagName('#transientRewards').first.nextElementSibling;
  final tbody = table?.children.first;
  if (tbody == null) throw ParsingException('Failed to get #transientRewards table');

  final transientRewards = <RegionRewardPool>[];

  String? rotation;
  RegionRewardPool? rewardPool;
  for (final tr in tbody.children.where((tr) => tr.children.isNotEmpty)) {
    final elem = tr.children.first;
    final text = elem.text;

    if (elem.className == 'blank-row') rotation = null;

    // Only run on tr with id as this is the start of a new table in "Dynamic rewards section"
    if (elem.localName == 'th' && tr.id.isNotEmpty) {
      if (rewardPool != null) transientRewards.add(rewardPool);

      final next = tr.nextElementSibling?.children.first;
      if (next?.localName == 'th') rotation = parseRotation(next!.text);

      rewardPool = rotation != null ? MultiRewardPool(name: text) : SingleRewardPool(name: text);
    }

    // Run on every other to check if the rotation need to be updated;
    if (elem.localName == 'th' && tr.id.isEmpty) {
      final tmp = parseRotation(text);
      if (tmp == null) continue;
      rotation = tmp;
    }

    if (elem.localName == 'td' && elem.className != 'blank-row') {
      final dropChance = parseChanceWithRarity(tr.children[1].text);
      if (dropChance == null) throw ParsingException('Failed to parse out drop chance');
      final item = ItemDrop(id: hash(text), item: text, chance: dropChance.chance, rarity: dropChance.rarity);

      if (rewardPool is SingleRewardPool) rewardPool.rewards.add(item);
      if (rewardPool is MultiRewardPool) {
        if (rotation == null) throw ParsingException('Reward pool is rotaton based but rotation is null');
        rewardPool.rewards.addReward(rotation, item);
      }
    }
  }

  if (rewardPool != null) transientRewards.add(rewardPool);
  return transientRewards;
}
