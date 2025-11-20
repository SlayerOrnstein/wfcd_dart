/// Generated file. Do not edit.
///
/// Source: data
/// To regenerate, run: `dart run slang`
///
/// Locales: 14
/// Strings: 172028 (12287 per locale)
///
/// Built on 2025-11-20 at 23:29 UTC

// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang/slang.dart';
export 'package:slang/slang.dart';

import 'worldstate_langs_cs.g.dart' deferred as l_cs;
import 'worldstate_langs_de.g.dart' deferred as l_de;
import 'worldstate_langs_es.g.dart' deferred as l_es;
import 'worldstate_langs_fr.g.dart' deferred as l_fr;
import 'worldstate_langs_it.g.dart' deferred as l_it;
import 'worldstate_langs_ko.g.dart' deferred as l_ko;
import 'worldstate_langs_pl.g.dart' deferred as l_pl;
import 'worldstate_langs_pt.g.dart' deferred as l_pt;
import 'worldstate_langs_ru.g.dart' deferred as l_ru;
import 'worldstate_langs_sr.g.dart' deferred as l_sr;
import 'worldstate_langs_tr.g.dart' deferred as l_tr;
import 'worldstate_langs_uk.g.dart' deferred as l_uk;
import 'worldstate_langs_zh.g.dart' deferred as l_zh;
part 'worldstate_langs_en.g.dart';

/// Supported locales.
///
/// Usage:
/// - LocaleSettings.setLocale(WorldstateLocale.en) // set locale
/// - Locale locale = WorldstateLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == WorldstateLocale.en) // locale check
enum WorldstateLocale with BaseAppLocale<WorldstateLocale, WorldstateData> {
  en(languageCode: 'en'),
  cs(languageCode: 'cs'),
  de(languageCode: 'de'),
  es(languageCode: 'es'),
  fr(languageCode: 'fr'),
  it(languageCode: 'it'),
  ko(languageCode: 'ko'),
  pl(languageCode: 'pl'),
  pt(languageCode: 'pt'),
  ru(languageCode: 'ru'),
  sr(languageCode: 'sr'),
  tr(languageCode: 'tr'),
  uk(languageCode: 'uk'),
  zh(languageCode: 'zh');

  const WorldstateLocale({
    required this.languageCode,
    this.scriptCode, // ignore: unused_element, unused_element_parameter
    this.countryCode, // ignore: unused_element, unused_element_parameter
  });

  @override
  final String languageCode;
  @override
  final String? scriptCode;
  @override
  final String? countryCode;

