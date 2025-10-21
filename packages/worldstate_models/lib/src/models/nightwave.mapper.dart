// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nightwave.dart';

class RawSeasonInfoMapper extends ClassMapperBase<RawSeasonInfo> {
  RawSeasonInfoMapper._();

  static RawSeasonInfoMapper? _instance;
  static RawSeasonInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawSeasonInfoMapper._());
      RawActiveChallengeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawSeasonInfo';

  static Map<String, dynamic>? _$activation(RawSeasonInfo v) => v.activation;
  static const Field<RawSeasonInfo, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawSeasonInfo v) => v.expiry;
  static const Field<RawSeasonInfo, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String _$affiliationTag(RawSeasonInfo v) => v.affiliationTag;
  static const Field<RawSeasonInfo, String> _f$affiliationTag = Field(
    'affiliationTag',
    _$affiliationTag,
    key: r'AffiliationTag',
  );
  static int _$season(RawSeasonInfo v) => v.season;
  static const Field<RawSeasonInfo, int> _f$season = Field(
    'season',
    _$season,
    key: r'Season',
  );
  static int _$phase(RawSeasonInfo v) => v.phase;
  static const Field<RawSeasonInfo, int> _f$phase = Field(
    'phase',
    _$phase,
    key: r'Phase',
  );
  static List<RawActiveChallenge> _$activeChallenges(RawSeasonInfo v) =>
      v.activeChallenges;
  static const Field<RawSeasonInfo, List<RawActiveChallenge>>
  _f$activeChallenges = Field(
    'activeChallenges',
    _$activeChallenges,
    key: r'ActiveChallenges',
  );

  @override
  final MappableFields<RawSeasonInfo> fields = const {
    #activation: _f$activation,
    #expiry: _f$expiry,
    #affiliationTag: _f$affiliationTag,
    #season: _f$season,
    #phase: _f$phase,
    #activeChallenges: _f$activeChallenges,
  };
  @override
  final bool ignoreNull = true;

  static RawSeasonInfo _instantiate(DecodingData data) {
    return RawSeasonInfo(
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      affiliationTag: data.dec(_f$affiliationTag),
      season: data.dec(_f$season),
      phase: data.dec(_f$phase),
      activeChallenges: data.dec(_f$activeChallenges),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawSeasonInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawSeasonInfo>(map);
  }

  static RawSeasonInfo fromJson(String json) {
    return ensureInitialized().decodeJson<RawSeasonInfo>(json);
  }
}

