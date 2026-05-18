import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n_tools.dart';
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

@EmbedBinary('/data/conclaveData')
const _en = _$_en;

@EmbedBinary('/data/cs/conclaveData')
const _cs = _$_cs;

@EmbedBinary('/data/de/conclaveData')
const _de = _$_de;

@EmbedBinary('/data/es/conclaveData')
const _es = _$_es;

@EmbedBinary('/data/fr/conclaveData')
const _fr = _$_fr;

@EmbedBinary('/data/it/conclaveData')
const _it = _$_it;

@EmbedBinary('/data/ko/conclaveData')
const _ko = _$_ko;

@EmbedBinary('/data/pl/conclaveData')
const _pl = _$_pl;

@EmbedBinary('/data/pt/conclaveData')
const _pt = _$_pt;

@EmbedBinary('/data/ru/conclaveData')
const _ru = _$_ru;

@EmbedBinary('/data/sr/conclaveData')
const _sr = _$_sr;

@EmbedBinary('/data/tr/conclaveData')
const _tr = _$_tr;

@EmbedBinary('/data/uk/conclaveData')
const _uk = _$_uk;

@EmbedBinary('/data/zh/conclaveData')
const _zh = _$_zh;