  @override
  Future<WorldstateData> build({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) async {
    switch (this) {
      case WorldstateLocale.en:
        return WorldstateDataEn(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.cs:
        await l_cs.loadLibrary();
        return l_cs.WorldstateDataCs(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.de:
        await l_de.loadLibrary();
        return l_de.WorldstateDataDe(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.es:
        await l_es.loadLibrary();
        return l_es.WorldstateDataEs(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.fr:
        await l_fr.loadLibrary();
        return l_fr.WorldstateDataFr(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.it:
        await l_it.loadLibrary();
        return l_it.WorldstateDataIt(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.ko:
        await l_ko.loadLibrary();
        return l_ko.WorldstateDataKo(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.pl:
        await l_pl.loadLibrary();
        return l_pl.WorldstateDataPl(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.pt:
        await l_pt.loadLibrary();
        return l_pt.WorldstateDataPt(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.ru:
        await l_ru.loadLibrary();
        return l_ru.WorldstateDataRu(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.sr:
        await l_sr.loadLibrary();
        return l_sr.WorldstateDataSr(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.tr:
        await l_tr.loadLibrary();
        return l_tr.WorldstateDataTr(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.uk:
        await l_uk.loadLibrary();
        return l_uk.WorldstateDataUk(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.zh:
        await l_zh.loadLibrary();
        return l_zh.WorldstateDataZh(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
    }
  }

  @override
  WorldstateData buildSync({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) {
    switch (this) {
      case WorldstateLocale.en:
        return WorldstateDataEn(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.cs:
        return l_cs.WorldstateDataCs(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.de:
        return l_de.WorldstateDataDe(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.es:
        return l_es.WorldstateDataEs(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.fr:
        return l_fr.WorldstateDataFr(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.it:
        return l_it.WorldstateDataIt(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.ko:
        return l_ko.WorldstateDataKo(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.pl:
        return l_pl.WorldstateDataPl(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.pt:
        return l_pt.WorldstateDataPt(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.ru:
        return l_ru.WorldstateDataRu(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.sr:
        return l_sr.WorldstateDataSr(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.tr:
        return l_tr.WorldstateDataTr(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.uk:
        return l_uk.WorldstateDataUk(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
      case WorldstateLocale.zh:
        return l_zh.WorldstateDataZh(
          overrides: overrides,
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );
    }
  }

  /// Gets current instance managed by [LocaleSettings].
  WorldstateData get translations => LocaleSettings.instance.getTranslations(this);
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
WorldstateData get t => LocaleSettings.instance.currentTranslations;

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseLocaleSettings<WorldstateLocale, WorldstateData> {
  LocaleSettings._() : super(utils: AppLocaleUtils.instance, lazy: true);

  static final instance = LocaleSettings._();

  // static aliases (checkout base methods for documentation)
  static WorldstateLocale get currentLocale => instance.currentLocale;
  static Stream<WorldstateLocale> getLocaleStream() => instance.getLocaleStream();
  static Future<WorldstateLocale> setLocale(WorldstateLocale locale, {bool? listenToDeviceLocale = false}) =>
      instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
  static Future<WorldstateLocale> setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) =>
      instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
  static Future<void> setPluralResolver({
    String? language,
    WorldstateLocale? locale,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) => instance.setPluralResolver(
    language: language,
    locale: locale,
    cardinalResolver: cardinalResolver,
    ordinalResolver: ordinalResolver,
  );

  // synchronous versions
  static WorldstateLocale setLocaleSync(WorldstateLocale locale, {bool? listenToDeviceLocale = false}) =>
      instance.setLocaleSync(locale, listenToDeviceLocale: listenToDeviceLocale);
  static WorldstateLocale setLocaleRawSync(String rawLocale, {bool? listenToDeviceLocale = false}) =>
      instance.setLocaleRawSync(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
  static void setPluralResolverSync({
    String? language,
    WorldstateLocale? locale,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) => instance.setPluralResolverSync(
    language: language,
    locale: locale,
    cardinalResolver: cardinalResolver,
    ordinalResolver: ordinalResolver,
  );
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<WorldstateLocale, WorldstateData> {
  AppLocaleUtils._() : super(baseLocale: WorldstateLocale.en, locales: WorldstateLocale.values);

  static final instance = AppLocaleUtils._();

  // static aliases (checkout base methods for documentation)
  static WorldstateLocale parse(String rawLocale) => instance.parse(rawLocale);
  static WorldstateLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) =>
      instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// interfaces generated as mixins

mixin SynthTarget {
  String get name;
  String get imageKey;
  List<SynthTargetLocation> get locations;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SynthTarget) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [name, imageKey, locations];
}

mixin SynthTargetLocation {
  String get last_verified;
  String get level;
  String get faction;
  String get spawn_rate;
  String get mission;
  String get planet;
  String get type;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SynthTargetLocation) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [last_verified, level, faction, spawn_rate, mission, planet, type];
}

mixin ArchonShard {
  String get value;
  Map<String, String> get upgradeTypes;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ArchonShard) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [value, upgradeTypes];
}

mixin ConclaveMode {
  String get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConclaveMode) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [value];
}

mixin ConclaveCategory {
  String get value;
  String get description;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConclaveCategory) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [value, description];
}

mixin ConclaveChallenge {
  String get title;
  String get description;
  String get standing;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConclaveChallenge) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [title, description, standing];
}

mixin ConclaveAffector {
  String get title;
  String get description;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConclaveAffector) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [title, description];
}

mixin FissureModifier {
  String get value;
  String get num;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FissureModifier) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [value, num];
}

mixin Language {
  String get value;
  String? get desc => null;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Language) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [value, desc];
}

mixin MissionType {
  String get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MissionType) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [value];
}

mixin OperationType {
  String get value;
  String get symbol;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OperationType) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [value, symbol];
}

mixin SolNode {
  String get value;
  String? get enemy => null;
  String? get type => null;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SolNode) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [value, enemy, type];
}

mixin SortieBoss {
  String get name;
  String get faction;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SortieBoss) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [name, faction];
}

mixin SteelPathRotation {
  String get name;
  String get cost;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SteelPathRotation) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [name, cost];
}

mixin SteelPathEvergreen {
  String get name;
  String get cost;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SteelPathEvergreen) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [name, cost];
}

mixin SyndicateData {
  String get name;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SyndicateData) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [name];
}

mixin UpgradeType {
  String get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UpgradeType) return false;

    final fields = $fields;
    final otherFields = other.$fields;
    for (int i = 0; i < fields.length; i++) {
      if (fields[i] != otherFields[i]) return false;
    }

    return true;
  }

  @override
  int get hashCode {
    final fields = $fields;
    int result = fields.first.hashCode;
    for (final element in fields.skip(1)) {
      result *= element.hashCode;
    }

    return result;
  }

  List<Object?> get $fields => [value];
}
