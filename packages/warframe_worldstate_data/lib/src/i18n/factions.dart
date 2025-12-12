import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'factions.g.dart';

/// Get raw factions data
Map<String, String> factions([WorldstateDataLocale locale = .en]) {
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

  return Map.unmodifiable(minifyValue(data));
}

@EmbedStr('/data/factionsData')
const _en = _$_en;

@EmbedStr('/data/cs/factionsData')
const _cs = _$_cs;

@EmbedStr('/data/de/factionsData')
const _de = _$_de;

@EmbedStr('/data/es/factionsData')
const _es = _$_es;

@EmbedStr('/data/fr/factionsData')
const _fr = _$_fr;

@EmbedStr('/data/it/factionsData')
const _it = _$_it;

@EmbedStr('/data/ko/factionsData')
const _ko = _$_ko;

@EmbedStr('/data/pl/factionsData')
const _pl = _$_pl;

@EmbedStr('/data/pt/factionsData')
const _pt = _$_pt;

@EmbedStr('/data/ru/factionsData')
const _ru = _$_ru;

@EmbedStr('/data/sr/factionsData')
const _sr = _$_sr;

@EmbedStr('/data/tr/factionsData')
const _tr = _$_tr;

@EmbedStr('/data/uk/factionsData')
const _uk = _$_uk;

@EmbedStr('/data/zh/factionsData')
const _zh = _$_zh;
