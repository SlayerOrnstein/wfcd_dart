import 'package:warframe_worldstate_data/src/i18n/worldstate_langs.g.dart';

// ignore: public_member_api_docs
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

/// Get the raw [WorldstateLocale] localizations
WorldstateData i18n([WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  return WorldstateLocale.en.buildSync();
  // return switch (locale) {
  //   .en => WorldstateLocale.en.buildSync(),
  //   .cs => WorldstateLocale.cs.buildSync(),
  //   .de => WorldstateLocale.de.buildSync(),
  //   .es => WorldstateLocale.es.buildSync(),
  //   .fr => WorldstateLocale.fr.buildSync(),
  //   .it => WorldstateLocale.it.buildSync(),
  //   .ko => WorldstateLocale.ko.buildSync(),
  //   .pl => WorldstateLocale.pl.buildSync(),
  //   .pt => WorldstateLocale.pt.buildSync(),
  //   .ru => WorldstateLocale.ru.buildSync(),
  //   .sr => WorldstateLocale.sr.buildSync(),
  //   .tr => WorldstateLocale.tr.buildSync(),
  //   .uk => WorldstateLocale.uk.buildSync(),
  //   .zh => WorldstateLocale.zh.buildSync(),
  // };
}
