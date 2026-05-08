import 'package:html/dom.dart';
import 'package:warframe_drop_data/src/exceptions.dart';
import 'package:warframe_drop_data/src/extensions.dart';
import 'package:warframe_drop_data/src/models/models.dart';
import 'package:warframe_drop_data/src/utils.dart';

/// Enum for syndicate html IDs
enum Syndicates {
  /// Cetus
  ostron('cetusRewards'),

  /// Solaris
  solaris('solarisRewards'),

  /// Entrati
  entrati('deimosRewards'),

  /// Zariman
  zariman('zarimanRewards'),

  /// Cavia
  cavia('entratiLabRewards'),

  /// Hex
  hex('hexRewards');

  const Syndicates(this.id);

  /// Html ID of the bounty reward table
  final String id;
}

/// Parses syndicate bounty rewards
List<BountyRewardTable> parseBountyRewardTables(Element body, Syndicates syndicate) {
  final table = body.getElementsByTagName('#${syndicate.id}').first.nextElementSibling;
  final tbody = table?.children.first;
  if (tbody == null) throw ParsingException('no table for ${syndicate.id}');

  final rewards = <BountyRewardTable>[];

  String? stage;
  String? completion;
  BountyRewardTable? rewardTable;
  String? rotation;
  for (final tr in tbody.children) {
    final element = tr.children[0];
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
        if (rewardTable != null) rewards.add(rewardTable);

        rewardTable = BountyRewardTable(id: hash(text), level: text, rewards: Rotations());
      }
    } else if (element.localName == 'td' && !element.classes.contains('blank-row')) {
      if (tr.children.length == 2) stage = tr.children[1].text;

      if (tr.children.length == 3) {
        final chance = parseChanceWithRarity(tr.children[2].text);
        if (chance == null) throw ParsingException('Failed to parse ${tr.children[2].text}');

        text = tr.children[1].text;
        rotation ??= 'C';

        final stagesRegEx = RegExp('Stage (?<stage>[0-7])');
        final reward = BountyReward(
          id: hash(text),
          item: text,
          rarity: chance.rarity,
          chance: chance.chance,
          stages: stagesRegEx
              .allMatches(stage ?? '')
              .map((m) => m.namedGroup('stage'))
              .nonNulls
              .map(int.parse)
              .toSet()
              .toList(),
          onFinalStage: stage?.toLowerCase() == 'final stage',
          onFirstCompletion: completion?.contains('First'),
          status: null,
        );

        rewardTable?.rewards.addReward(rotation, reward);
      }
    }
  }

  if (rewardTable != null) rewards.add(rewardTable);

  return rewards;
}
