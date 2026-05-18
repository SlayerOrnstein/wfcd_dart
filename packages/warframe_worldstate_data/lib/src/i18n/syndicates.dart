import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'syndicates.g.dart';

/// Get raw language data
Map<String, String> syndicates([WorldstateDataLocale locale = .en]) {
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

  final minified = data.map((key, value) => MapEntry(key, (value as Map)['name'] as String));

  return Map.unmodifiable(minified);
}

@EmbedStr('/data/syndicatesData')
const _en = _$_en;

@EmbedStr('/data/cs/syndicatesData')
const _cs = _$_cs;

@EmbedStr('/data/de/syndicatesData')
const _de = _$_de;

@EmbedStr('/data/es/syndicatesData')
const _es = _$_es;

@EmbedStr('/data/fr/syndicatesData')
const _fr = _$_fr;

@EmbedStr('/data/it/syndicatesData')
const _it = _$_it;

@EmbedStr('/data/ko/syndicatesData')
const _ko = _$_ko;

@EmbedStr('/data/pl/syndicatesData')
const _pl = _$_pl;

@EmbedStr('/data/pt/syndicatesData')
const _pt = _$_pt;

@EmbedStr('/data/ru/syndicatesData')
const _ru = _$_ru;

@EmbedStr('/data/sr/syndicatesData')
const _sr = _$_sr;

@EmbedStr('/data/tr/syndicatesData')
const _tr = _$_tr;

@EmbedStr('/data/uk/syndicatesData')
const _uk = _$_uk;

@EmbedStr('/data/zh/syndicatesData')
const _zh = _$_zh;
