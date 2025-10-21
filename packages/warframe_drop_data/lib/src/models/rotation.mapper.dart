// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rotation.dart';

class RotationsMapper extends ClassMapperBase<Rotations> {
  RotationsMapper._();

  static RotationsMapper? _instance;
  static RotationsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RotationsMapper._());
      RotationRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Rotations';

  static List<RotationReward> _$a(Rotations v) => v.a;
  static const Field<Rotations, List<RotationReward>> _f$a = Field(
    'a',
    _$a,
    key: r'A',
    opt: true,
    def: const [],
  );
  static List<RotationReward> _$b(Rotations v) => v.b;
  static const Field<Rotations, List<RotationReward>> _f$b = Field(
    'b',
    _$b,
    key: r'B',
    opt: true,
    def: const [],
  );
  static List<RotationReward> _$c(Rotations v) => v.c;
  static const Field<Rotations, List<RotationReward>> _f$c = Field(
    'c',
    _$c,
    key: r'C',
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<Rotations> fields = const {#a: _f$a, #b: _f$b, #c: _f$c};

  static Rotations _instantiate(DecodingData data) {
    return Rotations(a: data.dec(_f$a), b: data.dec(_f$b), c: data.dec(_f$c));
  }

  @override
  final Function instantiate = _instantiate;

  static Rotations fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Rotations>(map);
  }

  static Rotations fromJson(String json) {
    return ensureInitialized().decodeJson<Rotations>(json);
  }
}

mixin RotationsMappable {
  String toJson() {
    return RotationsMapper.ensureInitialized().encodeJson<Rotations>(
      this as Rotations,
    );
  }

  Map<String, dynamic> toMap() {
    return RotationsMapper.ensureInitialized().encodeMap<Rotations>(
      this as Rotations,
    );
  }

  RotationsCopyWith<Rotations, Rotations, Rotations> get copyWith =>
      _RotationsCopyWithImpl<Rotations, Rotations>(
        this as Rotations,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RotationsMapper.ensureInitialized().stringifyValue(
      this as Rotations,
    );
  }

  @override
  bool operator ==(Object other) {
    return RotationsMapper.ensureInitialized().equalsValue(
      this as Rotations,
      other,
    );
  }

  @override
  int get hashCode {
    return RotationsMapper.ensureInitialized().hashValue(this as Rotations);
  }
}

