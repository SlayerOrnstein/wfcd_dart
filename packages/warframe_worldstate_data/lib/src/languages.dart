import 'package:warframe_worldstate_data/src/tools.dart';

/// Represents a language string
typedef LanguageString = ({String value, String? description});

/// Direct access to lamguage strings
Map<String, LanguageString> languages([String locale = 'en']) =>
    i18n(locale).languages.languages.map((s, l) => MapEntry(s, (value: l.value, description: l.desc)));

/// Extensions on [Map<String, Language>] to quickly get value and description for a given resource
extension LanguageExtension on Map<String, LanguageString> {
  /// Get the string value for the given [resource].
  String fetchValue(String resource) =>
      this[resource]?.value ?? this[resource.toLowerCase()]?.value ?? normalizeResourceName(resource);

  /// Get the description for a [resource] otherwise defaults to a placeholder string based on the [resource]
  String fetchDescription(String resource) =>
      this[resource]?.description ?? '[PH] ${normalizeResourceName(resource)} Desc';
}
