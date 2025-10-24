// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'blueprint_part.dart';

class BlueprintPartMapper extends ClassMapperBase<BlueprintPart> {
  BlueprintPartMapper._();

  static BlueprintPartMapper? _instance;
  static BlueprintPartMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlueprintPartMapper._());
      BlueprintSourceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BlueprintPart';

  static String _$id(BlueprintPart v) => v.id;
  static const Field<BlueprintPart, String> _f$id = Field('id', _$id);
  static String _$name(BlueprintPart v) => v.name;
  static const Field<BlueprintPart, String> _f$name = Field('name', _$name);
  static List<BlueprintSource> _$enemies(BlueprintPart v) => v.enemies;
  static const Field<BlueprintPart, List<BlueprintSource>> _f$enemies = Field(
    'enemies',
    _$enemies,
  );

  @override
  final MappableFields<BlueprintPart> fields = const {
    #id: _f$id,
    #name: _f$name,
    #enemies: _f$enemies,
  };
  @override
  final bool ignoreNull = true;

  static BlueprintPart _instantiate(DecodingData data) {
    return BlueprintPart(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      enemies: data.dec(_f$enemies),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BlueprintPart fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlueprintPart>(map);
  }

  static BlueprintPart fromJson(String json) {
    return ensureInitialized().decodeJson<BlueprintPart>(json);
  }
}

mixin BlueprintPartMappable {
  String toJson() {
    return BlueprintPartMapper.ensureInitialized().encodeJson<BlueprintPart>(
      this as BlueprintPart,
    );
  }

  Map<String, dynamic> toMap() {
    return BlueprintPartMapper.ensureInitialized().encodeMap<BlueprintPart>(
      this as BlueprintPart,
    );
  }

  BlueprintPartCopyWith<BlueprintPart, BlueprintPart, BlueprintPart>
  get copyWith => _BlueprintPartCopyWithImpl<BlueprintPart, BlueprintPart>(
    this as BlueprintPart,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return BlueprintPartMapper.ensureInitialized().stringifyValue(
      this as BlueprintPart,
    );
  }

  @override
  bool operator ==(Object other) {
    return BlueprintPartMapper.ensureInitialized().equalsValue(
      this as BlueprintPart,
      other,
    );
  }

  @override
  int get hashCode {
    return BlueprintPartMapper.ensureInitialized().hashValue(
      this as BlueprintPart,
    );
  }
}

