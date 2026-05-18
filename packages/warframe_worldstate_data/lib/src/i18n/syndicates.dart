import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n_tools.dart';
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

@EmbedBinary('/data/syndicatesData')
const _en = _$_en;

@EmbedBinary('/data/cs/syndicatesData')
const _cs = _$_cs;

@EmbedBinary('/data/de/syndicatesData')
const _de = _$_de;

@EmbedBinary('/data/es/syndicatesData')
const _es = _$_es;

@EmbedBinary('/data/fr/syndicatesData')
const _fr = _$_fr;

@EmbedBinary('/data/it/syndicatesData')
const _it = _$_it;

@EmbedBinary('/data/ko/syndicatesData')
const _ko = _$_ko;

@EmbedBinary('/data/pl/syndicatesData')
const _pl = _$_pl;

@EmbedBinary('/data/pt/syndicatesData')
const _pt = _$_pt;

@EmbedBinary('/data/ru/syndicatesData')
const _ru = _$_ru;

@EmbedBinary('/data/sr/syndicatesData')
const _sr = _$_sr;

@EmbedBinary('/data/tr/syndicatesData')
const _tr = _$_tr;

@EmbedBinary('/data/uk/syndicatesData')
const _uk = _$_uk;

@EmbedBinary('/data/zh/syndicatesData')
const _zh = _$_zh;
