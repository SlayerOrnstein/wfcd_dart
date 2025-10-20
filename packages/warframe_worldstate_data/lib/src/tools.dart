import 'package:warframe_worldstate_data/src/i18n/worldstate_langs.g.dart';

/// Basic function for title case strings
String toTitleCase(String str) {
  return str.replaceAllMapped(RegExp(r'\w\S*'), (m) => m[0]![0].toUpperCase() + m[0]!.substring(1).toLowerCase());
}

/// Split a [resourceName]
String splitResourceName(String resourceName) {
  return (RegExp('([A-Z]?[^A-Z]*)').allMatches(resourceName).map((m) => m[0]!).toList()..removeWhere((s) => s.isEmpty))
      .join(' ');
}

/// Normalizes the [uniqueName] into a more human readable string
String normalizeResourceName(String uniqueName) => toTitleCase(splitResourceName(uniqueName.split('/').last));

/// Get the raw [WorldstateLocale] localizations
WorldstateData i18n([String locale = 'en']) {
  return switch (locale) {
    'en' => WorldstateLocale.en.buildSync(),
    _ => throw Exception('$locale is not supported'),
  };
}
