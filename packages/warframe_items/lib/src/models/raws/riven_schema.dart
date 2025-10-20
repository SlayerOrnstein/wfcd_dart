import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_items/src/models/raws/schema.dart';

part 'riven_schema.mapper.dart';

@MappableClass()
class RivenSchema extends Schema with RivenSchemaMappable {
  RivenSchema({
    required super.uniqueName,
    required super.name,
    required super.codexSecret,
    required super.excludeFromCodex,
    required this.polarity,
    required this.rarity,
    required this.baseDrain,
    required this.fusionLimit,
    required this.upgradeEntries,
    required this.availableChallenges,
  }) : super(description: '');

  factory RivenSchema.fromJson(String json) => RivenSchemaMapper.fromJson(json);

  factory RivenSchema.fromMap(Map<String, dynamic> map) => RivenSchemaMapper.fromMap(map);

  final String polarity;
  final String rarity;
  final int baseDrain;
  final int fusionLimit;
  final List<UpgradeEntry> upgradeEntries;
  final List<AvailableChallenge> availableChallenges;
}

@MappableClass()
class UpgradeEntry with UpgradeEntryMappable {
  UpgradeEntry({
    required this.tag,
    required this.prefixTag,
    required this.suffixTag,
    required this.upgradeValues,
  });

  factory UpgradeEntry.fromJson(String json) => UpgradeEntryMapper.fromJson(json);

  factory UpgradeEntry.fromMap(Map<String, dynamic> map) => UpgradeEntryMapper.fromMap(map);

  final String tag;
  final String prefixTag;
  final String suffixTag;
  final List<UpgradeValue> upgradeValues;
}

@MappableClass()
class UpgradeValue with UpgradeValueMappable {
  UpgradeValue({required this.value, required this.locTag});

  factory UpgradeValue.fromJson(String json) => UpgradeValueMapper.fromJson(json);

  factory UpgradeValue.fromMap(Map<String, dynamic> map) => UpgradeValueMapper.fromMap(map);

  final double value;
  final String locTag;
}

@MappableClass()
class AvailableChallenge with AvailableChallengeMappable {
  AvailableChallenge({
    required this.fullName,
    required this.description,
    required this.complications,
  });

  factory AvailableChallenge.fromJson(String json) => AvailableChallengeMapper.fromJson(json);

  factory AvailableChallenge.fromMap(Map<String, dynamic> map) => AvailableChallengeMapper.fromMap(map);

  final String fullName;
  final String description;
  final List<Complication> complications;
}

@MappableClass()
class Complication with ComplicationMappable {
  Complication({
    required this.fullName,
    required this.description,
    required this.overrideTag,
  });

  factory Complication.fromJson(String json) => ComplicationMapper.fromJson(json);

  factory Complication.fromMap(Map<String, dynamic> map) => ComplicationMapper.fromMap(map);

  final String fullName;
  final String description;
  final String overrideTag;
}
