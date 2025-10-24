import 'package:collection/collection.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart' as data;
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'archimedea.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawConquest extends BaseContentObject with RawConquestMappable {
  RawConquest({
    required super.activation,
    required super.expiry,
    required this.type,
    required this.missions,
    required this.variables,
  }) : super(id: {});

  final String type;
  final List<RawConquestMission> missions;
  final List<String> variables;
}

@MappableRecord()
typedef RawConquestDifficulty = ({String type, String deviation, List<String> risks});

@MappableClass()
class RawConquestMission with RawConquestMissionMappable {
  RawConquestMission({required this.faction, required this.missionType, required this.difficulties});

  final String faction;
  final String missionType;
  final List<RawConquestDifficulty> difficulties;
}

typedef PersonalModifiers = ({String title, String description});

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
      type: switch (raw.type) {
        'CT_HEX' => 'Temporal',
        'CT_LAB' => 'Deep',
        _ => raw.type,
      },
      missions: raw.missions.map((m) => ArchimedeaMission.fromRaw(m, deps)).toList(),
      personalModifiers: raw.variables
          .map((r) => (title: deps.langs.fetchValue(r), description: deps.langs.fetchDescription(r)))
          .toList(),
    );
  }

  final String type;
  final List<ArchimedeaMission> missions;
  final List<PersonalModifiers> personalModifiers;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}

typedef ArchimedeaRisk = ({String title, String description, bool isElite});

@MappableClass()
class ArchimedeaMission with ArchimedeaMissionMappable {
  ArchimedeaMission({required this.faction, required this.missionType, required this.deviation, required this.risks});

  factory ArchimedeaMission.fromRaw(RawConquestMission raw, Dependency deps) {
    final deviation = raw.difficulties[0].deviation;

    return ArchimedeaMission(
      faction: data.faction(raw.faction),
      missionType: data.missionType(raw.missionType),
      deviation: (title: deps.langs.fetchValue(deviation), description: deps.langs.fetchDescription(deviation)),
      risks: raw.difficulties
          .map(
            (d) => d.risks.map(
              (r) => (
                title: deps.langs.fetchValue(r),
                description: deps.langs.fetchDescription(r),
                isElite: d.type == 'CD_HARD',
              ),
            ),
          )
          .flattenedToList,
    );
  }

  final String faction;
  final String missionType;
  final ({String title, String description}) deviation;
  final List<ArchimedeaRisk> risks;
}
