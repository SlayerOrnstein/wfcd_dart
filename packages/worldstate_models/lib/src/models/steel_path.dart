import 'package:dart_mappable/dart_mappable.dart';
import 'package:time/time.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'steel_path.mapper.dart';

/// Start of Steel Path cycle calculations
final DateTime start = DateTime.parse('2020-11-16T00:00:00.000Z');

@MappableClass()
class SteelPath extends WorldstateObject with SteelPathMappable {
  SteelPath({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.currentReward,
    required this.rotation,
    required this.evergreens,
  });

  factory SteelPath.init([String locale = 'en']) {
    const eightWeeks = DateTime.daysPerWeek * 8;
    const sevenDays = Duration.hoursPerDay * 7;

    final now = DateTime.timestamp();
    final sSinceStart = now.difference(start).inSeconds;
    final ind = ((sSinceStart % eightWeeks) / sevenDays).floor();

    final offerings = steelPathOfferings(locale);

    return SteelPath(
      id: hash('SteelPath$ind'),
      activation: now.firstDayOfWeek,
      expiry: now.lastDayOfWeek,
      currentReward: offerings.rotation[ind].name,
      rotation: offerings.rotation,
      evergreens: offerings.evergreen,
    );
  }

  final String currentReward;
  final List<SteelPathItem> rotation;
  final List<SteelPathItem> evergreens;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
