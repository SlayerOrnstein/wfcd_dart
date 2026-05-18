import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'steel_path.g.dart';

/// Steel path store item
typedef SteelPathItem = ({String name, int cost});

/// Steel path lang data
typedef SteelPathData = ({List<SteelPathItem> rotation, List<SteelPathItem> evergreen});

/// Get Steel path rotation and evergreen items
SteelPathData steelPathOfferings([WorldstateDataLocale locale = .en]) {
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

  final rotations = List<Map<String, dynamic>>.from(data['rotation'] as List<dynamic>);
  final evergreens = List<Map<String, dynamic>>.from(data['evergreen'] as List<dynamic>);

  return (
    rotation: rotations.map((s) => (name: s['name'] as String, cost: s['cost'] as int)).toList(),
    evergreen: evergreens.map((s) => (name: s['name'] as String, cost: s['cost'] as int)).toList(),
  );
}

@EmbedStr('/data/steelPath')
const _en = _$_en;

@EmbedStr('/data/cs/steelPath')
const _cs = _$_cs;

@EmbedStr('/data/de/steelPath')
const _de = _$_de;

@EmbedStr('/data/es/steelPath')
const _es = _$_es;

@EmbedStr('/data/fr/steelPath')
const _fr = _$_fr;

@EmbedStr('/data/it/steelPath')
const _it = _$_it;

@EmbedStr('/data/ko/steelPath')
const _ko = _$_ko;

@EmbedStr('/data/pl/steelPath')
const _pl = _$_pl;

@EmbedStr('/data/pt/steelPath')
const _pt = _$_pt;

@EmbedStr('/data/ru/steelPath')
const _ru = _$_ru;

@EmbedStr('/data/sr/steelPath')
const _sr = _$_sr;

@EmbedStr('/data/tr/steelPath')
const _tr = _$_tr;

@EmbedStr('/data/uk/steelPath')
const _uk = _$_uk;

@EmbedStr('/data/zh/steelPath')
const _zh = _$_zh;
