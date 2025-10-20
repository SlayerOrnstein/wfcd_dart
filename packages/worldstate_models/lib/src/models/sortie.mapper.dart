// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sortie.dart';

class RawSortieMapper extends ClassMapperBase<RawSortie> {
  RawSortieMapper._();

  static RawSortieMapper? _instance;
  static RawSortieMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawSortieMapper._());
      RawVariantMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawSortie';

  static Map<String, dynamic> _$id(RawSortie v) => v.id;
  static const Field<RawSortie, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static Map<String, dynamic>? _$activation(RawSortie v) => v.activation;
  static const Field<RawSortie, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawSortie v) => v.expiry;
  static const Field<RawSortie, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String _$boss(RawSortie v) => v.boss;
  static const Field<RawSortie, String> _f$boss = Field(
    'boss',
    _$boss,
    key: r'Boss',
  );
  static List<RawVariant>? _$variants(RawSortie v) => v.variants;
  static const Field<RawSortie, List<RawVariant>> _f$variants = Field(
    'variants',
    _$variants,
    key: r'Variants',
  );
  static List<RawVariant>? _$missions(RawSortie v) => v.missions;
  static const Field<RawSortie, List<RawVariant>> _f$missions = Field(
    'missions',
    _$missions,
    key: r'Missions',
  );

  @override
  final MappableFields<RawSortie> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #boss: _f$boss,
    #variants: _f$variants,
    #missions: _f$missions,
  };
  @override
  final bool ignoreNull = true;

  static RawSortie _instantiate(DecodingData data) {
    return RawSortie(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      boss: data.dec(_f$boss),
      variants: data.dec(_f$variants),
      missions: data.dec(_f$missions),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawSortie fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawSortie>(map);
  }

  static RawSortie fromJson(String json) {
    return ensureInitialized().decodeJson<RawSortie>(json);
  }
}

