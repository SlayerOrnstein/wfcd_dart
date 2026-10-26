import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'sortie_data.g.dart';

typedef SortieModifier = ({String title, String description});

/// Get raw sortie data
Map<String, dynamic> sortieData([WorldstateDataLocale locale = .en]) {
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

  final types = Map<String, String>.from(data['modifierTypes'] as Map<String, dynamic>);
  final typeDescriptions = Map<String, String>.from(data['modifierDescriptions'] as Map<String, dynamic>);

  final modifiers = <String, SortieModifier>{};
  for (final modifier in types.keys) {
    modifiers[modifier] = (title: types[modifier]!, description: typeDescriptions[modifier]!);
  }

  data['modifiers'] = modifiers;
  data
    ..remove('modifierTypes')
    ..remove('modifierDescriptions');

  return Map.unmodifiable(data);
}

@EmbedStr('/data/sortieData')
const String _en = _$_en;

@EmbedStr('/data/cs/sortieData')
const String _cs = _$_cs;

@EmbedStr('/data/de/sortieData')
const String _de = _$_de;

@EmbedStr('/data/es/sortieData')
const String _es = _$_es;

@EmbedStr('/data/fr/sortieData')
const String _fr = _$_fr;

@EmbedStr('/data/it/sortieData')
const String _it = _$_it;

@EmbedStr('/data/ko/sortieData')
const String _ko = _$_ko;

@EmbedStr('/data/pl/sortieData')
const String _pl = _$_pl;

@EmbedStr('/data/pt/sortieData')
const String _pt = _$_pt;

@EmbedStr('/data/ru/sortieData')
const String _ru = _$_ru;

@EmbedStr('/data/sr/sortieData')
const String _sr = _$_sr;

@EmbedStr('/data/tr/sortieData')
const String _tr = _$_tr;

@EmbedStr('/data/uk/sortieData')
const String _uk = _$_uk;

@EmbedStr('/data/zh/sortieData')
const String _zh = _$_zh;
