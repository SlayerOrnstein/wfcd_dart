import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

part 'polarity.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawPolarity with RawPolarityMappable {
  RawPolarity({required this.value, required this.slot});

  final String value;
  final int slot;

  Polarity toPolarity() => Polarity.fromRaw(this);
}

@MappableClass()
class Polarity with PolarityMappable {
  Polarity({required this.polarity, required this.slot});

  factory Polarity.fromRaw(RawPolarity raw) {
    return Polarity(polarity: Polarities.translatePolarity(raw.value), slot: raw.slot);
  }

  final String polarity;
  final int slot;
}
