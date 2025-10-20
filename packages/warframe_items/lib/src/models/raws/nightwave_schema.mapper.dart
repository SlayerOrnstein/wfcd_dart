// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nightwave_schema.dart';

class NightwaveSchemaMapper extends ClassMapperBase<NightwaveSchema> {
  NightwaveSchemaMapper._();

  static NightwaveSchemaMapper? _instance;
  static NightwaveSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NightwaveSchemaMapper._());
      NightwaveChallengeMapper.ensureInitialized();
      NightwaveRewardMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NightwaveSchema';

  static String _$affiliationTag(NightwaveSchema v) => v.affiliationTag;
  static const Field<NightwaveSchema, String> _f$affiliationTag = Field(
    'affiliationTag',
    _$affiliationTag,
  );
  static List<NightwaveChallenge> _$challenges(NightwaveSchema v) =>
      v.challenges;
  static const Field<NightwaveSchema, List<NightwaveChallenge>> _f$challenges =
      Field('challenges', _$challenges);
  static List<NightwaveReward> _$rewards(NightwaveSchema v) => v.rewards;
  static const Field<NightwaveSchema, List<NightwaveReward>> _f$rewards = Field(
    'rewards',
    _$rewards,
  );

  @override
  final MappableFields<NightwaveSchema> fields = const {
    #affiliationTag: _f$affiliationTag,
    #challenges: _f$challenges,
    #rewards: _f$rewards,
  };

  static NightwaveSchema _instantiate(DecodingData data) {
    return NightwaveSchema(
      affiliationTag: data.dec(_f$affiliationTag),
      challenges: data.dec(_f$challenges),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static NightwaveSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NightwaveSchema>(map);
  }

  static NightwaveSchema fromJson(String json) {
    return ensureInitialized().decodeJson<NightwaveSchema>(json);
  }
}

