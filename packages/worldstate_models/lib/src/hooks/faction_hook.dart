import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

/// Utility MappingHook for [Faction]
class FactionHook extends MappingHook {
  ///
  const FactionHook();

  @override
  Object? beforeDecode(Object? value) {
    if (value == null) return Faction.unknown;
    return Faction.byInternalName(value as String);
  }

  @override
  Object? beforeEncode(Object? value) {
    return (value as Faction? ?? Faction.unknown).internalName;
  }
}
