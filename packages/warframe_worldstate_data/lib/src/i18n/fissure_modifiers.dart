import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n_tools.dart';
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

@EmbedBinary('/data/fissureModifiers')
const _en = _$_en;

@EmbedBinary('/data/cs/fissureModifiers')
const _cs = _$_cs;

@EmbedBinary('/data/de/fissureModifiers')
const _de = _$_de;

@EmbedBinary('/data/es/fissureModifiers')
const _es = _$_es;

@EmbedBinary('/data/fr/fissureModifiers')
const _fr = _$_fr;

@EmbedBinary('/data/it/fissureModifiers')
const _it = _$_it;

@EmbedBinary('/data/ko/fissureModifiers')
const _ko = _$_ko;

@EmbedBinary('/data/pl/fissureModifiers')
const _pl = _$_pl;

@EmbedBinary('/data/pt/fissureModifiers')
const _pt = _$_pt;

@EmbedBinary('/data/ru/fissureModifiers')
const _ru = _$_ru;

@EmbedBinary('/data/sr/fissureModifiers')
const _sr = _$_sr;

@EmbedBinary('/data/tr/fissureModifiers')
const _tr = _$_tr;

@EmbedBinary('/data/uk/fissureModifiers')
const _uk = _$_uk;

@EmbedBinary('/data/zh/fissureModifiers')
const _zh = _$_zh;
