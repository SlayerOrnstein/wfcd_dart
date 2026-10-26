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
const String _en = _$_en;

@EmbedStr('/data/cs/factionsData')
const String _cs = _$_cs;

@EmbedStr('/data/de/factionsData')
const String _de = _$_de;

@EmbedStr('/data/es/factionsData')
const String _es = _$_es;

@EmbedStr('/data/fr/factionsData')
const String _fr = _$_fr;

@EmbedStr('/data/it/factionsData')
const String _it = _$_it;

@EmbedStr('/data/ko/factionsData')
const String _ko = _$_ko;

@EmbedStr('/data/pl/factionsData')
const String _pl = _$_pl;

@EmbedStr('/data/pt/factionsData')
const String _pt = _$_pt;

@EmbedStr('/data/ru/factionsData')
const String _ru = _$_ru;

@EmbedStr('/data/sr/factionsData')
const String _sr = _$_sr;

@EmbedStr('/data/tr/factionsData')
const String _tr = _$_tr;

@EmbedStr('/data/uk/factionsData')
const String _uk = _$_uk;

@EmbedStr('/data/zh/factionsData')
const String _zh = _$_zh;
