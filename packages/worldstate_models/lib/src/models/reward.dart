import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/utils/types.dart';

part 'reward.mapper.dart';

@MappableRecord()
typedef CountedItem = ({int count, String type, String key});

@MappableClass()
class RawReward with RawRewardMappable {
  RawReward({required this.items, required this.countedItems, required this.credits});

  static const fromMap = RawRewardMapper.fromMap;

  final List<String>? items;
  final List<JsonObject>? countedItems;
  final int? credits;

  Reward toReward([String locale = 'en']) => Reward.fromRaw(this, locale);
}

@MappableClass()
class Reward with RewardMappable {
  Reward({required this.items, required this.countedItems, required this.credits});

  factory Reward.fromRaw(RawReward raw, [String locale = 'en']) {
    final countedItems = raw.countedItems?.map<CountedItem>((i) => _toCountedItem(i, locale)).toList();

    return Reward(
      items: raw.items?.map(languages(locale).fetchValue).toList(),
      countedItems: countedItems,
      credits: raw.credits,
    );
  }

  /// Items being rewarded
  final List<String>? items;

  /// Items and amount being rewarded
  final List<CountedItem>? countedItems;

  /// Credits being rewarded
  final int? credits;

  /// Items being rewarded in string format
  String? get itemString =>
      countedItems?.fold('', (p, n) => '${p.isNotEmpty ? '$p +' : ''} ${n.count} ${n.key}').trim() ?? items?.join('+');

  static CountedItem _toCountedItem(Map<String, dynamic> item, String locale) {
    final type = item['ItemType'] as String;

    return (
      count: item['ItemCount'] as int,
      type: languages(locale).fetchValue(type),
      key: languages().fetchValue(type),
    );
  }
}
