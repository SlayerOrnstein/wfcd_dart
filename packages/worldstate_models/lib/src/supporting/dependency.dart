import 'package:warframe_drop_data/warframe_drop_data.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

class Dependency {
  Dependency(this.dropData, [this.locale = 'en']) : langs = languages(locale), nodes = solNodes(locale);

  final String locale;
  final Map<String, LanguageString> langs;
  final Map<String, Node> nodes;
  final DropData dropData;
}
