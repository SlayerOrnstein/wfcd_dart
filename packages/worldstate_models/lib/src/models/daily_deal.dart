import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'daily_deal.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawDailyDeal extends BaseContentObject with RawDailyDealMappable {
  RawDailyDeal({
    required super.activation,
    required super.expiry,
    required this.storeItem,
    required this.discount,
    required this.originalPrice,
    required this.salePrice,
    required this.amountTotal,
    required this.amountSold,
  }) : super(id: {});

  static const fromMap = RawDailyDealMapper.fromMap;

  final String storeItem;
  final int discount;
  final int originalPrice;
  final int salePrice;
  final int amountTotal;
  final int amountSold;

  DailyDeal toDeal([String locale = 'en']) => DailyDeal.fromRaw(this, locale);
}

@MappableClass()
class DailyDeal extends WorldstateObject with DailyDealMappable {
  DailyDeal({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.item,
    required this.discount,
    required this.price,
    required this.salePrice,
    required this.total,
    required this.sold,
  });

  factory DailyDeal.fromRaw(RawDailyDeal raw, String locale) {
    final activation = parseDate(raw.activation);

    return DailyDeal(
      id: hash(raw.storeItem + activation.toIso8601String()),
      activation: activation,
      expiry: parseDate(raw.expiry),
      item: languages(locale).fetchValue(raw.storeItem),
      discount: raw.discount,
      price: raw.originalPrice,
      salePrice: raw.salePrice,
      total: raw.amountTotal,
      sold: raw.amountSold,
    );
  }

  final String item;
  final int discount;
  final int price;
  final int salePrice;
  final int total;
  final int sold;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;
}
