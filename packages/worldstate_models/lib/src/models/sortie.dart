import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'sortie.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawSortie extends BaseContentObject with RawSortieMappable {
  RawSortie({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.boss,
    required this.variants,
    required this.missions,
  });

  static const fromMap = RawSortieMapper.fromMap;

  final String boss;
  final List<RawVariant>? variants;
  final List<RawVariant>? missions;

  Sortie toSortie([String locale = 'en']) => Sortie.fromRaw(this, locale);
}

@MappableClass()
class RawVariant with RawVariantMappable {
  RawVariant({required this.missionType, required this.modifierType, required this.node, required this.tileset});

  final String missionType;
  final String? modifierType;
  final String node;
  final String? tileset;

  Variant toVariant([String locale = 'en']) => Variant.fromRaw(this, locale);
}

@MappableClass()
class Sortie extends WorldstateObject with SortieMappable {
  Sortie({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.boss,
    required this.faction,
    required this.missions,
  });

  factory Sortie.fromRaw(RawSortie raw, [String locale = 'en']) {
    final sortieEnemy = sortieFaction(raw.boss, locale);
    final missions = raw.variants ?? raw.missions ?? <RawVariant>[];

    return Sortie(
      id: parseId(raw.id),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      boss: sortieEnemy.boss,
      faction: sortieEnemy.faction,
      missions: missions.map((v) => v.toVariant(locale)).toList(),
    );
  }

  final String boss;
  final String faction;
  final List<Variant> missions;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}

@MappableClass()
class Variant with VariantMappable {
  Variant({required this.type, required this.modifier, required this.node, required this.tileset});

  factory Variant.fromRaw(RawVariant raw, [String locale = 'en']) {
    return Variant(
      type: missionType(raw.missionType, locale),
      modifier: raw.modifierType != null ? sortieModifier(raw.modifierType!, locale) : null,
      node: solNodes(locale).fetchNode(raw.node).name,
      tileset: raw.tileset != null ? normalizeResourceName(raw.tileset!) : null,
    );
  }

  final String type;
  final SortieModifier? modifier;
  final String node;
  final String? tileset;
}
