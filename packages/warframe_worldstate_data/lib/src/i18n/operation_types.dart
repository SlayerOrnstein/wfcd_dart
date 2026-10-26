import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

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

@EmbedStr('/data/operationTypes')
const String _en = _$_en;

@EmbedStr('/data/cs/operationTypes')
const String _cs = _$_cs;

@EmbedStr('/data/de/operationTypes')
const String _de = _$_de;

@EmbedStr('/data/es/operationTypes')
const String _es = _$_es;

@EmbedStr('/data/fr/operationTypes')
const String _fr = _$_fr;

@EmbedStr('/data/it/operationTypes')
const String _it = _$_it;

@EmbedStr('/data/ko/operationTypes')
const String _ko = _$_ko;

@EmbedStr('/data/pl/operationTypes')
const String _pl = _$_pl;

@EmbedStr('/data/pt/operationTypes')
const String _pt = _$_pt;

@EmbedStr('/data/ru/operationTypes')
const String _ru = _$_ru;

@EmbedStr('/data/sr/operationTypes')
const String _sr = _$_sr;

@EmbedStr('/data/tr/operationTypes')
const String _tr = _$_tr;

@EmbedStr('/data/uk/operationTypes')
const String _uk = _$_uk;

@EmbedStr('/data/zh/operationTypes')
const String _zh = _$_zh;