mixin RawSortieMappable {
  String toJson() {
    return RawSortieMapper.ensureInitialized().encodeJson<RawSortie>(
      this as RawSortie,
    );
  }

  Map<String, dynamic> toMap() {
    return RawSortieMapper.ensureInitialized().encodeMap<RawSortie>(
      this as RawSortie,
    );
  }

  RawSortieCopyWith<RawSortie, RawSortie, RawSortie> get copyWith =>
      _RawSortieCopyWithImpl<RawSortie, RawSortie>(
        this as RawSortie,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawSortieMapper.ensureInitialized().stringifyValue(
      this as RawSortie,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawSortieMapper.ensureInitialized().equalsValue(
      this as RawSortie,
      other,
    );
  }

  @override
  int get hashCode {
    return RawSortieMapper.ensureInitialized().hashValue(this as RawSortie);
  }
}

extension RawSortieValueCopy<$R, $Out> on ObjectCopyWith<$R, RawSortie, $Out> {
  RawSortieCopyWith<$R, RawSortie, $Out> get $asRawSortie =>
      $base.as((v, t, t2) => _RawSortieCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawSortieCopyWith<$R, $In extends RawSortie, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  ListCopyWith<$R, RawVariant, RawVariantCopyWith<$R, RawVariant, RawVariant>>?
  get variants;
  ListCopyWith<$R, RawVariant, RawVariantCopyWith<$R, RawVariant, RawVariant>>?
  get missions;
  $R call({
    Map<String, dynamic>? id,
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? boss,
    List<RawVariant>? variants,
    List<RawVariant>? missions,
  });
  RawSortieCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawSortieCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawSortie, $Out>
    implements RawSortieCopyWith<$R, RawSortie, $Out> {
  _RawSortieCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawSortie> $mapper =
      RawSortieMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get id => MapCopyWith(
    $value.id,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(id: v),
  );
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation => $value.activation != null
      ? MapCopyWith(
          $value.activation!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(activation: v),
        )
      : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry => $value.expiry != null
      ? MapCopyWith(
          $value.expiry!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(expiry: v),
        )
      : null;
  @override
  ListCopyWith<$R, RawVariant, RawVariantCopyWith<$R, RawVariant, RawVariant>>?
  get variants => $value.variants != null
      ? ListCopyWith(
          $value.variants!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(variants: v),
        )
      : null;
  @override
  ListCopyWith<$R, RawVariant, RawVariantCopyWith<$R, RawVariant, RawVariant>>?
  get missions => $value.missions != null
      ? ListCopyWith(
          $value.missions!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(missions: v),
        )
      : null;
  @override
  $R call({
    Map<String, dynamic>? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? boss,
    Object? variants = $none,
    Object? missions = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (boss != null) #boss: boss,
      if (variants != $none) #variants: variants,
      if (missions != $none) #missions: missions,
    }),
  );
  @override
  RawSortie $make(CopyWithData data) => RawSortie(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    boss: data.get(#boss, or: $value.boss),
    variants: data.get(#variants, or: $value.variants),
    missions: data.get(#missions, or: $value.missions),
  );

  @override
  RawSortieCopyWith<$R2, RawSortie, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawSortieCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawVariantMapper extends ClassMapperBase<RawVariant> {
  RawVariantMapper._();

  static RawVariantMapper? _instance;
  static RawVariantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawVariantMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawVariant';

  static String _$missionType(RawVariant v) => v.missionType;
  static const Field<RawVariant, String> _f$missionType = Field(
    'missionType',
    _$missionType,
  );
  static String? _$modifierType(RawVariant v) => v.modifierType;
  static const Field<RawVariant, String> _f$modifierType = Field(
    'modifierType',
    _$modifierType,
  );
  static String _$node(RawVariant v) => v.node;
  static const Field<RawVariant, String> _f$node = Field('node', _$node);
  static String? _$tileset(RawVariant v) => v.tileset;
  static const Field<RawVariant, String> _f$tileset = Field(
    'tileset',
    _$tileset,
  );

  @override
  final MappableFields<RawVariant> fields = const {
    #missionType: _f$missionType,
    #modifierType: _f$modifierType,
    #node: _f$node,
    #tileset: _f$tileset,
  };
  @override
  final bool ignoreNull = true;

  static RawVariant _instantiate(DecodingData data) {
    return RawVariant(
      missionType: data.dec(_f$missionType),
      modifierType: data.dec(_f$modifierType),
      node: data.dec(_f$node),
      tileset: data.dec(_f$tileset),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawVariant fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawVariant>(map);
  }

  static RawVariant fromJson(String json) {
    return ensureInitialized().decodeJson<RawVariant>(json);
  }
}

mixin RawVariantMappable {
  String toJson() {
    return RawVariantMapper.ensureInitialized().encodeJson<RawVariant>(
      this as RawVariant,
    );
  }

  Map<String, dynamic> toMap() {
    return RawVariantMapper.ensureInitialized().encodeMap<RawVariant>(
      this as RawVariant,
    );
  }

  RawVariantCopyWith<RawVariant, RawVariant, RawVariant> get copyWith =>
      _RawVariantCopyWithImpl<RawVariant, RawVariant>(
        this as RawVariant,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawVariantMapper.ensureInitialized().stringifyValue(
      this as RawVariant,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawVariantMapper.ensureInitialized().equalsValue(
      this as RawVariant,
      other,
    );
  }

  @override
  int get hashCode {
    return RawVariantMapper.ensureInitialized().hashValue(this as RawVariant);
  }
}

extension RawVariantValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawVariant, $Out> {
  RawVariantCopyWith<$R, RawVariant, $Out> get $asRawVariant =>
      $base.as((v, t, t2) => _RawVariantCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawVariantCopyWith<$R, $In extends RawVariant, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? missionType,
    String? modifierType,
    String? node,
    String? tileset,
  });
  RawVariantCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawVariantCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawVariant, $Out>
    implements RawVariantCopyWith<$R, RawVariant, $Out> {
  _RawVariantCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawVariant> $mapper =
      RawVariantMapper.ensureInitialized();
  @override
  $R call({
    String? missionType,
    Object? modifierType = $none,
    String? node,
    Object? tileset = $none,
  }) => $apply(
    FieldCopyWithData({
      if (missionType != null) #missionType: missionType,
      if (modifierType != $none) #modifierType: modifierType,
      if (node != null) #node: node,
      if (tileset != $none) #tileset: tileset,
    }),
  );
  @override
  RawVariant $make(CopyWithData data) => RawVariant(
    missionType: data.get(#missionType, or: $value.missionType),
    modifierType: data.get(#modifierType, or: $value.modifierType),
    node: data.get(#node, or: $value.node),
    tileset: data.get(#tileset, or: $value.tileset),
  );

  @override
  RawVariantCopyWith<$R2, RawVariant, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawVariantCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SortieMapper extends ClassMapperBase<Sortie> {
  SortieMapper._();

  static SortieMapper? _instance;
  static SortieMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SortieMapper._());
      VariantMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Sortie';

  static String _$id(Sortie v) => v.id;
  static const Field<Sortie, String> _f$id = Field('id', _$id);
  static DateTime _$activation(Sortie v) => v.activation;
  static const Field<Sortie, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(Sortie v) => v.expiry;
  static const Field<Sortie, DateTime> _f$expiry = Field('expiry', _$expiry);
  static String _$boss(Sortie v) => v.boss;
  static const Field<Sortie, String> _f$boss = Field('boss', _$boss);
  static String _$faction(Sortie v) => v.faction;
  static const Field<Sortie, String> _f$faction = Field('faction', _$faction);
  static List<Variant> _$missions(Sortie v) => v.missions;
  static const Field<Sortie, List<Variant>> _f$missions = Field(
    'missions',
    _$missions,
  );

  @override
  final MappableFields<Sortie> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #boss: _f$boss,
    #faction: _f$faction,
    #missions: _f$missions,
  };
  @override
  final bool ignoreNull = true;

  static Sortie _instantiate(DecodingData data) {
    return Sortie(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      boss: data.dec(_f$boss),
      faction: data.dec(_f$faction),
      missions: data.dec(_f$missions),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Sortie fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Sortie>(map);
  }

  static Sortie fromJson(String json) {
    return ensureInitialized().decodeJson<Sortie>(json);
  }
}

mixin SortieMappable {
  String toJson() {
    return SortieMapper.ensureInitialized().encodeJson<Sortie>(this as Sortie);
  }

  Map<String, dynamic> toMap() {
    return SortieMapper.ensureInitialized().encodeMap<Sortie>(this as Sortie);
  }

  SortieCopyWith<Sortie, Sortie, Sortie> get copyWith =>
      _SortieCopyWithImpl<Sortie, Sortie>(this as Sortie, $identity, $identity);
  @override
  String toString() {
    return SortieMapper.ensureInitialized().stringifyValue(this as Sortie);
  }

  @override
  bool operator ==(Object other) {
    return SortieMapper.ensureInitialized().equalsValue(this as Sortie, other);
  }

  @override
  int get hashCode {
    return SortieMapper.ensureInitialized().hashValue(this as Sortie);
  }
}

extension SortieValueCopy<$R, $Out> on ObjectCopyWith<$R, Sortie, $Out> {
  SortieCopyWith<$R, Sortie, $Out> get $asSortie =>
      $base.as((v, t, t2) => _SortieCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SortieCopyWith<$R, $In extends Sortie, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Variant, VariantCopyWith<$R, Variant, Variant>> get missions;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? boss,
    String? faction,
    List<Variant>? missions,
  });
  SortieCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SortieCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Sortie, $Out>
    implements SortieCopyWith<$R, Sortie, $Out> {
  _SortieCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Sortie> $mapper = SortieMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Variant, VariantCopyWith<$R, Variant, Variant>>
  get missions => ListCopyWith(
    $value.missions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(missions: v),
  );
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? boss,
    String? faction,
    List<Variant>? missions,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (boss != null) #boss: boss,
      if (faction != null) #faction: faction,
      if (missions != null) #missions: missions,
    }),
  );
  @override
  Sortie $make(CopyWithData data) => Sortie(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    boss: data.get(#boss, or: $value.boss),
    faction: data.get(#faction, or: $value.faction),
    missions: data.get(#missions, or: $value.missions),
  );

  @override
  SortieCopyWith<$R2, Sortie, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SortieCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VariantMapper extends ClassMapperBase<Variant> {
  VariantMapper._();

  static VariantMapper? _instance;
  static VariantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VariantMapper._());
      _t$_R0Mapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Variant';

  static String _$mission(Variant v) => v.mission;
  static const Field<Variant, String> _f$mission = Field('mission', _$mission);
  static SortieModifier? _$modifier(Variant v) => v.modifier;
  static const Field<Variant, SortieModifier> _f$modifier = Field(
    'modifier',
    _$modifier,
  );
  static String _$node(Variant v) => v.node;
  static const Field<Variant, String> _f$node = Field('node', _$node);
  static String? _$tileset(Variant v) => v.tileset;
  static const Field<Variant, String> _f$tileset = Field('tileset', _$tileset);

  @override
  final MappableFields<Variant> fields = const {
    #mission: _f$mission,
    #modifier: _f$modifier,
    #node: _f$node,
    #tileset: _f$tileset,
  };
  @override
  final bool ignoreNull = true;

  static Variant _instantiate(DecodingData data) {
    return Variant(
      mission: data.dec(_f$mission),
      modifier: data.dec(_f$modifier),
      node: data.dec(_f$node),
      tileset: data.dec(_f$tileset),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Variant fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Variant>(map);
  }

  static Variant fromJson(String json) {
    return ensureInitialized().decodeJson<Variant>(json);
  }
}

mixin VariantMappable {
  String toJson() {
    return VariantMapper.ensureInitialized().encodeJson<Variant>(
      this as Variant,
    );
  }

  Map<String, dynamic> toMap() {
    return VariantMapper.ensureInitialized().encodeMap<Variant>(
      this as Variant,
    );
  }

  VariantCopyWith<Variant, Variant, Variant> get copyWith =>
      _VariantCopyWithImpl<Variant, Variant>(
        this as Variant,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return VariantMapper.ensureInitialized().stringifyValue(this as Variant);
  }

  @override
  bool operator ==(Object other) {
    return VariantMapper.ensureInitialized().equalsValue(
      this as Variant,
      other,
    );
  }

  @override
  int get hashCode {
    return VariantMapper.ensureInitialized().hashValue(this as Variant);
  }
}

extension VariantValueCopy<$R, $Out> on ObjectCopyWith<$R, Variant, $Out> {
  VariantCopyWith<$R, Variant, $Out> get $asVariant =>
      $base.as((v, t, t2) => _VariantCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VariantCopyWith<$R, $In extends Variant, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? mission,
    SortieModifier? modifier,
    String? node,
    String? tileset,
  });
  VariantCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VariantCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Variant, $Out>
    implements VariantCopyWith<$R, Variant, $Out> {
  _VariantCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Variant> $mapper =
      VariantMapper.ensureInitialized();
  @override
  $R call({
    String? mission,
    Object? modifier = $none,
    String? node,
    Object? tileset = $none,
  }) => $apply(
    FieldCopyWithData({
      if (mission != null) #mission: mission,
      if (modifier != $none) #modifier: modifier,
      if (node != null) #node: node,
      if (tileset != $none) #tileset: tileset,
    }),
  );
  @override
  Variant $make(CopyWithData data) => Variant(
    mission: data.get(#mission, or: $value.mission),
    modifier: data.get(#modifier, or: $value.modifier),
    node: data.get(#node, or: $value.node),
    tileset: data.get(#tileset, or: $value.tileset),
  );

  @override
  VariantCopyWith<$R2, Variant, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VariantCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

typedef _t$_R0<A, B> = ({A description, B type});

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B>(f) => f<({A description, B type})>());
    }
    return _instance!;
  }

  static dynamic _$description(_t$_R0 v) => v.description;
  static dynamic _arg$description<A, B>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$description = Field(
    'description',
    _$description,
    arg: _arg$description,
  );
  static dynamic _$type(_t$_R0 v) => v.type;
  static dynamic _arg$type<A, B>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$type = Field(
    'type',
    _$type,
    arg: _arg$type,
  );

  @override
  final MappableFields<_t$_R0> fields = const {
    #description: _f$description,
    #type: _f$type,
  };

  @override
  Function get typeFactory =>
      <A, B>(f) => f<_t$_R0<A, B>>();

  static _t$_R0<A, B> _instantiate<A, B>(DecodingData<_t$_R0> data) {
    return (description: data.dec(_f$description), type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B> fromMap<A, B>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B>>(map);
  }

  static _t$_R0<A, B> fromJson<A, B>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B>>(json);
  }
}

