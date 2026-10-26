import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'mission_types.g.dart';

/// Get raw mission type data
Map<String, String> missionTypes([WorldstateDataLocale locale = .en]) {
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

@EmbedStr('/data/missionTypes')
const String _en = _$_en;

@EmbedStr('/data/cs/missionTypes')
const String _cs = _$_cs;

@EmbedStr('/data/de/missionTypes')
const String _de = _$_de;

@EmbedStr('/data/es/missionTypes')
const String _es = _$_es;

@EmbedStr('/data/fr/missionTypes')
const String _fr = _$_fr;

@EmbedStr('/data/it/missionTypes')
const String _it = _$_it;

@EmbedStr('/data/ko/missionTypes')
const String _ko = _$_ko;

@EmbedStr('/data/pl/missionTypes')
const String _pl = _$_pl;

@EmbedStr('/data/pt/missionTypes')
const String _pt = _$_pt;

@EmbedStr('/data/ru/missionTypes')
const String _ru = _$_ru;

@EmbedStr('/data/sr/missionTypes')
const String _sr = _$_sr;

@EmbedStr('/data/tr/missionTypes')
const String _tr = _$_tr;

@EmbedStr('/data/uk/missionTypes')
const String _uk = _$_uk;

@EmbedStr('/data/zh/missionTypes')
const String _zh = _$_zh;
