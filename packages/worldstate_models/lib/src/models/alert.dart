import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/models/mission.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'alert.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawAlert extends BaseContentObject with RawAlertMappable {
  RawAlert({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.missionInfo,
    required this.tag,
    required this.forceUnlock,
  });

  static const fromMap = RawAlertMapper.fromMap;

  final RawMission missionInfo;
  final String tag;
  final bool forceUnlock;

  Alert toAlert(Dependency deps) => Alert.fromRaw(this, deps);
}

@MappableClass()
class Alert extends WorldstateObject with AlertMappable {
  Alert({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.mission,
    required this.tag,
    required this.forceUnlocked,
  });

  factory Alert.fromRaw(RawAlert raw, Dependency deps) {
    return Alert(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      mission: raw.missionInfo.toMission(deps),
      tag: raw.tag,
      forceUnlocked: raw.forceUnlock,
    );
  }

  /// Mission info
  final Mission mission;

  /// Alert tag
  final String tag;

  /// Whether the mission node is made unlocked for the player or not
  final bool forceUnlocked;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
