import 'package:embed_annotation/embed_annotation.dart';
import 'package:warframe_worldstate_data/src/i18n_tools.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

part 'archon_shards.g.dart';

/// Represents an ArchonShard
typedef ArchonShard = ({String name, Map<String, String> upgrades});

/// Get raw archon shards data
Map<String, ArchonShard> archonShards([WorldstateDataLocale locale = .en]) {
  final shards = switch (locale) {
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

  final minified = shards.map((key, value) {
    final shard = value as Map<String, dynamic>;
    final upgrades = minifyValue(shard['upgradeTypes'] as Map<String, dynamic>);

    return MapEntry(key, (name: shard['value'] as String, upgrades: upgrades));
  });

  return Map.unmodifiable(minified);
}

@EmbedBinary('/data/archonShards')
const _en = _$_en;

@EmbedBinary('/data/cs/archonShards')
const _cs = _$_cs;

@EmbedBinary('/data/de/archonShards')
const _de = _$_de;

@EmbedBinary('/data/es/archonShards')
const _es = _$_es;

@EmbedBinary('/data/fr/archonShards')
const _fr = _$_fr;

@EmbedBinary('/data/it/archonShards')
const _it = _$_it;

@EmbedBinary('/data/ko/archonShards')
const _ko = _$_ko;

@EmbedBinary('/data/pl/archonShards')
const _pl = _$_pl;

@EmbedBinary('/data/pt/archonShards')
const _pt = _$_pt;

@EmbedBinary('/data/ru/archonShards')
const _ru = _$_ru;

@EmbedBinary('/data/sr/archonShards')
const _sr = _$_sr;

@EmbedBinary('/data/tr/archonShards')
const _tr = _$_tr;

@EmbedBinary('/data/uk/archonShards')
const _uk = _$_uk;

@EmbedBinary('/data/zh/archonShards')
const _zh = _$_zh;
