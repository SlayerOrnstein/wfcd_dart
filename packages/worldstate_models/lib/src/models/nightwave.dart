import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'nightwave.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawSeasonInfo extends BaseContentObject with RawSeasonInfoMappable {
  RawSeasonInfo({
    required super.activation,
    required super.expiry,
    required this.affiliationTag,
    required this.season,
    required this.phase,
    required this.activeChallenges,
  }) : super(id: {});

  final String affiliationTag;
  final int season;
  final int phase;
  final List<RawActiveChallenge> activeChallenges;
}

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawActiveChallenge extends BaseContentObject with RawActiveChallengeMappable {
  RawActiveChallenge({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.challenge,
    this.daily = false,
  });

  final String challenge;
  final bool daily;
}

@MappableClass()
class Nightwave extends WorldstateObject with NightwaveMappable {
  Nightwave({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.tag,
    required this.challenges,
  });

  factory Nightwave.fromRaw(RawSeasonInfo raw, String locale) {
    return Nightwave(
      id: hash(raw.affiliationTag + raw.activation.toString() + raw.expiry.toString()),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      tag: languages(locale).fetchValue(raw.affiliationTag),
      challenges: raw.activeChallenges.map((challenge) => NightwaveChallenge.fromRaw(challenge, locale)).toList(),
    );
  }

  final String tag;
  final List<NightwaveChallenge> challenges;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}

@MappableClass()
class NightwaveChallenge extends WorldstateObject with NightwaveChallengeMappable {
  NightwaveChallenge({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.title,
    required this.description,
    this.isDaily = false,
    this.isElite = false,
  });

  factory NightwaveChallenge.fromRaw(RawActiveChallenge raw, String locale) {
    final langs = languages(locale);

    return NightwaveChallenge(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      title: langs.fetchValue(raw.challenge),
      description: langs.fetchDescription(raw.challenge),
      isDaily: raw.daily,
      isElite: raw.challenge.contains('Hard'),
    );
  }

  final String title;
  final String description;
  final bool isDaily;
  final bool isElite;

  @MappableField()
  int get standing {
    if (isElite) return 7_000;
    return isDaily ? 1_000 : 4_500;
  }

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
