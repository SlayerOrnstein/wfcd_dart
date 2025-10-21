import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'global_upgrade.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawGlobalUpgrade extends BaseContentObject with RawGlobalUpgradeMappable {
  RawGlobalUpgrade({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.upgradeType,
    required this.opertationType,
    required this.value,
    required this.localizeTag,
    required this.localizeDescTag,
  });

  static const fromMap = RawGlobalUpgradeMapper.fromMap;

  final String upgradeType;
  final String opertationType;
  final int value;
  final String localizeTag;
  final String localizeDescTag;

  GlobalUpgrade toGlobalUpgrade([String locale = 'en']) => GlobalUpgrade.fromRaw(this, locale);
}

@MappableClass()
class GlobalUpgrade extends WorldstateObject with GlobalUpgradeMappable {
  GlobalUpgrade({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.upgrade,
    required this.operation,
    required this.symbol,
    required this.value,
    required this.isExpired,
    required this.description,
  });

  factory GlobalUpgrade.fromRaw(RawGlobalUpgrade raw, [String locale = 'en']) {
    final operation = operationType(raw.opertationType, locale);
    final upgrade = upgradeType(raw.upgradeType, locale);
    final desc = '$upgrade ${operation.value} ${raw.value}${operation.symbol}';

    return GlobalUpgrade(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      upgrade: upgradeType(raw.upgradeType, locale),
      operation: operation.value,
      symbol: operation.symbol,
      value: raw.value,
      isExpired: DateTime.timestamp().isAfter(parseDate(raw.expiry)),
      description: desc,
    );
  }

  final String upgrade;
  final String operation;
  final String symbol;
  final int value;
  final bool isExpired;
  final String description;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
