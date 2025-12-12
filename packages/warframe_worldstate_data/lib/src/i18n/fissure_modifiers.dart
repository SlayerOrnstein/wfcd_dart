import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'fissure_modifiers.g.dart';

/// Fissure tier and position
typedef FissureModifier = ({String value, int tier});

/// Get raw fissure modifier data
Map<String, FissureModifier> fissures([WorldstateDataLocale locale = .en]) {
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

  final mapped = data.map<String, FissureModifier>((key, value) {
    final v = value as Map<String, dynamic>;
    return MapEntry(key, (value: v['value'], tier: v['num']));
  });

  return Map.unmodifiable(mapped);
}

@EmbedStr('/data/fissureModifiers')
const _en = _$_en;

@EmbedStr('/data/cs/fissureModifiers')
const _cs = _$_cs;

@EmbedStr('/data/de/fissureModifiers')
const _de = _$_de;

@EmbedStr('/data/es/fissureModifiers')
const _es = _$_es;

@EmbedStr('/data/fr/fissureModifiers')
const _fr = _$_fr;

@EmbedStr('/data/it/fissureModifiers')
const _it = _$_it;

@EmbedStr('/data/ko/fissureModifiers')
const _ko = _$_ko;

@EmbedStr('/data/pl/fissureModifiers')
const _pl = _$_pl;

@EmbedStr('/data/pt/fissureModifiers')
const _pt = _$_pt;

@EmbedStr('/data/ru/fissureModifiers')
const _ru = _$_ru;

@EmbedStr('/data/sr/fissureModifiers')
const _sr = _$_sr;

@EmbedStr('/data/tr/fissureModifiers')
const _tr = _$_tr;

@EmbedStr('/data/uk/fissureModifiers')
const _uk = _$_uk;

@EmbedStr('/data/zh/fissureModifiers')
const _zh = _$_zh;