mixin RawSeasonInfoMappable {
  String toJson() {
    return RawSeasonInfoMapper.ensureInitialized().encodeJson<RawSeasonInfo>(
      this as RawSeasonInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return RawSeasonInfoMapper.ensureInitialized().encodeMap<RawSeasonInfo>(
      this as RawSeasonInfo,
    );
  }

  RawSeasonInfoCopyWith<RawSeasonInfo, RawSeasonInfo, RawSeasonInfo>
  get copyWith => _RawSeasonInfoCopyWithImpl<RawSeasonInfo, RawSeasonInfo>(
    this as RawSeasonInfo,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawSeasonInfoMapper.ensureInitialized().stringifyValue(
      this as RawSeasonInfo,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawSeasonInfoMapper.ensureInitialized().equalsValue(
      this as RawSeasonInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return RawSeasonInfoMapper.ensureInitialized().hashValue(
      this as RawSeasonInfo,
    );
  }
}

extension RawSeasonInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawSeasonInfo, $Out> {
  RawSeasonInfoCopyWith<$R, RawSeasonInfo, $Out> get $asRawSeasonInfo =>
      $base.as((v, t, t2) => _RawSeasonInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawSeasonInfoCopyWith<$R, $In extends RawSeasonInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  ListCopyWith<
    $R,
    RawActiveChallenge,
    RawActiveChallengeCopyWith<$R, RawActiveChallenge, RawActiveChallenge>
  >
  get activeChallenges;
  $R call({
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? affiliationTag,
    int? season,
    int? phase,
    List<RawActiveChallenge>? activeChallenges,
  });
  RawSeasonInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawSeasonInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawSeasonInfo, $Out>
    implements RawSeasonInfoCopyWith<$R, RawSeasonInfo, $Out> {
  _RawSeasonInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawSeasonInfo> $mapper =
      RawSeasonInfoMapper.ensureInitialized();
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
  ListCopyWith<
    $R,
    RawActiveChallenge,
    RawActiveChallengeCopyWith<$R, RawActiveChallenge, RawActiveChallenge>
  >
  get activeChallenges => ListCopyWith(
    $value.activeChallenges,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(activeChallenges: v),
  );
  @override
  $R call({
    Object? activation = $none,
    Object? expiry = $none,
    String? affiliationTag,
    int? season,
    int? phase,
    List<RawActiveChallenge>? activeChallenges,
  }) => $apply(
    FieldCopyWithData({
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (affiliationTag != null) #affiliationTag: affiliationTag,
      if (season != null) #season: season,
      if (phase != null) #phase: phase,
      if (activeChallenges != null) #activeChallenges: activeChallenges,
    }),
  );
  @override
  RawSeasonInfo $make(CopyWithData data) => RawSeasonInfo(
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    affiliationTag: data.get(#affiliationTag, or: $value.affiliationTag),
    season: data.get(#season, or: $value.season),
    phase: data.get(#phase, or: $value.phase),
    activeChallenges: data.get(#activeChallenges, or: $value.activeChallenges),
  );

  @override
  RawSeasonInfoCopyWith<$R2, RawSeasonInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawSeasonInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawActiveChallengeMapper extends ClassMapperBase<RawActiveChallenge> {
  RawActiveChallengeMapper._();

  static RawActiveChallengeMapper? _instance;
  static RawActiveChallengeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawActiveChallengeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawActiveChallenge';

  static Map<String, dynamic> _$id(RawActiveChallenge v) => v.id;
  static const Field<RawActiveChallenge, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static Map<String, dynamic>? _$activation(RawActiveChallenge v) =>
      v.activation;
  static const Field<RawActiveChallenge, Map<String, dynamic>> _f$activation =
      Field('activation', _$activation, key: r'Activation');
  static Map<String, dynamic>? _$expiry(RawActiveChallenge v) => v.expiry;
  static const Field<RawActiveChallenge, Map<String, dynamic>> _f$expiry =
      Field('expiry', _$expiry, key: r'Expiry');
  static String _$challenge(RawActiveChallenge v) => v.challenge;
  static const Field<RawActiveChallenge, String> _f$challenge = Field(
    'challenge',
    _$challenge,
    key: r'Challenge',
  );
  static bool _$daily(RawActiveChallenge v) => v.daily;
  static const Field<RawActiveChallenge, bool> _f$daily = Field(
    'daily',
    _$daily,
    key: r'Daily',
    opt: true,
    def: false,
  );

  @override
  final MappableFields<RawActiveChallenge> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #challenge: _f$challenge,
    #daily: _f$daily,
  };
  @override
  final bool ignoreNull = true;

  static RawActiveChallenge _instantiate(DecodingData data) {
    return RawActiveChallenge(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      challenge: data.dec(_f$challenge),
      daily: data.dec(_f$daily),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawActiveChallenge fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawActiveChallenge>(map);
  }

  static RawActiveChallenge fromJson(String json) {
    return ensureInitialized().decodeJson<RawActiveChallenge>(json);
  }
}

mixin RawActiveChallengeMappable {
  String toJson() {
    return RawActiveChallengeMapper.ensureInitialized()
        .encodeJson<RawActiveChallenge>(this as RawActiveChallenge);
  }

  Map<String, dynamic> toMap() {
    return RawActiveChallengeMapper.ensureInitialized()
        .encodeMap<RawActiveChallenge>(this as RawActiveChallenge);
  }

  RawActiveChallengeCopyWith<
    RawActiveChallenge,
    RawActiveChallenge,
    RawActiveChallenge
  >
  get copyWith =>
      _RawActiveChallengeCopyWithImpl<RawActiveChallenge, RawActiveChallenge>(
        this as RawActiveChallenge,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawActiveChallengeMapper.ensureInitialized().stringifyValue(
      this as RawActiveChallenge,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawActiveChallengeMapper.ensureInitialized().equalsValue(
      this as RawActiveChallenge,
      other,
    );
  }

  @override
  int get hashCode {
    return RawActiveChallengeMapper.ensureInitialized().hashValue(
      this as RawActiveChallenge,
    );
  }
}

extension RawActiveChallengeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawActiveChallenge, $Out> {
  RawActiveChallengeCopyWith<$R, RawActiveChallenge, $Out>
  get $asRawActiveChallenge => $base.as(
    (v, t, t2) => _RawActiveChallengeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class RawActiveChallengeCopyWith<
  $R,
  $In extends RawActiveChallenge,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  $R call({
    Map<String, dynamic>? id,
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? challenge,
    bool? daily,
  });
  RawActiveChallengeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawActiveChallengeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawActiveChallenge, $Out>
    implements RawActiveChallengeCopyWith<$R, RawActiveChallenge, $Out> {
  _RawActiveChallengeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawActiveChallenge> $mapper =
      RawActiveChallengeMapper.ensureInitialized();
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
  $R call({
    Map<String, dynamic>? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? challenge,
    bool? daily,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (challenge != null) #challenge: challenge,
      if (daily != null) #daily: daily,
    }),
  );
  @override
  RawActiveChallenge $make(CopyWithData data) => RawActiveChallenge(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    challenge: data.get(#challenge, or: $value.challenge),
    daily: data.get(#daily, or: $value.daily),
  );

  @override
  RawActiveChallengeCopyWith<$R2, RawActiveChallenge, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawActiveChallengeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NightwaveMapper extends ClassMapperBase<Nightwave> {
  NightwaveMapper._();

  static NightwaveMapper? _instance;
  static NightwaveMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NightwaveMapper._());
      NightwaveChallengeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Nightwave';

  static String _$id(Nightwave v) => v.id;
  static const Field<Nightwave, String> _f$id = Field('id', _$id);
  static DateTime _$activation(Nightwave v) => v.activation;
  static const Field<Nightwave, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(Nightwave v) => v.expiry;
  static const Field<Nightwave, DateTime> _f$expiry = Field('expiry', _$expiry);
  static String _$tag(Nightwave v) => v.tag;
  static const Field<Nightwave, String> _f$tag = Field('tag', _$tag);
  static int _$season(Nightwave v) => v.season;
  static const Field<Nightwave, int> _f$season = Field('season', _$season);
  static List<NightwaveChallenge> _$challenges(Nightwave v) => v.challenges;
  static const Field<Nightwave, List<NightwaveChallenge>> _f$challenges = Field(
    'challenges',
    _$challenges,
  );

  @override
  final MappableFields<Nightwave> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #tag: _f$tag,
    #season: _f$season,
    #challenges: _f$challenges,
  };
  @override
  final bool ignoreNull = true;

  static Nightwave _instantiate(DecodingData data) {
    return Nightwave(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      tag: data.dec(_f$tag),
      season: data.dec(_f$season),
      challenges: data.dec(_f$challenges),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Nightwave fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Nightwave>(map);
  }

  static Nightwave fromJson(String json) {
    return ensureInitialized().decodeJson<Nightwave>(json);
  }
}

mixin NightwaveMappable {
  String toJson() {
    return NightwaveMapper.ensureInitialized().encodeJson<Nightwave>(
      this as Nightwave,
    );
  }

  Map<String, dynamic> toMap() {
    return NightwaveMapper.ensureInitialized().encodeMap<Nightwave>(
      this as Nightwave,
    );
  }

  NightwaveCopyWith<Nightwave, Nightwave, Nightwave> get copyWith =>
      _NightwaveCopyWithImpl<Nightwave, Nightwave>(
        this as Nightwave,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return NightwaveMapper.ensureInitialized().stringifyValue(
      this as Nightwave,
    );
  }

  @override
  bool operator ==(Object other) {
    return NightwaveMapper.ensureInitialized().equalsValue(
      this as Nightwave,
      other,
    );
  }

  @override
  int get hashCode {
    return NightwaveMapper.ensureInitialized().hashValue(this as Nightwave);
  }
}

extension NightwaveValueCopy<$R, $Out> on ObjectCopyWith<$R, Nightwave, $Out> {
  NightwaveCopyWith<$R, Nightwave, $Out> get $asNightwave =>
      $base.as((v, t, t2) => _NightwaveCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NightwaveCopyWith<$R, $In extends Nightwave, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    NightwaveChallenge,
    NightwaveChallengeCopyWith<$R, NightwaveChallenge, NightwaveChallenge>
  >
  get challenges;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? tag,
    int? season,
    List<NightwaveChallenge>? challenges,
  });
  NightwaveCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NightwaveCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Nightwave, $Out>
    implements NightwaveCopyWith<$R, Nightwave, $Out> {
  _NightwaveCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Nightwave> $mapper =
      NightwaveMapper.ensureInitialized();
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
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? tag,
    int? season,
    List<NightwaveChallenge>? challenges,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (tag != null) #tag: tag,
      if (season != null) #season: season,
      if (challenges != null) #challenges: challenges,
    }),
  );
  @override
  Nightwave $make(CopyWithData data) => Nightwave(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    tag: data.get(#tag, or: $value.tag),
    season: data.get(#season, or: $value.season),
    challenges: data.get(#challenges, or: $value.challenges),
  );

  @override
  NightwaveCopyWith<$R2, Nightwave, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _NightwaveCopyWithImpl<$R2, $Out2>($value, $cast, t);
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

  static String _$id(NightwaveChallenge v) => v.id;
  static const Field<NightwaveChallenge, String> _f$id = Field('id', _$id);
  static DateTime _$activation(NightwaveChallenge v) => v.activation;
  static const Field<NightwaveChallenge, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime _$expiry(NightwaveChallenge v) => v.expiry;
  static const Field<NightwaveChallenge, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static String _$title(NightwaveChallenge v) => v.title;
  static const Field<NightwaveChallenge, String> _f$title = Field(
    'title',
    _$title,
  );
  static String _$description(NightwaveChallenge v) => v.description;
  static const Field<NightwaveChallenge, String> _f$description = Field(
    'description',
    _$description,
  );
  static bool _$isDaily(NightwaveChallenge v) => v.isDaily;
  static const Field<NightwaveChallenge, bool> _f$isDaily = Field(
    'isDaily',
    _$isDaily,
    opt: true,
    def: false,
  );
  static bool _$isElite(NightwaveChallenge v) => v.isElite;
  static const Field<NightwaveChallenge, bool> _f$isElite = Field(
    'isElite',
    _$isElite,
    opt: true,
    def: false,
  );
  static int _$standing(NightwaveChallenge v) => v.standing;
  static const Field<NightwaveChallenge, int> _f$standing = Field(
    'standing',
    _$standing,
  );

  @override
  final MappableFields<NightwaveChallenge> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #title: _f$title,
    #description: _f$description,
    #isDaily: _f$isDaily,
    #isElite: _f$isElite,
    #standing: _f$standing,
  };
  @override
  final bool ignoreNull = true;

  static NightwaveChallenge _instantiate(DecodingData data) {
    return NightwaveChallenge(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      title: data.dec(_f$title),
      description: data.dec(_f$description),
      isDaily: data.dec(_f$isDaily),
      isElite: data.dec(_f$isElite),
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
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? title,
    String? description,
    bool? isDaily,
    bool? isElite,
  });
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
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? title,
    String? description,
    bool? isDaily,
    bool? isElite,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (title != null) #title: title,
      if (description != null) #description: description,
      if (isDaily != null) #isDaily: isDaily,
      if (isElite != null) #isElite: isElite,
    }),
  );
  @override
  NightwaveChallenge $make(CopyWithData data) => NightwaveChallenge(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    title: data.get(#title, or: $value.title),
    description: data.get(#description, or: $value.description),
    isDaily: data.get(#isDaily, or: $value.isDaily),
    isElite: data.get(#isElite, or: $value.isElite),
  );

  @override
  NightwaveChallengeCopyWith<$R2, NightwaveChallenge, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _NightwaveChallengeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

