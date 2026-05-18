import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'synth_targets.g.dart';

/// Get raw synth targets data
List<Map<String, dynamic>> synthTargetsData([WorldstateDataLocale locale = .en]) {
  final data = switch (locale) {
    WorldstateDataLocale.en => decodeArrayData<Map<String, dynamic>>(_en),
    WorldstateDataLocale.cs => decodeArrayData<Map<String, dynamic>>(_cs),
    WorldstateDataLocale.de => decodeArrayData<Map<String, dynamic>>(_de),
    WorldstateDataLocale.es => decodeArrayData<Map<String, dynamic>>(_es),
    WorldstateDataLocale.fr => decodeArrayData<Map<String, dynamic>>(_fr),
    WorldstateDataLocale.it => decodeArrayData<Map<String, dynamic>>(_it),
    WorldstateDataLocale.ko => decodeArrayData<Map<String, dynamic>>(_ko),
    WorldstateDataLocale.pl => decodeArrayData<Map<String, dynamic>>(_pl),
    WorldstateDataLocale.pt => decodeArrayData<Map<String, dynamic>>(_pt),
    WorldstateDataLocale.ru => decodeArrayData<Map<String, dynamic>>(_ru),
    WorldstateDataLocale.sr => decodeArrayData<Map<String, dynamic>>(_sr),
    WorldstateDataLocale.tr => decodeArrayData<Map<String, dynamic>>(_tr),
    WorldstateDataLocale.uk => decodeArrayData<Map<String, dynamic>>(_uk),
    WorldstateDataLocale.zh => decodeArrayData<Map<String, dynamic>>(_zh),
  };

  return List.unmodifiable(data);
}

@EmbedStr('/data/synthTargets')
const _en = _$_en;

@EmbedStr('/data/cs/synthTargets')
const _cs = _$_cs;

@EmbedStr('/data/de/synthTargets')
const _de = _$_de;

@EmbedStr('/data/es/synthTargets')
const _es = _$_es;

@EmbedStr('/data/fr/synthTargets')
const _fr = _$_fr;

@EmbedStr('/data/it/synthTargets')
const _it = _$_it;

@EmbedStr('/data/ko/synthTargets')
const _ko = _$_ko;

@EmbedStr('/data/pl/synthTargets')
const _pl = _$_pl;

@EmbedStr('/data/pt/synthTargets')
const _pt = _$_pt;

@EmbedStr('/data/ru/synthTargets')
const _ru = _$_ru;

@EmbedStr('/data/sr/synthTargets')
const _sr = _$_sr;

@EmbedStr('/data/tr/synthTargets')
const _tr = _$_tr;

@EmbedStr('/data/uk/synthTargets')
const _uk = _$_uk;

@EmbedStr('/data/zh/synthTargets')
const _zh = _$_zh;
