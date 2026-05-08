import 'package:warframe_drop_data/warframe_drop_data.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

typedef WorldstateDropData = ({List<BountyRewardTable> bountyRewards, List<Planet> missionRewards});

const WorldstateDropData _emptyTables = (bountyRewards: [], missionRewards: []);

class Dependency {
  Dependency({this.locale = .en, this.rewardTables = _emptyTables})
    : langs = languages(locale),
      nodes = solNodes(locale);

  final WorldstateDataLocale locale;
  final Map<String, LanguageString> langs;
  final Map<String, Node> nodes;
  final WorldstateDropData rewardTables;
}
