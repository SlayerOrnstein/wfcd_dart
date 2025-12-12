import 'package:warframe_worldstate_data/src/i18n/i18n.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

/// Extensions on [Map<String, Language>] to quickly get value and description for a given resource
extension LanguageExtension on Map<String, LanguageString> {
  /// Get the string value for the given [resource].
  String fetchValue(String resource) =>
      this[resource]?.value ?? this[resource.toLowerCase()]?.value ?? normalizeResourceName(resource);

  /// Get the description for a [resource] otherwise defaults to a placeholder string based on the [resource]
  String fetchDescription(String resource) =>
      this[resource]?.description ??
      this[resource.toLowerCase()]?.description ??
      '[PH] ${normalizeResourceName(resource)} Desc';
}
