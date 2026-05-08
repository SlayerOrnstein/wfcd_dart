import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_drop_data/warframe_drop_data.dart';

part 'relic.mapper.dart';

/// Relic types
@MappableEnum(caseStyle: CaseStyle.pascalCase)
enum RelicTypes {
  /// Lith
  lith,

  /// Meso
  meso,

  /// Neo
  neo,

  /// Axi
  axi,

  ///Requiem
  requiem,

  /// Vanguard
  vanguard,

  /// Used as an error type during parsing or not yet known
  unknown,
}

/// Relic refinement levels
///
/// More info:
/// https://wiki.warframe.com/w/Void_Relic#Refinement
@MappableEnum(caseStyle: CaseStyle.pascalCase)
enum RelicStates {
  /// Intact
  intact,

  /// Exceptional
  exceptional,

  /// Flawless
  flawless,

  /// Radiant
  radiant,

  /// Used as an error type during parsing or not yet known
  unknown,
}

/// {@template relic}
/// A relic object
///
/// More info:
/// https://wiki.warframe.com/w/Void_Relic
/// {@endtemplate}
@MappableClass()
class Relic with RelicMappable {
  /// Constructor
  Relic({required this.id, required this.tier, required this.name, required this.state, required this.rewards});

  /// ID hash for this specfic relic
  final String id;

  /// The name of the reward pool i.e A11
  final String name;

  /// Relic fissure tier
  ///
  /// Note:
  /// [RelicTypes.vanguard] are rereleased Axi relics but internally are a different type
  final RelicTypes tier;

  /// Relic refinement
  final RelicStates state;

  /// Relic reward pool
  final List<ItemDrop> rewards;
}
