import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'conclave_data.g.dart';

/// Get raw conclave data
Map<String, dynamic> conclave([WorldstateDataLocale locale = .en]) {
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

  data['modes'] = minifyValue(data['modes'] as Map<String, dynamic>);

  return Map.unmodifiable(data);
}

@EmbedStr('/data/conclaveData')
const _en = _$_en;

@EmbedStr('/data/cs/conclaveData')
const _cs = _$_cs;

@EmbedStr('/data/de/conclaveData')
const _de = _$_de;

@EmbedStr('/data/es/conclaveData')
const _es = _$_es;

@EmbedStr('/data/fr/conclaveData')
const _fr = _$_fr;

@EmbedStr('/data/it/conclaveData')
const _it = _$_it;

@EmbedStr('/data/ko/conclaveData')
const _ko = _$_ko;

@EmbedStr('/data/pl/conclaveData')
const _pl = _$_pl;

@EmbedStr('/data/pt/conclaveData')
const _pt = _$_pt;

@EmbedStr('/data/ru/conclaveData')
const _ru = _$_ru;

@EmbedStr('/data/sr/conclaveData')
const _sr = _$_sr;

@EmbedStr('/data/tr/conclaveData')
const _tr = _$_tr;

@EmbedStr('/data/uk/conclaveData')
const _uk = _$_uk;

@EmbedStr('/data/zh/conclaveData')
const _zh = _$_zh;
