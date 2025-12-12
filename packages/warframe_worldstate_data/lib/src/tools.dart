// ignore_for_file: public_member_api_docs

enum WorldstateDataLocale { en, cs, de, es, fr, it, ko, pl, pt, ru, sr, tr, uk, zh }

/// Basic function for title case strings
String toTitleCase(String str) {
  return str.replaceAllMapped(RegExp(r'\w\S*'), (m) => m[0]![0].toUpperCase() + m[0]!.substring(1).toLowerCase());
}

/// Split a [resourceName]
String splitResourceName(String resourceName) {
  return (RegExp(
    '([A-Z]?[^A-Z]*)',
  ).allMatches(resourceName).map((m) => m[0]!).toList()..removeWhere((s) => s.isEmpty)).join(' ');
}

/// Normalizes the [uniqueName] into a more human readable string
String normalizeResourceName(String uniqueName) => toTitleCase(splitResourceName(uniqueName.split('/').last));
