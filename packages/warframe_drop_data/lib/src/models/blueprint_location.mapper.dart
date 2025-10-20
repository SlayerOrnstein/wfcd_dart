// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'blueprint_location.dart';

class BlueprintLocationMapper extends ClassMapperBase<BlueprintLocation> {
  BlueprintLocationMapper._();

  static BlueprintLocationMapper? _instance;
  static BlueprintLocationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlueprintLocationMapper._());
      BlueprintLocationEnemyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BlueprintLocation';

  static String _$id(BlueprintLocation v) => v.id;
  static const Field<BlueprintLocation, String> _f$id = Field('id', _$id);
  static String _$name(BlueprintLocation v) => v.name;
  static const Field<BlueprintLocation, String> _f$name = Field('name', _$name);
  static List<BlueprintLocationEnemy> _$enemies(BlueprintLocation v) =>
      v.enemies;
  static const Field<BlueprintLocation, List<BlueprintLocationEnemy>>
      _f$enemies = Field('enemies', _$enemies);

  @override
  final MappableFields<BlueprintLocation> fields = const {
    #id: _f$id,
    #name: _f$name,
    #enemies: _f$enemies,
  };

  static BlueprintLocation _instantiate(DecodingData data) {
    return BlueprintLocation(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        enemies: data.dec(_f$enemies));
  }

  @override
  final Function instantiate = _instantiate;

  static BlueprintLocation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlueprintLocation>(map);
  }

  static BlueprintLocation fromJson(String json) {
    return ensureInitialized().decodeJson<BlueprintLocation>(json);
  }
}

mixin BlueprintLocationMappable {
  String toJson() {
    return BlueprintLocationMapper.ensureInitialized()
        .encodeJson<BlueprintLocation>(this as BlueprintLocation);
  }

  Map<String, dynamic> toMap() {
    return BlueprintLocationMapper.ensureInitialized()
        .encodeMap<BlueprintLocation>(this as BlueprintLocation);
  }

  BlueprintLocationCopyWith<BlueprintLocation, BlueprintLocation,
          BlueprintLocation>
      get copyWith =>
          _BlueprintLocationCopyWithImpl<BlueprintLocation, BlueprintLocation>(
              this as BlueprintLocation, $identity, $identity);
  @override
  String toString() {
    return BlueprintLocationMapper.ensureInitialized()
        .stringifyValue(this as BlueprintLocation);
  }

  @override
  bool operator ==(Object other) {
    return BlueprintLocationMapper.ensureInitialized()
        .equalsValue(this as BlueprintLocation, other);
  }

  @override
  int get hashCode {
    return BlueprintLocationMapper.ensureInitialized()
        .hashValue(this as BlueprintLocation);
  }
}

