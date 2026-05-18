import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'upgrade_types.g.dart';

/// Get raw archon shards data
Map<String, String> upgradeTypes([WorldstateDataLocale locale = .en]) {
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

@EmbedBinary('/data/upgradeTypes')
const _en = _$_en;

@EmbedBinary('/data/cs/upgradeTypes')
const _cs = _$_cs;

@EmbedBinary('/data/de/upgradeTypes')
const _de = _$_de;

@EmbedBinary('/data/es/upgradeTypes')
const _es = _$_es;

@EmbedBinary('/data/fr/upgradeTypes')
const _fr = _$_fr;

@EmbedBinary('/data/it/upgradeTypes')
const _it = _$_it;

@EmbedBinary('/data/ko/upgradeTypes')
const _ko = _$_ko;

@EmbedBinary('/data/pl/upgradeTypes')
const _pl = _$_pl;

@EmbedBinary('/data/pt/upgradeTypes')
const _pt = _$_pt;

@EmbedBinary('/data/ru/upgradeTypes')
const _ru = _$_ru;

@EmbedBinary('/data/sr/upgradeTypes')
const _sr = _$_sr;

@EmbedBinary('/data/tr/upgradeTypes')
const _tr = _$_tr;

@EmbedBinary('/data/uk/upgradeTypes')
const _uk = _$_uk;

@EmbedBinary('/data/zh/upgradeTypes')
const _zh = _$_zh;
