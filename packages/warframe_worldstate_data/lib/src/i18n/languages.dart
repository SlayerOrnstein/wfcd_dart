import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'languages.g.dart';

/// A Record to use languages with type safety
typedef LanguageString = ({String value, String? description});

/// Get raw language data
Map<String, LanguageString> languages([WorldstateDataLocale locale = .en]) {
  final data = switch (locale) {
    WorldstateDataLocale.en => decodeData<Map<String, dynamic>>(_en),
    WorldstateDataLocale.cs => decodeData<Map<String, dynamic>>(_cs),
    WorldstateDataLocale.de => decodeData<Map<String, dynamic>>(_de),
    WorldstateDataLocale.es => decodeData<Map<String, dynamic>>(_es),
    WorldstateDataLocale.fr => decodeData<Map<String, dynamic>>(_fr),
    WorldstateDataLocale.it => decodeData<Map<String, dynamic>>(_it),
    WorldstateDataLocale.ko => decodeData<Map<String, dynamic>>(_ko),
    WorldstateDataLocale.pl => decodeData<Map<String, dynamic>>(_pl),
    WorldstateDataLocale.pt => decodeData<Map<String, dynamic>>(_pt),
    WorldstateDataLocale.ru => decodeData<Map<String, dynamic>>(_ru),
    WorldstateDataLocale.sr => decodeData<Map<String, dynamic>>(_sr),
    WorldstateDataLocale.tr => decodeData<Map<String, dynamic>>(_tr),
    WorldstateDataLocale.uk => decodeData<Map<String, dynamic>>(_uk),
    WorldstateDataLocale.zh => decodeData<Map<String, dynamic>>(_zh),
  };

  final map = data.map<String, LanguageString>(
    (key, value) => MapEntry(key, (value: (value as Map)['value'] as String, description: value['desc'] as String?)),
  );

  return Map.unmodifiable(map);
}

@EmbedStr('/data/languages')
const _en = _$_en;

@EmbedStr('/data/cs/languages')
const _cs = _$_cs;

@EmbedStr('/data/de/languages')
const _de = _$_de;

@EmbedStr('/data/es/languages')
const _es = _$_es;

@EmbedStr('/data/fr/languages')
const _fr = _$_fr;

@EmbedStr('/data/it/languages')
const _it = _$_it;

@EmbedStr('/data/ko/languages')
const _ko = _$_ko;

@EmbedStr('/data/pl/languages')
const _pl = _$_pl;

@EmbedStr('/data/pt/languages')
const _pt = _$_pt;

@EmbedStr('/data/ru/languages')
const _ru = _$_ru;

@EmbedStr('/data/sr/languages')
const _sr = _$_sr;

@EmbedStr('/data/tr/languages')
const _tr = _$_tr;

@EmbedStr('/data/uk/languages')
const _uk = _$_uk;

@EmbedStr('/data/zh/languages')
const _zh = _$_zh;
