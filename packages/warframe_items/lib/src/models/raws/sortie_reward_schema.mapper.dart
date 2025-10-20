// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sortie_reward_schema.dart';

class SortieRewardSchemaMapper extends ClassMapperBase<SortieRewardSchema> {
  SortieRewardSchemaMapper._();

  static SortieRewardSchemaMapper? _instance;
  static SortieRewardSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SortieRewardSchemaMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SortieRewardSchema';

  static String _$rewardName(SortieRewardSchema v) => v.rewardName;
  static const Field<SortieRewardSchema, String> _f$rewardName = Field(
    'rewardName',
    _$rewardName,
  );
  static int _$itemCount(SortieRewardSchema v) => v.itemCount;
  static const Field<SortieRewardSchema, int> _f$itemCount = Field(
    'itemCount',
    _$itemCount,
  );
  static double _$probability(SortieRewardSchema v) => v.probability;
  static const Field<SortieRewardSchema, double> _f$probability = Field(
    'probability',
    _$probability,
  );
  static String _$rarity(SortieRewardSchema v) => v.rarity;
  static const Field<SortieRewardSchema, String> _f$rarity = Field(
    'rarity',
    _$rarity,
  );
  static int _$tier(SortieRewardSchema v) => v.tier;
  static const Field<SortieRewardSchema, int> _f$tier = Field('tier', _$tier);

  @override
  final MappableFields<SortieRewardSchema> fields = const {
    #rewardName: _f$rewardName,
    #itemCount: _f$itemCount,
    #probability: _f$probability,
    #rarity: _f$rarity,
    #tier: _f$tier,
  };

  static SortieRewardSchema _instantiate(DecodingData data) {
    return SortieRewardSchema(
      rewardName: data.dec(_f$rewardName),
      itemCount: data.dec(_f$itemCount),
      probability: data.dec(_f$probability),
      rarity: data.dec(_f$rarity),
      tier: data.dec(_f$tier),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SortieRewardSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SortieRewardSchema>(map);
  }

  static SortieRewardSchema fromJson(String json) {
    return ensureInitialized().decodeJson<SortieRewardSchema>(json);
  }
}

mixin SortieRewardSchemaMappable {
  String toJson() {
    return SortieRewardSchemaMapper.ensureInitialized()
        .encodeJson<SortieRewardSchema>(this as SortieRewardSchema);
  }

  Map<String, dynamic> toMap() {
    return SortieRewardSchemaMapper.ensureInitialized()
        .encodeMap<SortieRewardSchema>(this as SortieRewardSchema);
  }

  SortieRewardSchemaCopyWith<
    SortieRewardSchema,
    SortieRewardSchema,
    SortieRewardSchema
  >
  get copyWith =>
      _SortieRewardSchemaCopyWithImpl<SortieRewardSchema, SortieRewardSchema>(
        this as SortieRewardSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SortieRewardSchemaMapper.ensureInitialized().stringifyValue(
      this as SortieRewardSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return SortieRewardSchemaMapper.ensureInitialized().equalsValue(
      this as SortieRewardSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return SortieRewardSchemaMapper.ensureInitialized().hashValue(
      this as SortieRewardSchema,
    );
  }
}

extension SortieRewardSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SortieRewardSchema, $Out> {
  SortieRewardSchemaCopyWith<$R, SortieRewardSchema, $Out>
  get $asSortieRewardSchema => $base.as(
    (v, t, t2) => _SortieRewardSchemaCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SortieRewardSchemaCopyWith<
  $R,
  $In extends SortieRewardSchema,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? rewardName,
    int? itemCount,
    double? probability,
    String? rarity,
    int? tier,
  });
  SortieRewardSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SortieRewardSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SortieRewardSchema, $Out>
    implements SortieRewardSchemaCopyWith<$R, SortieRewardSchema, $Out> {
  _SortieRewardSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SortieRewardSchema> $mapper =
      SortieRewardSchemaMapper.ensureInitialized();
  @override
  $R call({
    String? rewardName,
    int? itemCount,
    double? probability,
    String? rarity,
    int? tier,
  }) => $apply(
    FieldCopyWithData({
      if (rewardName != null) #rewardName: rewardName,
      if (itemCount != null) #itemCount: itemCount,
      if (probability != null) #probability: probability,
      if (rarity != null) #rarity: rarity,
      if (tier != null) #tier: tier,
    }),
  );
  @override
  SortieRewardSchema $make(CopyWithData data) => SortieRewardSchema(
    rewardName: data.get(#rewardName, or: $value.rewardName),
    itemCount: data.get(#itemCount, or: $value.itemCount),
    probability: data.get(#probability, or: $value.probability),
    rarity: data.get(#rarity, or: $value.rarity),
    tier: data.get(#tier, or: $value.tier),
  );

  @override
  SortieRewardSchemaCopyWith<$R2, SortieRewardSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SortieRewardSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

