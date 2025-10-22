import 'package:collection/collection.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

/// Represents a Node
typedef Node = ({String name, String? enemy, String? type});

/// Get SolNode data
Map<String, Node> solNodes([String locale = 'en']) =>
    i18n(locale).solNodes.nodes.map((s, n) => MapEntry(s, (name: n.value, enemy: n.enemy, type: n.type)));

/// Extensions on [Map<String, SolNode>]
extension SolNodeExtension on Map<String, Node> {
  /// Get in-game Node name.
  Node fetchNode(String node) {
    return this[node] ?? this[keys.firstWhereOrNull((n) => n.contains(node))] ?? (name: node, enemy: null, type: null);
  }
}
