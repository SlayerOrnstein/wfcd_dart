import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'syndicate.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawSyndicate extends BaseContentObject with RawSyndicateMappable {
  RawSyndicate({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.tag,
    required this.nodes,
    required this.jobs,
  });

  static const fromMap = RawSyndicateMapper.fromMap;

  final String tag;
  final List<String> nodes;
  final List<RawJob>? jobs;

  SyndicateMission toSyndicate([String locale = 'en']) => SyndicateMission.fromRaw(this, locale);
}

@MappableClass()
class RawJob with RawJobMappable {
  RawJob({
    required this.jobType,
    required this.rewards,
    required this.masteryReq,
    required this.minEnemyLevel,
    required this.maxEnemyLevel,
    required this.endless,
    required this.xpAmounts,
    required this.isVault,
  });

  static const fromMap = RawJobMapper.fromMap;

  final String? jobType;
  final String rewards;
  final int masteryReq;
  final int minEnemyLevel;
  final int maxEnemyLevel;
  final bool? endless;
  final List<int> xpAmounts;
  final bool? isVault;

  SyndicateBounty toBounty([String locale = 'en']) => SyndicateBounty.fromRaw(this, locale);
}

@MappableClass()
class SyndicateMission extends WorldstateObject with SyndicateMissionMappable {
  SyndicateMission({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.name,
    required this.nodes,
    required this.bounties,
  });

  factory SyndicateMission.fromRaw(RawSyndicate raw, [String locale = 'en']) {
    final solNodeLangs = solNodes(locale);
    final nodes = raw.nodes.map((n) => solNodeLangs.fetchNode(n).name).toList();

    return SyndicateMission(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      name: syndicate(raw.tag),
      nodes: nodes,
      bounties: raw.jobs?.map((j) => j.toBounty(locale)).toList(),
    );
  }

  final String name;
  final List<String>? nodes;
  final List<SyndicateBounty>? bounties;
}

@MappableClass()
class SyndicateBounty with SyndicateBountyMappable {
  SyndicateBounty({
    required this.type,
    required this.rewards,
    required this.masteryRequirment,
    required this.minLevel,
    required this.maxLevel,
    required this.isEndless,
    required this.standing,
    required this.isVault,
  });

  factory SyndicateBounty.fromRaw(RawJob raw, [String locale = 'en']) {
    return SyndicateBounty(
      type: raw.jobType != null ? languages(locale).fetchValue(raw.jobType!) : null,
      rewards: raw.rewards, // TODO(SlayerOrnstein): need a way to get reward pool
      masteryRequirment: raw.masteryReq,
      minLevel: raw.minEnemyLevel,
      maxLevel: raw.maxEnemyLevel,
      isEndless: raw.endless ?? false ? raw.endless : null,
      standing: raw.xpAmounts.fold(0, (p, n) => p + n),
      isVault: raw.isVault ?? false ? raw.isVault : null,
    );
  }

  final String? type;
  final String rewards;
  final int masteryRequirment;
  final int minLevel;
  final int maxLevel;
  final bool? isEndless;
  final int standing;
  final bool? isVault;
}
