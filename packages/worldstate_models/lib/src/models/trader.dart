import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/models.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/types.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'trader.mapper.dart';

@MappableRecord(caseStyle: CaseStyle.pascalCase)
typedef RawTraderItem = ({String itemType, int? primePrice, int? regularPrice});

@MappableRecord(caseStyle: CaseStyle.pascalCase)
typedef RawScheduleInfo = ({JsonObject expiry, JsonObject? previewHiddenUntil, String? featuredItem});

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawTrader extends BaseContentObject with RawTraderMappable {
  RawTrader({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.initialStartDate,
    required this.node,
    required this.character,
    required this.scheduleInfo,
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

  final List<RawScheduleInfo>? scheduleInfo;

  Trader toTrader(Dependency deps) => Trader.fromRaw(this, deps);
}

@MappableRecord()
typedef TraderItem = ({String name, int primePrice, int regularPrice});

@MappableRecord()
typedef Schedule = ({DateTime expiry, DateTime? previewHiddenUntil, String? key, String? resurgence});

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
    required this.schedule,
  });

  factory Trader.fromRaw(RawTrader raw, Dependency deps, {String? character}) {
    TraderItem toItem(RawTraderItem item) {
      return (
        name: deps.langs.fetchValue(item.itemType),
        primePrice: item.primePrice ?? 0,
        regularPrice: item.regularPrice ?? 0,
      );
    }

    return Trader(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      initialStartDate: raw.initialStartDate != null ? parseDate(raw.initialStartDate) : null,
      node: deps.nodes.fetchNode(raw.node).name,
      character: deps.langs.fetchValue(raw.character ?? character ?? ''),
      inventory: raw.manifest.map(toItem).toList(),
      evergreenItems: raw.evergreenManifest?.map(toItem).toList(),
      schedule: raw.scheduleInfo
          ?.map<Schedule>(
            (s) => (
              expiry: parseDate(s.expiry),
              previewHiddenUntil: parseDate(s.previewHiddenUntil),
              key: s.featuredItem,
              resurgence: s.featuredItem != null ? deps.langs.fetchValue(s.featuredItem!) : null,
            ),
          )
          .toList(),
    );
  }

  final DateTime? initialStartDate;
  final String node;
  final String character;
  final List<TraderItem> inventory;
  final List<TraderItem>? evergreenItems;
  final List<Schedule>? schedule;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