mixin NightwaveSchemaMappable {
  String toJson() {
    return NightwaveSchemaMapper.ensureInitialized()
        .encodeJson<NightwaveSchema>(this as NightwaveSchema);
  }

  Map<String, dynamic> toMap() {
    return NightwaveSchemaMapper.ensureInitialized().encodeMap<NightwaveSchema>(
      this as NightwaveSchema,
    );
  }

  NightwaveSchemaCopyWith<NightwaveSchema, NightwaveSchema, NightwaveSchema>
  get copyWith =>
      _NightwaveSchemaCopyWithImpl<NightwaveSchema, NightwaveSchema>(
        this as NightwaveSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return NightwaveSchemaMapper.ensureInitialized().stringifyValue(
      this as NightwaveSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return NightwaveSchemaMapper.ensureInitialized().equalsValue(
      this as NightwaveSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return NightwaveSchemaMapper.ensureInitialized().hashValue(
      this as NightwaveSchema,
    );
  }
}

extension NightwaveSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NightwaveSchema, $Out> {
  NightwaveSchemaCopyWith<$R, NightwaveSchema, $Out> get $asNightwaveSchema =>
      $base.as((v, t, t2) => _NightwaveSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NightwaveSchemaCopyWith<$R, $In extends NightwaveSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    NightwaveChallenge,
    NightwaveChallengeCopyWith<$R, NightwaveChallenge, NightwaveChallenge>
  >
  get challenges;
  ListCopyWith<
    $R,
    NightwaveReward,
    NightwaveRewardCopyWith<$R, NightwaveReward, NightwaveReward>
  >
  get rewards;
  $R call({
    String? affiliationTag,
    List<NightwaveChallenge>? challenges,
    List<NightwaveReward>? rewards,
  });
  NightwaveSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _NightwaveSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NightwaveSchema, $Out>
    implements NightwaveSchemaCopyWith<$R, NightwaveSchema, $Out> {
  _NightwaveSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NightwaveSchema> $mapper =
      NightwaveSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    NightwaveChallenge,
    NightwaveChallengeCopyWith<$R, NightwaveChallenge, NightwaveChallenge>
  >
  get challenges => ListCopyWith(
    $value.challenges,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(challenges: v),
  );
  @override
  ListCopyWith<
    $R,
    NightwaveReward,
    NightwaveRewardCopyWith<$R, NightwaveReward, NightwaveReward>
  >
  get rewards => ListCopyWith(
    $value.rewards,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(rewards: v),
  );
  @override
  $R call({
    String? affiliationTag,
    List<NightwaveChallenge>? challenges,
    List<NightwaveReward>? rewards,
  }) => $apply(
    FieldCopyWithData({
      if (affiliationTag != null) #affiliationTag: affiliationTag,
      if (challenges != null) #challenges: challenges,
      if (rewards != null) #rewards: rewards,
    }),
  );
  @override
  NightwaveSchema $make(CopyWithData data) => NightwaveSchema(
    affiliationTag: data.get(#affiliationTag, or: $value.affiliationTag),
    challenges: data.get(#challenges, or: $value.challenges),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  NightwaveSchemaCopyWith<$R2, NightwaveSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _NightwaveSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NightwaveChallengeMapper extends ClassMapperBase<NightwaveChallenge> {
  NightwaveChallengeMapper._();

  static NightwaveChallengeMapper? _instance;
  static NightwaveChallengeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NightwaveChallengeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NightwaveChallenge';

  static String _$uniqueName(NightwaveChallenge v) => v.uniqueName;
  static const Field<NightwaveChallenge, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(NightwaveChallenge v) => v.name;
  static const Field<NightwaveChallenge, String> _f$name = Field(
    'name',
    _$name,
  );
  static int _$standing(NightwaveChallenge v) => v.standing;
  static const Field<NightwaveChallenge, int> _f$standing = Field(
    'standing',
    _$standing,
  );
  static int _$req(NightwaveChallenge v) => v.req;
  static const Field<NightwaveChallenge, int> _f$req = Field(
    'req',
    _$req,
    key: r'required',
  );

  @override
  final MappableFields<NightwaveChallenge> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #standing: _f$standing,
    #req: _f$req,
  };

  static NightwaveChallenge _instantiate(DecodingData data) {
    return NightwaveChallenge(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      standing: data.dec(_f$standing),
      req: data.dec(_f$req),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static NightwaveChallenge fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NightwaveChallenge>(map);
  }

  static NightwaveChallenge fromJson(String json) {
    return ensureInitialized().decodeJson<NightwaveChallenge>(json);
  }
}

mixin NightwaveChallengeMappable {
  String toJson() {
    return NightwaveChallengeMapper.ensureInitialized()
        .encodeJson<NightwaveChallenge>(this as NightwaveChallenge);
  }

  Map<String, dynamic> toMap() {
    return NightwaveChallengeMapper.ensureInitialized()
        .encodeMap<NightwaveChallenge>(this as NightwaveChallenge);
  }

  NightwaveChallengeCopyWith<
    NightwaveChallenge,
    NightwaveChallenge,
    NightwaveChallenge
  >
  get copyWith =>
      _NightwaveChallengeCopyWithImpl<NightwaveChallenge, NightwaveChallenge>(
        this as NightwaveChallenge,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return NightwaveChallengeMapper.ensureInitialized().stringifyValue(
      this as NightwaveChallenge,
    );
  }

  @override
  bool operator ==(Object other) {
    return NightwaveChallengeMapper.ensureInitialized().equalsValue(
      this as NightwaveChallenge,
      other,
    );
  }

  @override
  int get hashCode {
    return NightwaveChallengeMapper.ensureInitialized().hashValue(
      this as NightwaveChallenge,
    );
  }
}

extension NightwaveChallengeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NightwaveChallenge, $Out> {
  NightwaveChallengeCopyWith<$R, NightwaveChallenge, $Out>
  get $asNightwaveChallenge => $base.as(
    (v, t, t2) => _NightwaveChallengeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class NightwaveChallengeCopyWith<
  $R,
  $In extends NightwaveChallenge,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? uniqueName, String? name, int? standing, int? req});
  NightwaveChallengeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _NightwaveChallengeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NightwaveChallenge, $Out>
    implements NightwaveChallengeCopyWith<$R, NightwaveChallenge, $Out> {
  _NightwaveChallengeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NightwaveChallenge> $mapper =
      NightwaveChallengeMapper.ensureInitialized();
  @override
  $R call({String? uniqueName, String? name, int? standing, int? req}) =>
      $apply(
        FieldCopyWithData({
          if (uniqueName != null) #uniqueName: uniqueName,
          if (name != null) #name: name,
          if (standing != null) #standing: standing,
          if (req != null) #req: req,
        }),
      );
  @override
  NightwaveChallenge $make(CopyWithData data) => NightwaveChallenge(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    standing: data.get(#standing, or: $value.standing),
    req: data.get(#req, or: $value.req),
  );

  @override
  NightwaveChallengeCopyWith<$R2, NightwaveChallenge, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _NightwaveChallengeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NightwaveRewardMapper extends ClassMapperBase<NightwaveReward> {
  NightwaveRewardMapper._();

  static NightwaveRewardMapper? _instance;
  static NightwaveRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NightwaveRewardMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NightwaveReward';

  static String _$uniqueName(NightwaveReward v) => v.uniqueName;
  static const Field<NightwaveReward, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static int _$itemCount(NightwaveReward v) => v.itemCount;
  static const Field<NightwaveReward, int> _f$itemCount = Field(
    'itemCount',
    _$itemCount,
  );

  @override
  final MappableFields<NightwaveReward> fields = const {
    #uniqueName: _f$uniqueName,
    #itemCount: _f$itemCount,
  };

  static NightwaveReward _instantiate(DecodingData data) {
    return NightwaveReward(
      uniqueName: data.dec(_f$uniqueName),
      itemCount: data.dec(_f$itemCount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static NightwaveReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NightwaveReward>(map);
  }

  static NightwaveReward fromJson(String json) {
    return ensureInitialized().decodeJson<NightwaveReward>(json);
  }
}

mixin NightwaveRewardMappable {
  String toJson() {
    return NightwaveRewardMapper.ensureInitialized()
        .encodeJson<NightwaveReward>(this as NightwaveReward);
  }

  Map<String, dynamic> toMap() {
    return NightwaveRewardMapper.ensureInitialized().encodeMap<NightwaveReward>(
      this as NightwaveReward,
    );
  }

  NightwaveRewardCopyWith<NightwaveReward, NightwaveReward, NightwaveReward>
  get copyWith =>
      _NightwaveRewardCopyWithImpl<NightwaveReward, NightwaveReward>(
        this as NightwaveReward,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return NightwaveRewardMapper.ensureInitialized().stringifyValue(
      this as NightwaveReward,
    );
  }

  @override
  bool operator ==(Object other) {
    return NightwaveRewardMapper.ensureInitialized().equalsValue(
      this as NightwaveReward,
      other,
    );
  }

  @override
  int get hashCode {
    return NightwaveRewardMapper.ensureInitialized().hashValue(
      this as NightwaveReward,
    );
  }
}

extension NightwaveRewardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NightwaveReward, $Out> {
  NightwaveRewardCopyWith<$R, NightwaveReward, $Out> get $asNightwaveReward =>
      $base.as((v, t, t2) => _NightwaveRewardCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NightwaveRewardCopyWith<$R, $In extends NightwaveReward, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? uniqueName, int? itemCount});
  NightwaveRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _NightwaveRewardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NightwaveReward, $Out>
    implements NightwaveRewardCopyWith<$R, NightwaveReward, $Out> {
  _NightwaveRewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NightwaveReward> $mapper =
      NightwaveRewardMapper.ensureInitialized();
  @override
  $R call({String? uniqueName, int? itemCount}) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (itemCount != null) #itemCount: itemCount,
    }),
  );
  @override
  NightwaveReward $make(CopyWithData data) => NightwaveReward(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    itemCount: data.get(#itemCount, or: $value.itemCount),
  );

  @override
  NightwaveRewardCopyWith<$R2, NightwaveReward, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _NightwaveRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