extension RotationsValueCopy<$R, $Out> on ObjectCopyWith<$R, Rotations, $Out> {
  RotationsCopyWith<$R, Rotations, $Out> get $asRotations =>
      $base.as((v, t, t2) => _RotationsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RotationsCopyWith<$R, $In extends Rotations, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    RotationReward,
    RotationRewardCopyWith<$R, RotationReward, RotationReward>
  >
  get a;
  ListCopyWith<
    $R,
    RotationReward,
    RotationRewardCopyWith<$R, RotationReward, RotationReward>
  >
  get b;
  ListCopyWith<
    $R,
    RotationReward,
    RotationRewardCopyWith<$R, RotationReward, RotationReward>
  >
  get c;
  $R call({
    List<RotationReward>? a,
    List<RotationReward>? b,
    List<RotationReward>? c,
  });
  RotationsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RotationsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Rotations, $Out>
    implements RotationsCopyWith<$R, Rotations, $Out> {
  _RotationsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Rotations> $mapper =
      RotationsMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    RotationReward,
    RotationRewardCopyWith<$R, RotationReward, RotationReward>
  >
  get a =>
      ListCopyWith($value.a, (v, t) => v.copyWith.$chain(t), (v) => call(a: v));
  @override
  ListCopyWith<
    $R,
    RotationReward,
    RotationRewardCopyWith<$R, RotationReward, RotationReward>
  >
  get b =>
      ListCopyWith($value.b, (v, t) => v.copyWith.$chain(t), (v) => call(b: v));
  @override
  ListCopyWith<
    $R,
    RotationReward,
    RotationRewardCopyWith<$R, RotationReward, RotationReward>
  >
  get c =>
      ListCopyWith($value.c, (v, t) => v.copyWith.$chain(t), (v) => call(c: v));
  @override
  $R call({
    List<RotationReward>? a,
    List<RotationReward>? b,
    List<RotationReward>? c,
  }) => $apply(
    FieldCopyWithData({
      if (a != null) #a: a,
      if (b != null) #b: b,
      if (c != null) #c: c,
    }),
  );
  @override
  Rotations $make(CopyWithData data) => Rotations(
    a: data.get(#a, or: $value.a),
    b: data.get(#b, or: $value.b),
    c: data.get(#c, or: $value.c),
  );

  @override
  RotationsCopyWith<$R2, Rotations, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RotationsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RotationRewardMapper extends ClassMapperBase<RotationReward> {
  RotationRewardMapper._();

  static RotationRewardMapper? _instance;
  static RotationRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RotationRewardMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RotationReward';

  static String _$id(RotationReward v) => v.id;
  static const Field<RotationReward, String> _f$id = Field('id', _$id);
  static String _$name(RotationReward v) => v.name;
  static const Field<RotationReward, String> _f$name = Field('name', _$name);
  static String? _$rarity(RotationReward v) => v.rarity;
  static const Field<RotationReward, String> _f$rarity = Field(
    'rarity',
    _$rarity,
  );
  static double? _$chance(RotationReward v) => v.chance;
  static const Field<RotationReward, double> _f$chance = Field(
    'chance',
    _$chance,
  );
  static String? _$stage(RotationReward v) => v.stage;
  static const Field<RotationReward, String> _f$stage = Field('stage', _$stage);

  @override
  final MappableFields<RotationReward> fields = const {
    #id: _f$id,
    #name: _f$name,
    #rarity: _f$rarity,
    #chance: _f$chance,
    #stage: _f$stage,
  };

  static RotationReward _instantiate(DecodingData data) {
    return RotationReward(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      rarity: data.dec(_f$rarity),
      chance: data.dec(_f$chance),
      stage: data.dec(_f$stage),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RotationReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RotationReward>(map);
  }

  static RotationReward fromJson(String json) {
    return ensureInitialized().decodeJson<RotationReward>(json);
  }
}

mixin RotationRewardMappable {
  String toJson() {
    return RotationRewardMapper.ensureInitialized().encodeJson<RotationReward>(
      this as RotationReward,
    );
  }

  Map<String, dynamic> toMap() {
    return RotationRewardMapper.ensureInitialized().encodeMap<RotationReward>(
      this as RotationReward,
    );
  }

  RotationRewardCopyWith<RotationReward, RotationReward, RotationReward>
  get copyWith => _RotationRewardCopyWithImpl<RotationReward, RotationReward>(
    this as RotationReward,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RotationRewardMapper.ensureInitialized().stringifyValue(
      this as RotationReward,
    );
  }

  @override
  bool operator ==(Object other) {
    return RotationRewardMapper.ensureInitialized().equalsValue(
      this as RotationReward,
      other,
    );
  }

  @override
  int get hashCode {
    return RotationRewardMapper.ensureInitialized().hashValue(
      this as RotationReward,
    );
  }
}

extension RotationRewardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RotationReward, $Out> {
  RotationRewardCopyWith<$R, RotationReward, $Out> get $asRotationReward =>
      $base.as((v, t, t2) => _RotationRewardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RotationRewardCopyWith<$R, $In extends RotationReward, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? name,
    String? rarity,
    double? chance,
    String? stage,
  });
  RotationRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RotationRewardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RotationReward, $Out>
    implements RotationRewardCopyWith<$R, RotationReward, $Out> {
  _RotationRewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RotationReward> $mapper =
      RotationRewardMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? name,
    Object? rarity = $none,
    Object? chance = $none,
    Object? stage = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (rarity != $none) #rarity: rarity,
      if (chance != $none) #chance: chance,
      if (stage != $none) #stage: stage,
    }),
  );
  @override
  RotationReward $make(CopyWithData data) => RotationReward(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    rarity: data.get(#rarity, or: $value.rarity),
    chance: data.get(#chance, or: $value.chance),
    stage: data.get(#stage, or: $value.stage),
  );

  @override
  RotationRewardCopyWith<$R2, RotationReward, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RotationRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

