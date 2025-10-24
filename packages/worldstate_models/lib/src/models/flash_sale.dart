import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'flash_sale.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawFlashSale extends BaseContentObject with RawFlashSaleMappable {
  RawFlashSale({
    required this.typeName,
    required this.showInMarket,
    required this.hideFromMarket,
    required this.supporterPack,
    required this.discount,
    required this.bogoBuy,
    required this.bogoGet,
    required this.premiumOverride,
    required this.regularOverride,
    required this.startDate,
    required this.endDate,
  }) : super(id: {});

  final String typeName;
  final bool showInMarket;
  final bool hideFromMarket;
  final bool supporterPack;
  final num discount;
  final num bogoBuy;
  final num bogoGet;
  final int premiumOverride;
  final int regularOverride;
  final JsonObject startDate;
  final JsonObject endDate;

  FlashSale toFlashSale(Dependency deps) => FlashSale.fromRaw(this, deps);
}

@MappableClass()
class FlashSale extends WorldstateObject with FlashSaleMappable {
  FlashSale({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.item,
    required this.shownInMarket,
    required this.isSupporterPack,
    required this.discount,
    required this.premiumOverride,
    required this.regularOverride,
  });

  factory FlashSale.fromRaw(RawFlashSale raw, Dependency deps) {
    final activation = parseDate(raw.startDate);

    return FlashSale(
      id: hash(raw.typeName + activation.toIso8601String()),
      activation: activation,
      expiry: parseDate(raw.endDate),
      item: deps.langs.fetchValue(raw.typeName),
      shownInMarket: raw.showInMarket,
      isSupporterPack: raw.supporterPack,
      discount: raw.discount,
      premiumOverride: raw.premiumOverride,
      regularOverride: raw.regularOverride,
    );
  }

  final String item;

  final bool shownInMarket;

  final bool isSupporterPack;

  final num discount;

  final int premiumOverride;

  final int regularOverride;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
