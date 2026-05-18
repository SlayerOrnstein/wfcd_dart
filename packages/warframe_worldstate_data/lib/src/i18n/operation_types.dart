import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'operation_types.g.dart';

/// Get raw operation types data
Map<String, dynamic> operationTypes([WorldstateDataLocale locale = .en]) {
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

  return Map.unmodifiable(data);
}

@EmbedBinary('/data/operationTypes')
const _en = _$_en;

@EmbedBinary('/data/cs/operationTypes')
const _cs = _$_cs;

@EmbedBinary('/data/de/operationTypes')
const _de = _$_de;

@EmbedBinary('/data/es/operationTypes')
const _es = _$_es;

@EmbedBinary('/data/fr/operationTypes')
const _fr = _$_fr;

@EmbedBinary('/data/it/operationTypes')
const _it = _$_it;

@EmbedBinary('/data/ko/operationTypes')
const _ko = _$_ko;

@EmbedBinary('/data/pl/operationTypes')
const _pl = _$_pl;

@EmbedBinary('/data/pt/operationTypes')
const _pt = _$_pt;

@EmbedBinary('/data/ru/operationTypes')
const _ru = _$_ru;

@EmbedBinary('/data/sr/operationTypes')
const _sr = _$_sr;

@EmbedBinary('/data/tr/operationTypes')
const _tr = _$_tr;

@EmbedBinary('/data/uk/operationTypes')
const _uk = _$_uk;

@EmbedBinary('/data/zh/operationTypes')
const _zh = _$_zh;
