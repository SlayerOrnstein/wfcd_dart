import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n_tools.dart';
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

@EmbedBinary('/data/synthTargets')
const _en = _$_en;

@EmbedBinary('/data/cs/synthTargets')
const _cs = _$_cs;

@EmbedBinary('/data/de/synthTargets')
const _de = _$_de;

@EmbedBinary('/data/es/synthTargets')
const _es = _$_es;

@EmbedBinary('/data/fr/synthTargets')
const _fr = _$_fr;

@EmbedBinary('/data/it/synthTargets')
const _it = _$_it;

@EmbedBinary('/data/ko/synthTargets')
const _ko = _$_ko;

@EmbedBinary('/data/pl/synthTargets')
const _pl = _$_pl;

@EmbedBinary('/data/pt/synthTargets')
const _pt = _$_pt;

@EmbedBinary('/data/ru/synthTargets')
const _ru = _$_ru;

@EmbedBinary('/data/sr/synthTargets')
const _sr = _$_sr;

@EmbedBinary('/data/tr/synthTargets')
const _tr = _$_tr;

@EmbedBinary('/data/uk/synthTargets')
const _uk = _$_uk;

@EmbedBinary('/data/zh/synthTargets')
const _zh = _$_zh;
