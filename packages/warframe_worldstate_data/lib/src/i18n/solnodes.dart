import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'solnodes.g.dart';

/// Represents a Node
typedef Node = ({String name, String? enemy, String? type});

/// Get raw solnode data
Map<String, Node> solNodes([WorldstateDataLocale locale = .en]) {
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

  return Map.unmodifiable(
    data.map<String, Node>(
      (key, value) => MapEntry(key, (name: (value as Map)['value'], enemy: value['enemy'], type: value['type'])),
    ),
  );
}

@EmbedStr('/data/solnodes')
const String _en = _$_en;

@EmbedStr('/data/cs/solnodes')
const String _cs = _$_cs;

@EmbedStr('/data/de/solnodes')
const String _de = _$_de;

@EmbedStr('/data/es/solnodes')
const String _es = _$_es;

@EmbedStr('/data/fr/solnodes')
const String _fr = _$_fr;

@EmbedStr('/data/it/solnodes')
const String _it = _$_it;

@EmbedStr('/data/ko/solnodes')
const String _ko = _$_ko;

@EmbedStr('/data/pl/solnodes')
const String _pl = _$_pl;

@EmbedStr('/data/pt/solnodes')
const String _pt = _$_pt;

@EmbedStr('/data/ru/solnodes')
const String _ru = _$_ru;

@EmbedStr('/data/sr/solnodes')
const String _sr = _$_sr;

@EmbedStr('/data/tr/solnodes')
const String _tr = _$_tr;

@EmbedStr('/data/uk/solnodes')
const String _uk = _$_uk;

@EmbedStr('/data/zh/solnodes')
const String _zh = _$_zh;
