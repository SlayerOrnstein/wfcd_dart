import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart' as data;
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'archimedea.mapper.dart';

/// Mission type including well... self explanatory
@MappableRecord()
typedef RawConquestDifficulty = ({String type, String deviation, List<String> risks});

/// Read the name
typedef PersonalModifiers = ({String title, String description});

/// Readable version of [RawConquest.variables]
typedef ArchimedeaRisk = ({String title, String description, bool isElite});

/// Type of the current [Archimedea] instance
@MappableEnum()
enum ArchimedeaType {
  /// Deep Archimedea
  deep(),

  /// Temporal Archimedea
  temporal(),

  /// New or unknown yet
  unknonw;

  /// Get a type based on its ID
  static ArchimedeaType fromId(String id) {
    return switch (id) {
      'CT_LAB' => ArchimedeaType.deep,
      'CT_HEX' => ArchimedeaType.temporal,
      _ => ArchimedeaType.unknonw,
    };
  }
}

/// {@template raw_conquest}
/// Data class to hold the raw input for [Archimedea]
/// {@endtemplate}
@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawConquest extends BaseContentObject with RawConquestMappable {
  /// {@macro raw_conquest}
  RawConquest({
    required super.activation,
    required super.expiry,
    required this.type,
    required this.missions,
    required this.variables,
  }) : super(id: {});

  /// {macro raw_conquest}
  factory RawConquest.fromMap(Map<String, dynamic> map) => RawConquestMapper.fromMap(map);

  /// Raw sttring for conquest type
  final String type;

  /// Missions in this instance including risk and deviations
  final List<RawConquestMission> missions;

  /// Personal modifiers internal names
  final List<String> variables;

  /// Easy helper to go from raw to [Archimedea]
  Archimedea toArchimedea(Dependency deps) => Archimedea.fromRaw(this, deps);
}

/// {@template raw_conquest_mission}
/// An instance of a raw mission for [RawConquest]
/// {@endtemplate}
@MappableClass()
class RawConquestMission with RawConquestMissionMappable {
  /// {@macro raw_conquest_mission}
  RawConquestMission({required this.faction, required this.missionType, required this.difficulties});

  /// Enemy faction
  final String faction;

  /// Mission type
  final String missionType;

  /// diviations
  final List<RawConquestDifficulty> difficulties;
}

@MappableClass()
class Archimedea extends WorldstateObject with ArchimedeaMappable {
  Archimedea({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.type,
    required this.missions,
    required this.personalModifiers,
  });

  factory Archimedea.fromRaw(RawConquest raw, Dependency deps) {
    final id = hash(raw.type + raw.activation.toString());

    return Archimedea(
      id: id,
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      type: ArchimedeaType.fromId(raw.type),
      missions: raw.missions.map((m) => ArchimedeaMission.fromRaw(m, deps)).toList(),
      personalModifiers: raw.variables
          .map((r) => (title: deps.langs.fetchValue(r), description: deps.langs.fetchDescription(r)))
          .toList(),
    );
  }

  final ArchimedeaType type;
  final List<ArchimedeaMission> missions;
  final List<PersonalModifiers> personalModifiers;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}

@MappableClass()
class ArchimedeaMission with ArchimedeaMissionMappable {
  ArchimedeaMission({required this.faction, required this.missionType, required this.deviation, required this.risks});

  factory ArchimedeaMission.fromRaw(RawConquestMission raw, Dependency deps) {
    final deviation = raw.difficulties[0].deviation;

    return ArchimedeaMission(
      faction: data.faction(raw.faction),
      missionType: data.missionType(raw.missionType),
      deviation: (title: deps.langs.fetchValue(deviation), description: deps.langs.fetchDescription(deviation)),
      risks: _dedupRisks(raw.difficulties, deps),
    );
  }

  /// Enemy faction
  final String faction;

  /// Mission type
  final String missionType;

  /// Mission deviation
  final ({String title, String description}) deviation;

  /// Rist variables for both normal and elite
  final List<ArchimedeaRisk> risks;

  static List<ArchimedeaRisk> _dedupRisks(List<RawConquestDifficulty> raw, Dependency deps) {
    final dedup = <String, ArchimedeaRisk>{};
    for (final diff in raw) {
      for (final risk in diff.risks) {
        if (dedup.containsKey(risk)) continue;

        dedup[risk] = (
          title: deps.langs.fetchValue(risk),
          description: deps.langs.fetchDescription(risk),
          isElite: diff.type == 'CD_HARD',
        );
      }
    }

    return dedup.values.toList(growable: false);
  }
}