extension BlueprintLocationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BlueprintLocation, $Out> {
  BlueprintLocationCopyWith<$R, BlueprintLocation, $Out>
      get $asBlueprintLocation => $base
          .as((v, t, t2) => _BlueprintLocationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BlueprintLocationCopyWith<$R, $In extends BlueprintLocation,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      BlueprintLocationEnemy,
      BlueprintLocationEnemyCopyWith<$R, BlueprintLocationEnemy,
          BlueprintLocationEnemy>> get enemies;
  $R call({String? id, String? name, List<BlueprintLocationEnemy>? enemies});
  BlueprintLocationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BlueprintLocationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BlueprintLocation, $Out>
    implements BlueprintLocationCopyWith<$R, BlueprintLocation, $Out> {
  _BlueprintLocationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlueprintLocation> $mapper =
      BlueprintLocationMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      BlueprintLocationEnemy,
      BlueprintLocationEnemyCopyWith<$R, BlueprintLocationEnemy,
          BlueprintLocationEnemy>> get enemies => ListCopyWith(
      $value.enemies, (v, t) => v.copyWith.$chain(t), (v) => call(enemies: v));
  @override
  $R call({String? id, String? name, List<BlueprintLocationEnemy>? enemies}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (enemies != null) #enemies: enemies
      }));
  @override
  BlueprintLocation $make(CopyWithData data) => BlueprintLocation(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      enemies: data.get(#enemies, or: $value.enemies));

  @override
  BlueprintLocationCopyWith<$R2, BlueprintLocation, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BlueprintLocationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BlueprintLocationEnemyMapper
    extends ClassMapperBase<BlueprintLocationEnemy> {
  BlueprintLocationEnemyMapper._();

  static BlueprintLocationEnemyMapper? _instance;
  static BlueprintLocationEnemyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlueprintLocationEnemyMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BlueprintLocationEnemy';

  static String _$id(BlueprintLocationEnemy v) => v.id;
  static const Field<BlueprintLocationEnemy, String> _f$id = Field('id', _$id);
  static String _$name(BlueprintLocationEnemy v) => v.name;
  static const Field<BlueprintLocationEnemy, String> _f$name =
      Field('name', _$name);
  static double _$dropChance(BlueprintLocationEnemy v) => v.dropChance;
  static const Field<BlueprintLocationEnemy, double> _f$dropChance =
      Field('dropChance', _$dropChance);
  static String? _$rarity(BlueprintLocationEnemy v) => v.rarity;
  static const Field<BlueprintLocationEnemy, String> _f$rarity =
      Field('rarity', _$rarity);
  static double? _$chance(BlueprintLocationEnemy v) => v.chance;
  static const Field<BlueprintLocationEnemy, double> _f$chance =
      Field('chance', _$chance);

  @override
  final MappableFields<BlueprintLocationEnemy> fields = const {
    #id: _f$id,
    #name: _f$name,
    #dropChance: _f$dropChance,
    #rarity: _f$rarity,
    #chance: _f$chance,
  };

  static BlueprintLocationEnemy _instantiate(DecodingData data) {
    return BlueprintLocationEnemy(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        dropChance: data.dec(_f$dropChance),
        rarity: data.dec(_f$rarity),
        chance: data.dec(_f$chance));
  }

  @override
  final Function instantiate = _instantiate;

  static BlueprintLocationEnemy fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlueprintLocationEnemy>(map);
  }

  static BlueprintLocationEnemy fromJson(String json) {
    return ensureInitialized().decodeJson<BlueprintLocationEnemy>(json);
  }
}

mixin BlueprintLocationEnemyMappable {
  String toJson() {
    return BlueprintLocationEnemyMapper.ensureInitialized()
        .encodeJson<BlueprintLocationEnemy>(this as BlueprintLocationEnemy);
  }

  Map<String, dynamic> toMap() {
    return BlueprintLocationEnemyMapper.ensureInitialized()
        .encodeMap<BlueprintLocationEnemy>(this as BlueprintLocationEnemy);
  }

  BlueprintLocationEnemyCopyWith<BlueprintLocationEnemy, BlueprintLocationEnemy,
          BlueprintLocationEnemy>
      get copyWith => _BlueprintLocationEnemyCopyWithImpl<
              BlueprintLocationEnemy, BlueprintLocationEnemy>(
          this as BlueprintLocationEnemy, $identity, $identity);
  @override
  String toString() {
    return BlueprintLocationEnemyMapper.ensureInitialized()
        .stringifyValue(this as BlueprintLocationEnemy);
  }

  @override
  bool operator ==(Object other) {
    return BlueprintLocationEnemyMapper.ensureInitialized()
        .equalsValue(this as BlueprintLocationEnemy, other);
  }

  @override
  int get hashCode {
    return BlueprintLocationEnemyMapper.ensureInitialized()
        .hashValue(this as BlueprintLocationEnemy);
  }
}

extension BlueprintLocationEnemyValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BlueprintLocationEnemy, $Out> {
  BlueprintLocationEnemyCopyWith<$R, BlueprintLocationEnemy, $Out>
      get $asBlueprintLocationEnemy => $base.as((v, t, t2) =>
          _BlueprintLocationEnemyCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BlueprintLocationEnemyCopyWith<
    $R,
    $In extends BlueprintLocationEnemy,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? name,
      double? dropChance,
      String? rarity,
      double? chance});
  BlueprintLocationEnemyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BlueprintLocationEnemyCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BlueprintLocationEnemy, $Out>
    implements
        BlueprintLocationEnemyCopyWith<$R, BlueprintLocationEnemy, $Out> {
  _BlueprintLocationEnemyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlueprintLocationEnemy> $mapper =
      BlueprintLocationEnemyMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? name,
          double? dropChance,
          Object? rarity = $none,
          Object? chance = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (dropChance != null) #dropChance: dropChance,
        if (rarity != $none) #rarity: rarity,
        if (chance != $none) #chance: chance
      }));
  @override
  BlueprintLocationEnemy $make(CopyWithData data) => BlueprintLocationEnemy(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      dropChance: data.get(#dropChance, or: $value.dropChance),
      rarity: data.get(#rarity, or: $value.rarity),
      chance: data.get(#chance, or: $value.chance));

  @override
  BlueprintLocationEnemyCopyWith<$R2, BlueprintLocationEnemy, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _BlueprintLocationEnemyCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
