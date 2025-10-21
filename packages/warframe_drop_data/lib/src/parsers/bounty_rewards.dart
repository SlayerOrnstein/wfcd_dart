import 'dart:developer' as developer;
import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/models/bounty_reward.dart';
import 'package:warframe_drop_data/src/models/rotation.dart';
import 'package:warframe_drop_data/src/utils.dart';

enum BountyRewardIds {
  cetus('cetusRewards'),
  solaris('solarisRewards'),
  deimos('deimosRewards'),
  zariman('zarimanRewards'),
  entrati('entratiLabRewards'),
  hex('hexRewards');

  const BountyRewardIds(this.id);

  /// Html ID of the bounty reward table
  final String id;
}

List<BountyReward>? parseBountyRewards(Element body, String id) {
  final table = body.getElementsByTagName('#$id').first.nextElementSibling;
  final tbody = table?.children.first;
  if (tbody == null) {
    developer.log('no table for $id');
    return null;
  }

  final rewards = <BountyReward>[];

  String? stage;
  String? completion;
  BountyReward? bountyReward;
  String? rotation;
  for (final row in tbody.children) {
    final element = row.children[0];
    var text = element.text;

    if (element.localName == 'th') {
      final tmp = parseRotation(text);
      rotation = null;
      completion = null;

      if (tmp != null) {
        rotation = tmp;
      } else if (text.contains('Completion')) {
        completion = text;
        // Assign stage and move on. Annoying but other then the text there no difference between First/Subsequent
        // Completions and the actual bounty level header.
        continue;
      } else {
        if (bountyReward != null) rewards.add(bountyReward);

        bountyReward = BountyReward(id: hash(text), level: text, rewards: Rotations());
      }
    } else if (element.localName == 'td' && !element.classes.contains('blank-row')) {
      if (row.children.length == 2) stage = row.children[1].text;

      if (row.children.length == 3) {
        final chance = parseChance(row.children[2].text);
        text = row.children[1].text;
        rotation ??= 'C';

        bountyReward = bountyReward?.copyWith(
          rewards: bountyReward.rewards.addReward(
            rotation,
            RotationReward(
              id: hash(text),
              name: text,
              rarity: chance?.rarity,
              chance: chance?.chance,
              stage: completion ?? stage,
            ),
          ),
        );
      }
    }
  }

  if (bountyReward != null) rewards.add(bountyReward);

  return rewards;
}
