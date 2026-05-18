import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n_tools.dart';
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

@EmbedBinary('/data/languages')
const _en = _$_en;

@EmbedBinary('/data/cs/languages')
const _cs = _$_cs;

@EmbedBinary('/data/de/languages')
const _de = _$_de;

@EmbedBinary('/data/es/languages')
const _es = _$_es;

@EmbedBinary('/data/fr/languages')
const _fr = _$_fr;

@EmbedBinary('/data/it/languages')
const _it = _$_it;

@EmbedBinary('/data/ko/languages')
const _ko = _$_ko;

@EmbedBinary('/data/pl/languages')
const _pl = _$_pl;

@EmbedBinary('/data/pt/languages')
const _pt = _$_pt;

@EmbedBinary('/data/ru/languages')
const _ru = _$_ru;

@EmbedBinary('/data/sr/languages')
const _sr = _$_sr;

@EmbedBinary('/data/tr/languages')
const _tr = _$_tr;

@EmbedBinary('/data/uk/languages')
const _uk = _$_uk;

@EmbedBinary('/data/zh/languages')
const _zh = _$_zh;
