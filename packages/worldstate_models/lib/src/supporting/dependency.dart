import 'package:warframe_drop_data/warframe_drop_data.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

class Dependency {
  Dependency([this.bountyRewardTable = const [], this.locale = WorldstateDataLocale.en])
    : langs = languages(locale),
      nodes = solNodes(locale);

  final WorldstateDataLocale locale;
  final Map<String, LanguageString> langs;
  final Map<String, Node> nodes;
  final List<BountyRewardTable> bountyRewardTable;
}
