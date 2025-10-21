import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/models.dart';
import 'package:worldstate_models/src/utils/types.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'trader.mapper.dart';

@MappableRecord(caseStyle: CaseStyle.pascalCase)
typedef RawTraderItem = ({String itemType, int? primePrice, int? regularPrice});

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawTrader extends BaseContentObject with RawTraderMappable {
  RawTrader({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.initialStartDate,
    required this.node,
    required this.character,
    this.manifest = const [],
    this.evergreenManifest = const [],
  });

  static const fromJson = RawTraderMapper.fromJson;

  static const fromMap = RawTraderMapper.fromMap;

  final JsonObject? initialStartDate;

  final String node;

  final String? character;

  final List<RawTraderItem> manifest;

  final List<RawTraderItem>? evergreenManifest;

  Trader toTrader([String locale = 'en']) => Trader.fromRaw(this, locale);
}

@MappableRecord()
typedef TraderItem = ({String name, int primePrice, int regularPrice});

@MappableClass()
class Trader extends WorldstateObject with TraderMappable {
  Trader({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.initialStartDate,
    required this.node,
    required this.character,
    required this.inventory,
    required this.evergreenItems,
  });

  factory Trader.fromRaw(RawTrader raw, String locale, {String? character}) {
    final langs = languages(locale);

    TraderItem toItem(RawTraderItem item) {
      return (
        name: langs.fetchValue(item.itemType),
        primePrice: item.primePrice ?? 0,
        regularPrice: item.regularPrice ?? 0,
      );
    }

    return Trader(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      initialStartDate: raw.initialStartDate != null ? parseDate(raw.initialStartDate) : null,
      node: solNodes(locale).fetchNode(raw.node).name,
      character: langs.fetchValue(raw.character ?? character ?? ''),
      inventory: raw.manifest.map(toItem).toList(),
      evergreenItems: raw.evergreenManifest?.map(toItem).toList(),
    );
  }

  final DateTime? initialStartDate;
  final String node;
  final String character;
  final List<TraderItem> inventory;
  final List<TraderItem>? evergreenItems;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
