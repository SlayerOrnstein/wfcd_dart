import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/models.dart';
import 'package:worldstate_models/src/utils/types.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'void_trader.mapper.dart';

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
    this.manifest = const [],
    this.evergreenManifest = const [],
  });

  final JsonObject? initialStartDate;

  final String node;

  final List<RawTraderItem> manifest;

  final List<RawTraderItem>? evergreenManifest;
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
    required this.items,
    required this.evergreenItems,
  });

  factory Trader.fromRaw(RawTrader raw, String locale) {
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
      items: raw.manifest.map(toItem).toList(),
      evergreenItems: raw.evergreenManifest?.map(toItem).toList(),
    );
  }

  final DateTime? initialStartDate;
  final String node;
  final List<TraderItem> items;
  final List<TraderItem>? evergreenItems;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;
}
