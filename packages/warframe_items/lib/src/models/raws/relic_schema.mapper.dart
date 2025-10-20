// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'relic_schema.dart';

class RelicSchemaMapper extends ClassMapperBase<RelicSchema> {
  RelicSchemaMapper._();

  static RelicSchemaMapper? _instance;
  static RelicSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RelicSchemaMapper._());
      RelicRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RelicSchema';

  static String _$uniqueName(RelicSchema v) => v.uniqueName;
  static const Field<RelicSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(RelicSchema v) => v.name;
  static const Field<RelicSchema, String> _f$name = Field('name', _$name);
  static String? _$description(RelicSchema v) => v.description;
  static const Field<RelicSchema, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$codexSecret(RelicSchema v) => v.codexSecret;
  static const Field<RelicSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static List<RelicReward> _$relicRewards(RelicSchema v) => v.relicRewards;
  static const Field<RelicSchema, List<RelicReward>> _f$relicRewards = Field(
    'relicRewards',
    _$relicRewards,
  );

  @override
  final MappableFields<RelicSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #codexSecret: _f$codexSecret,
    #relicRewards: _f$relicRewards,
  };

  static RelicSchema _instantiate(DecodingData data) {
    return RelicSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      codexSecret: data.dec(_f$codexSecret),
      relicRewards: data.dec(_f$relicRewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RelicSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RelicSchema>(map);
  }

  static RelicSchema fromJson(String json) {
    return ensureInitialized().decodeJson<RelicSchema>(json);
  }
}

mixin RelicSchemaMappable {
  String toJson() {
    return RelicSchemaMapper.ensureInitialized().encodeJson<RelicSchema>(
      this as RelicSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return RelicSchemaMapper.ensureInitialized().encodeMap<RelicSchema>(
      this as RelicSchema,
    );
  }

  RelicSchemaCopyWith<RelicSchema, RelicSchema, RelicSchema> get copyWith =>
      _RelicSchemaCopyWithImpl<RelicSchema, RelicSchema>(
        this as RelicSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RelicSchemaMapper.ensureInitialized().stringifyValue(
      this as RelicSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return RelicSchemaMapper.ensureInitialized().equalsValue(
      this as RelicSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return RelicSchemaMapper.ensureInitialized().hashValue(this as RelicSchema);
  }
}

extension RelicSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RelicSchema, $Out> {
  RelicSchemaCopyWith<$R, RelicSchema, $Out> get $asRelicSchema =>
      $base.as((v, t, t2) => _RelicSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RelicSchemaCopyWith<$R, $In extends RelicSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    RelicReward,
    RelicRewardCopyWith<$R, RelicReward, RelicReward>
  >
  get relicRewards;
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    bool? codexSecret,
    List<RelicReward>? relicRewards,
  });
  RelicSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RelicSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RelicSchema, $Out>
    implements RelicSchemaCopyWith<$R, RelicSchema, $Out> {
  _RelicSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RelicSchema> $mapper =
      RelicSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    RelicReward,
    RelicRewardCopyWith<$R, RelicReward, RelicReward>
  >
  get relicRewards => ListCopyWith(
    $value.relicRewards,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(relicRewards: v),
  );
  @override
  $R call({
    String? uniqueName,
    String? name,
    Object? description = $none,
    bool? codexSecret,
    List<RelicReward>? relicRewards,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != $none) #description: description,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (relicRewards != null) #relicRewards: relicRewards,
    }),
  );
  @override
  RelicSchema $make(CopyWithData data) => RelicSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    relicRewards: data.get(#relicRewards, or: $value.relicRewards),
  );

  @override
  RelicSchemaCopyWith<$R2, RelicSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RelicSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RelicRewardMapper extends ClassMapperBase<RelicReward> {
  RelicRewardMapper._();

  static RelicRewardMapper? _instance;
  static RelicRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RelicRewardMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RelicReward';

  static String _$rewardName(RelicReward v) => v.rewardName;
  static const Field<RelicReward, String> _f$rewardName = Field(
    'rewardName',
    _$rewardName,
  );
  static String _$rarity(RelicReward v) => v.rarity;
  static const Field<RelicReward, String> _f$rarity = Field('rarity', _$rarity);
  static int _$tier(RelicReward v) => v.tier;
  static const Field<RelicReward, int> _f$tier = Field('tier', _$tier);
  static int _$itemCount(RelicReward v) => v.itemCount;
  static const Field<RelicReward, int> _f$itemCount = Field(
    'itemCount',
    _$itemCount,
  );

  @override
  final MappableFields<RelicReward> fields = const {
    #rewardName: _f$rewardName,
    #rarity: _f$rarity,
    #tier: _f$tier,
    #itemCount: _f$itemCount,
  };

  static RelicReward _instantiate(DecodingData data) {
    return RelicReward(
      rewardName: data.dec(_f$rewardName),
      rarity: data.dec(_f$rarity),
      tier: data.dec(_f$tier),
      itemCount: data.dec(_f$itemCount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RelicReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RelicReward>(map);
  }

  static RelicReward fromJson(String json) {
    return ensureInitialized().decodeJson<RelicReward>(json);
  }
}

mixin RelicRewardMappable {
  String toJson() {
    return RelicRewardMapper.ensureInitialized().encodeJson<RelicReward>(
      this as RelicReward,
    );
  }

  Map<String, dynamic> toMap() {
    return RelicRewardMapper.ensureInitialized().encodeMap<RelicReward>(
      this as RelicReward,
    );
  }

  RelicRewardCopyWith<RelicReward, RelicReward, RelicReward> get copyWith =>
      _RelicRewardCopyWithImpl<RelicReward, RelicReward>(
        this as RelicReward,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RelicRewardMapper.ensureInitialized().stringifyValue(
      this as RelicReward,
    );
  }

  @override
  bool operator ==(Object other) {
    return RelicRewardMapper.ensureInitialized().equalsValue(
      this as RelicReward,
      other,
    );
  }

  @override
  int get hashCode {
    return RelicRewardMapper.ensureInitialized().hashValue(this as RelicReward);
  }
}

extension RelicRewardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RelicReward, $Out> {
  RelicRewardCopyWith<$R, RelicReward, $Out> get $asRelicReward =>
      $base.as((v, t, t2) => _RelicRewardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RelicRewardCopyWith<$R, $In extends RelicReward, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? rewardName, String? rarity, int? tier, int? itemCount});
  RelicRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RelicRewardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RelicReward, $Out>
    implements RelicRewardCopyWith<$R, RelicReward, $Out> {
  _RelicRewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RelicReward> $mapper =
      RelicRewardMapper.ensureInitialized();
  @override
  $R call({String? rewardName, String? rarity, int? tier, int? itemCount}) =>
      $apply(
        FieldCopyWithData({
          if (rewardName != null) #rewardName: rewardName,
          if (rarity != null) #rarity: rarity,
          if (tier != null) #tier: tier,
          if (itemCount != null) #itemCount: itemCount,
        }),
      );
  @override
  RelicReward $make(CopyWithData data) => RelicReward(
    rewardName: data.get(#rewardName, or: $value.rewardName),
    rarity: data.get(#rarity, or: $value.rarity),
    tier: data.get(#tier, or: $value.tier),
    itemCount: data.get(#itemCount, or: $value.itemCount),
  );

  @override
  RelicRewardCopyWith<$R2, RelicReward, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RelicRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