extension BlueprintPartValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BlueprintPart, $Out> {
  BlueprintPartCopyWith<$R, BlueprintPart, $Out> get $asBlueprintPart =>
      $base.as((v, t, t2) => _BlueprintPartCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BlueprintPartCopyWith<$R, $In extends BlueprintPart, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    BlueprintSource,
    BlueprintSourceCopyWith<$R, BlueprintSource, BlueprintSource>
  >
  get enemies;
  $R call({String? id, String? name, List<BlueprintSource>? enemies});
  BlueprintPartCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BlueprintPartCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BlueprintPart, $Out>
    implements BlueprintPartCopyWith<$R, BlueprintPart, $Out> {
  _BlueprintPartCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlueprintPart> $mapper =
      BlueprintPartMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    BlueprintSource,
    BlueprintSourceCopyWith<$R, BlueprintSource, BlueprintSource>
  >
  get enemies => ListCopyWith(
    $value.enemies,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(enemies: v),
  );
  @override
  $R call({String? id, String? name, List<BlueprintSource>? enemies}) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (enemies != null) #enemies: enemies,
    }),
  );
  @override
  BlueprintPart $make(CopyWithData data) => BlueprintPart(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    enemies: data.get(#enemies, or: $value.enemies),
  );

  @override
  BlueprintPartCopyWith<$R2, BlueprintPart, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BlueprintPartCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BlueprintSourceMapper extends ClassMapperBase<BlueprintSource> {
  BlueprintSourceMapper._();

  static BlueprintSourceMapper? _instance;
  static BlueprintSourceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlueprintSourceMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BlueprintSource';

  static String _$id(BlueprintSource v) => v.id;
  static const Field<BlueprintSource, String> _f$id = Field('id', _$id);
  static String _$name(BlueprintSource v) => v.name;
  static const Field<BlueprintSource, String> _f$name = Field('name', _$name);
  static double _$dropChance(BlueprintSource v) => v.dropChance;
  static const Field<BlueprintSource, double> _f$dropChance = Field(
    'dropChance',
    _$dropChance,
  );
  static String? _$rarity(BlueprintSource v) => v.rarity;
  static const Field<BlueprintSource, String> _f$rarity = Field(
    'rarity',
    _$rarity,
  );
  static double? _$chance(BlueprintSource v) => v.chance;
  static const Field<BlueprintSource, double> _f$chance = Field(
    'chance',
    _$chance,
  );

  @override
  final MappableFields<BlueprintSource> fields = const {
    #id: _f$id,
    #name: _f$name,
    #dropChance: _f$dropChance,
    #rarity: _f$rarity,
    #chance: _f$chance,
  };
  @override
  final bool ignoreNull = true;

  static BlueprintSource _instantiate(DecodingData data) {
    return BlueprintSource(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      dropChance: data.dec(_f$dropChance),
      rarity: data.dec(_f$rarity),
      chance: data.dec(_f$chance),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BlueprintSource fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlueprintSource>(map);
  }

  static BlueprintSource fromJson(String json) {
    return ensureInitialized().decodeJson<BlueprintSource>(json);
  }
}

mixin BlueprintSourceMappable {
  String toJson() {
    return BlueprintSourceMapper.ensureInitialized()
        .encodeJson<BlueprintSource>(this as BlueprintSource);
  }

  Map<String, dynamic> toMap() {
    return BlueprintSourceMapper.ensureInitialized().encodeMap<BlueprintSource>(
      this as BlueprintSource,
    );
  }

  BlueprintSourceCopyWith<BlueprintSource, BlueprintSource, BlueprintSource>
  get copyWith =>
      _BlueprintSourceCopyWithImpl<BlueprintSource, BlueprintSource>(
        this as BlueprintSource,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return BlueprintSourceMapper.ensureInitialized().stringifyValue(
      this as BlueprintSource,
    );
  }

  @override
  bool operator ==(Object other) {
    return BlueprintSourceMapper.ensureInitialized().equalsValue(
      this as BlueprintSource,
      other,
    );
  }

  @override
  int get hashCode {
    return BlueprintSourceMapper.ensureInitialized().hashValue(
      this as BlueprintSource,
    );
  }
}

extension BlueprintSourceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BlueprintSource, $Out> {
  BlueprintSourceCopyWith<$R, BlueprintSource, $Out> get $asBlueprintSource =>
      $base.as((v, t, t2) => _BlueprintSourceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BlueprintSourceCopyWith<$R, $In extends BlueprintSource, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? name,
    double? dropChance,
    String? rarity,
    double? chance,
  });
  BlueprintSourceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _BlueprintSourceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BlueprintSource, $Out>
    implements BlueprintSourceCopyWith<$R, BlueprintSource, $Out> {
  _BlueprintSourceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlueprintSource> $mapper =
      BlueprintSourceMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? name,
    double? dropChance,
    Object? rarity = $none,
    Object? chance = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (dropChance != null) #dropChance: dropChance,
      if (rarity != $none) #rarity: rarity,
      if (chance != $none) #chance: chance,
    }),
  );
  @override
  BlueprintSource $make(CopyWithData data) => BlueprintSource(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    dropChance: data.get(#dropChance, or: $value.dropChance),
    rarity: data.get(#rarity, or: $value.rarity),
    chance: data.get(#chance, or: $value.chance),
  );

  @override
  BlueprintSourceCopyWith<$R2, BlueprintSource, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BlueprintSourceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

