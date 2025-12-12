import 'package:collection/collection.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n.dart';

/// Extensions on [Map<String, SolNode>]
extension SolNodeExtension on Map<String, Node> {
  /// Get in-game Node name.
  Node fetchNode(String node) {
    return this[node] ?? this[keys.firstWhereOrNull((n) => n.contains(node))] ?? (name: node, enemy: null, type: null);
  }
}
