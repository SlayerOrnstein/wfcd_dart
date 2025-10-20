// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'syndicate.dart';

class RawSyndicateMapper extends ClassMapperBase<RawSyndicate> {
  RawSyndicateMapper._();

  static RawSyndicateMapper? _instance;
  static RawSyndicateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawSyndicateMapper._());
      RawJobMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawSyndicate';

  static Map<String, dynamic> _$id(RawSyndicate v) => v.id;
  static const Field<RawSyndicate, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static Map<String, dynamic>? _$activation(RawSyndicate v) => v.activation;
  static const Field<RawSyndicate, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawSyndicate v) => v.expiry;
  static const Field<RawSyndicate, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String _$tag(RawSyndicate v) => v.tag;
  static const Field<RawSyndicate, String> _f$tag = Field(
    'tag',
    _$tag,
    key: r'Tag',
  );
  static List<String> _$nodes(RawSyndicate v) => v.nodes;
  static const Field<RawSyndicate, List<String>> _f$nodes = Field(
    'nodes',
    _$nodes,
    key: r'Nodes',
  );
  static List<RawJob>? _$jobs(RawSyndicate v) => v.jobs;
  static const Field<RawSyndicate, List<RawJob>> _f$jobs = Field(
    'jobs',
    _$jobs,
    key: r'Jobs',
  );

  @override
  final MappableFields<RawSyndicate> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #tag: _f$tag,
    #nodes: _f$nodes,
    #jobs: _f$jobs,
  };
  @override
  final bool ignoreNull = true;

  static RawSyndicate _instantiate(DecodingData data) {
    return RawSyndicate(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      tag: data.dec(_f$tag),
      nodes: data.dec(_f$nodes),
      jobs: data.dec(_f$jobs),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawSyndicate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawSyndicate>(map);
  }

  static RawSyndicate fromJson(String json) {
    return ensureInitialized().decodeJson<RawSyndicate>(json);
  }
}

mixin RawSyndicateMappable {
  String toJson() {
    return RawSyndicateMapper.ensureInitialized().encodeJson<RawSyndicate>(
      this as RawSyndicate,
    );
  }

  Map<String, dynamic> toMap() {
    return RawSyndicateMapper.ensureInitialized().encodeMap<RawSyndicate>(
      this as RawSyndicate,
    );
  }

  RawSyndicateCopyWith<RawSyndicate, RawSyndicate, RawSyndicate> get copyWith =>
      _RawSyndicateCopyWithImpl<RawSyndicate, RawSyndicate>(
        this as RawSyndicate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawSyndicateMapper.ensureInitialized().stringifyValue(
      this as RawSyndicate,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawSyndicateMapper.ensureInitialized().equalsValue(
      this as RawSyndicate,
      other,
    );
  }

  @override
  int get hashCode {
    return RawSyndicateMapper.ensureInitialized().hashValue(
      this as RawSyndicate,
    );
  }
}

extension RawSyndicateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawSyndicate, $Out> {
  RawSyndicateCopyWith<$R, RawSyndicate, $Out> get $asRawSyndicate =>
      $base.as((v, t, t2) => _RawSyndicateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawSyndicateCopyWith<$R, $In extends RawSyndicate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get nodes;
  ListCopyWith<$R, RawJob, RawJobCopyWith<$R, RawJob, RawJob>>? get jobs;
  $R call({
    Map<String, dynamic>? id,
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? tag,
    List<String>? nodes,
    List<RawJob>? jobs,
  });
  RawSyndicateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawSyndicateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawSyndicate, $Out>
    implements RawSyndicateCopyWith<$R, RawSyndicate, $Out> {
  _RawSyndicateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawSyndicate> $mapper =
      RawSyndicateMapper.ensureInitialized();
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
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get nodes =>
      ListCopyWith(
        $value.nodes,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(nodes: v),
      );
  @override
  ListCopyWith<$R, RawJob, RawJobCopyWith<$R, RawJob, RawJob>>? get jobs =>
      $value.jobs != null
      ? ListCopyWith(
          $value.jobs!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(jobs: v),
        )
      : null;
  @override
  $R call({
    Map<String, dynamic>? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? tag,
    List<String>? nodes,
    Object? jobs = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (tag != null) #tag: tag,
      if (nodes != null) #nodes: nodes,
      if (jobs != $none) #jobs: jobs,
    }),
  );
  @override
  RawSyndicate $make(CopyWithData data) => RawSyndicate(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    tag: data.get(#tag, or: $value.tag),
    nodes: data.get(#nodes, or: $value.nodes),
    jobs: data.get(#jobs, or: $value.jobs),
  );

  @override
  RawSyndicateCopyWith<$R2, RawSyndicate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawSyndicateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawJobMapper extends ClassMapperBase<RawJob> {
  RawJobMapper._();

  static RawJobMapper? _instance;
  static RawJobMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawJobMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawJob';

  static String? _$jobType(RawJob v) => v.jobType;
  static const Field<RawJob, String> _f$jobType = Field('jobType', _$jobType);
  static String _$rewards(RawJob v) => v.rewards;
  static const Field<RawJob, String> _f$rewards = Field('rewards', _$rewards);
  static int _$masteryReq(RawJob v) => v.masteryReq;
  static const Field<RawJob, int> _f$masteryReq = Field(
    'masteryReq',
    _$masteryReq,
  );
  static int _$minEnemyLevel(RawJob v) => v.minEnemyLevel;
  static const Field<RawJob, int> _f$minEnemyLevel = Field(
    'minEnemyLevel',
    _$minEnemyLevel,
  );
  static int _$maxEnemyLevel(RawJob v) => v.maxEnemyLevel;
  static const Field<RawJob, int> _f$maxEnemyLevel = Field(
    'maxEnemyLevel',
    _$maxEnemyLevel,
  );
  static bool? _$endless(RawJob v) => v.endless;
  static const Field<RawJob, bool> _f$endless = Field('endless', _$endless);
  static List<int> _$xpAmounts(RawJob v) => v.xpAmounts;
  static const Field<RawJob, List<int>> _f$xpAmounts = Field(
    'xpAmounts',
    _$xpAmounts,
  );
  static bool? _$isVault(RawJob v) => v.isVault;
  static const Field<RawJob, bool> _f$isVault = Field('isVault', _$isVault);

  @override
  final MappableFields<RawJob> fields = const {
    #jobType: _f$jobType,
    #rewards: _f$rewards,
    #masteryReq: _f$masteryReq,
    #minEnemyLevel: _f$minEnemyLevel,
    #maxEnemyLevel: _f$maxEnemyLevel,
    #endless: _f$endless,
    #xpAmounts: _f$xpAmounts,
    #isVault: _f$isVault,
  };
  @override
  final bool ignoreNull = true;

  static RawJob _instantiate(DecodingData data) {
    return RawJob(
      jobType: data.dec(_f$jobType),
      rewards: data.dec(_f$rewards),
      masteryReq: data.dec(_f$masteryReq),
      minEnemyLevel: data.dec(_f$minEnemyLevel),
      maxEnemyLevel: data.dec(_f$maxEnemyLevel),
      endless: data.dec(_f$endless),
      xpAmounts: data.dec(_f$xpAmounts),
      isVault: data.dec(_f$isVault),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawJob fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawJob>(map);
  }

  static RawJob fromJson(String json) {
    return ensureInitialized().decodeJson<RawJob>(json);
  }
}

mixin RawJobMappable {
  String toJson() {
    return RawJobMapper.ensureInitialized().encodeJson<RawJob>(this as RawJob);
  }

  Map<String, dynamic> toMap() {
    return RawJobMapper.ensureInitialized().encodeMap<RawJob>(this as RawJob);
  }

  RawJobCopyWith<RawJob, RawJob, RawJob> get copyWith =>
      _RawJobCopyWithImpl<RawJob, RawJob>(this as RawJob, $identity, $identity);
  @override
  String toString() {
    return RawJobMapper.ensureInitialized().stringifyValue(this as RawJob);
  }

  @override
  bool operator ==(Object other) {
    return RawJobMapper.ensureInitialized().equalsValue(this as RawJob, other);
  }

  @override
  int get hashCode {
    return RawJobMapper.ensureInitialized().hashValue(this as RawJob);
  }
}

extension RawJobValueCopy<$R, $Out> on ObjectCopyWith<$R, RawJob, $Out> {
  RawJobCopyWith<$R, RawJob, $Out> get $asRawJob =>
      $base.as((v, t, t2) => _RawJobCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawJobCopyWith<$R, $In extends RawJob, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get xpAmounts;
  $R call({
    String? jobType,
    String? rewards,
    int? masteryReq,
    int? minEnemyLevel,
    int? maxEnemyLevel,
    bool? endless,
    List<int>? xpAmounts,
    bool? isVault,
  });
  RawJobCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawJobCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, RawJob, $Out>
    implements RawJobCopyWith<$R, RawJob, $Out> {
  _RawJobCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawJob> $mapper = RawJobMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get xpAmounts =>
      ListCopyWith(
        $value.xpAmounts,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(xpAmounts: v),
      );
  @override
  $R call({
    Object? jobType = $none,
    String? rewards,
    int? masteryReq,
    int? minEnemyLevel,
    int? maxEnemyLevel,
    Object? endless = $none,
    List<int>? xpAmounts,
    Object? isVault = $none,
  }) => $apply(
    FieldCopyWithData({
      if (jobType != $none) #jobType: jobType,
      if (rewards != null) #rewards: rewards,
      if (masteryReq != null) #masteryReq: masteryReq,
      if (minEnemyLevel != null) #minEnemyLevel: minEnemyLevel,
      if (maxEnemyLevel != null) #maxEnemyLevel: maxEnemyLevel,
      if (endless != $none) #endless: endless,
      if (xpAmounts != null) #xpAmounts: xpAmounts,
      if (isVault != $none) #isVault: isVault,
    }),
  );
  @override
  RawJob $make(CopyWithData data) => RawJob(
    jobType: data.get(#jobType, or: $value.jobType),
    rewards: data.get(#rewards, or: $value.rewards),
    masteryReq: data.get(#masteryReq, or: $value.masteryReq),
    minEnemyLevel: data.get(#minEnemyLevel, or: $value.minEnemyLevel),
    maxEnemyLevel: data.get(#maxEnemyLevel, or: $value.maxEnemyLevel),
    endless: data.get(#endless, or: $value.endless),
    xpAmounts: data.get(#xpAmounts, or: $value.xpAmounts),
    isVault: data.get(#isVault, or: $value.isVault),
  );

  @override
  RawJobCopyWith<$R2, RawJob, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RawJobCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SyndicateMissionMapper extends ClassMapperBase<SyndicateMission> {
  SyndicateMissionMapper._();

  static SyndicateMissionMapper? _instance;
  static SyndicateMissionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SyndicateMissionMapper._());
      SyndicateBountyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SyndicateMission';

  static String _$id(SyndicateMission v) => v.id;
  static const Field<SyndicateMission, String> _f$id = Field('id', _$id);
  static DateTime? _$activation(SyndicateMission v) => v.activation;
  static const Field<SyndicateMission, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime? _$expiry(SyndicateMission v) => v.expiry;
  static const Field<SyndicateMission, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static String _$name(SyndicateMission v) => v.name;
  static const Field<SyndicateMission, String> _f$name = Field('name', _$name);
  static List<String>? _$nodes(SyndicateMission v) => v.nodes;
  static const Field<SyndicateMission, List<String>> _f$nodes = Field(
    'nodes',
    _$nodes,
  );
  static List<SyndicateBounty>? _$bounties(SyndicateMission v) => v.bounties;
  static const Field<SyndicateMission, List<SyndicateBounty>> _f$bounties =
      Field('bounties', _$bounties);

  @override
  final MappableFields<SyndicateMission> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #name: _f$name,
    #nodes: _f$nodes,
    #bounties: _f$bounties,
  };
  @override
  final bool ignoreNull = true;

  static SyndicateMission _instantiate(DecodingData data) {
    return SyndicateMission(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      name: data.dec(_f$name),
      nodes: data.dec(_f$nodes),
      bounties: data.dec(_f$bounties),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SyndicateMission fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SyndicateMission>(map);
  }

  static SyndicateMission fromJson(String json) {
    return ensureInitialized().decodeJson<SyndicateMission>(json);
  }
}

mixin SyndicateMissionMappable {
  String toJson() {
    return SyndicateMissionMapper.ensureInitialized()
        .encodeJson<SyndicateMission>(this as SyndicateMission);
  }

  Map<String, dynamic> toMap() {
    return SyndicateMissionMapper.ensureInitialized()
        .encodeMap<SyndicateMission>(this as SyndicateMission);
  }

  SyndicateMissionCopyWith<SyndicateMission, SyndicateMission, SyndicateMission>
  get copyWith =>
      _SyndicateMissionCopyWithImpl<SyndicateMission, SyndicateMission>(
        this as SyndicateMission,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SyndicateMissionMapper.ensureInitialized().stringifyValue(
      this as SyndicateMission,
    );
  }

  @override
  bool operator ==(Object other) {
    return SyndicateMissionMapper.ensureInitialized().equalsValue(
      this as SyndicateMission,
      other,
    );
  }

  @override
  int get hashCode {
    return SyndicateMissionMapper.ensureInitialized().hashValue(
      this as SyndicateMission,
    );
  }
}

extension SyndicateMissionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SyndicateMission, $Out> {
  SyndicateMissionCopyWith<$R, SyndicateMission, $Out>
  get $asSyndicateMission =>
      $base.as((v, t, t2) => _SyndicateMissionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SyndicateMissionCopyWith<$R, $In extends SyndicateMission, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get nodes;
  ListCopyWith<
    $R,
    SyndicateBounty,
    SyndicateBountyCopyWith<$R, SyndicateBounty, SyndicateBounty>
  >?
  get bounties;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? name,
    List<String>? nodes,
    List<SyndicateBounty>? bounties,
  });
  SyndicateMissionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SyndicateMissionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SyndicateMission, $Out>
    implements SyndicateMissionCopyWith<$R, SyndicateMission, $Out> {
  _SyndicateMissionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SyndicateMission> $mapper =
      SyndicateMissionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get nodes =>
      $value.nodes != null
      ? ListCopyWith(
          $value.nodes!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(nodes: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    SyndicateBounty,
    SyndicateBountyCopyWith<$R, SyndicateBounty, SyndicateBounty>
  >?
  get bounties => $value.bounties != null
      ? ListCopyWith(
          $value.bounties!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(bounties: v),
        )
      : null;
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? name,
    Object? nodes = $none,
    Object? bounties = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (name != null) #name: name,
      if (nodes != $none) #nodes: nodes,
      if (bounties != $none) #bounties: bounties,
    }),
  );
  @override
  SyndicateMission $make(CopyWithData data) => SyndicateMission(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    name: data.get(#name, or: $value.name),
    nodes: data.get(#nodes, or: $value.nodes),
    bounties: data.get(#bounties, or: $value.bounties),
  );

  @override
  SyndicateMissionCopyWith<$R2, SyndicateMission, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SyndicateMissionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SyndicateBountyMapper extends ClassMapperBase<SyndicateBounty> {
  SyndicateBountyMapper._();

  static SyndicateBountyMapper? _instance;
  static SyndicateBountyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SyndicateBountyMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SyndicateBounty';

  static String? _$type(SyndicateBounty v) => v.type;
  static const Field<SyndicateBounty, String> _f$type = Field('type', _$type);
  static String _$rewards(SyndicateBounty v) => v.rewards;
  static const Field<SyndicateBounty, String> _f$rewards = Field(
    'rewards',
    _$rewards,
  );
  static int _$masteryRequirment(SyndicateBounty v) => v.masteryRequirment;
  static const Field<SyndicateBounty, int> _f$masteryRequirment = Field(
    'masteryRequirment',
    _$masteryRequirment,
  );
  static int _$minLevel(SyndicateBounty v) => v.minLevel;
  static const Field<SyndicateBounty, int> _f$minLevel = Field(
    'minLevel',
    _$minLevel,
  );
  static int _$maxLevel(SyndicateBounty v) => v.maxLevel;
  static const Field<SyndicateBounty, int> _f$maxLevel = Field(
    'maxLevel',
    _$maxLevel,
  );
  static bool? _$isEndless(SyndicateBounty v) => v.isEndless;
  static const Field<SyndicateBounty, bool> _f$isEndless = Field(
    'isEndless',
    _$isEndless,
  );
  static int _$standing(SyndicateBounty v) => v.standing;
  static const Field<SyndicateBounty, int> _f$standing = Field(
    'standing',
    _$standing,
  );
  static bool? _$isVault(SyndicateBounty v) => v.isVault;
  static const Field<SyndicateBounty, bool> _f$isVault = Field(
    'isVault',
    _$isVault,
  );

  @override
  final MappableFields<SyndicateBounty> fields = const {
    #type: _f$type,
    #rewards: _f$rewards,
    #masteryRequirment: _f$masteryRequirment,
    #minLevel: _f$minLevel,
    #maxLevel: _f$maxLevel,
    #isEndless: _f$isEndless,
    #standing: _f$standing,
    #isVault: _f$isVault,
  };
  @override
  final bool ignoreNull = true;

  static SyndicateBounty _instantiate(DecodingData data) {
    return SyndicateBounty(
      type: data.dec(_f$type),
      rewards: data.dec(_f$rewards),
      masteryRequirment: data.dec(_f$masteryRequirment),
      minLevel: data.dec(_f$minLevel),
      maxLevel: data.dec(_f$maxLevel),
      isEndless: data.dec(_f$isEndless),
      standing: data.dec(_f$standing),
      isVault: data.dec(_f$isVault),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SyndicateBounty fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SyndicateBounty>(map);
  }

  static SyndicateBounty fromJson(String json) {
    return ensureInitialized().decodeJson<SyndicateBounty>(json);
  }
}

mixin SyndicateBountyMappable {
  String toJson() {
    return SyndicateBountyMapper.ensureInitialized()
        .encodeJson<SyndicateBounty>(this as SyndicateBounty);
  }

  Map<String, dynamic> toMap() {
    return SyndicateBountyMapper.ensureInitialized().encodeMap<SyndicateBounty>(
      this as SyndicateBounty,
    );
  }

  SyndicateBountyCopyWith<SyndicateBounty, SyndicateBounty, SyndicateBounty>
  get copyWith =>
      _SyndicateBountyCopyWithImpl<SyndicateBounty, SyndicateBounty>(
        this as SyndicateBounty,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SyndicateBountyMapper.ensureInitialized().stringifyValue(
      this as SyndicateBounty,
    );
  }

  @override
  bool operator ==(Object other) {
    return SyndicateBountyMapper.ensureInitialized().equalsValue(
      this as SyndicateBounty,
      other,
    );
  }

  @override
  int get hashCode {
    return SyndicateBountyMapper.ensureInitialized().hashValue(
      this as SyndicateBounty,
    );
  }
}

extension SyndicateBountyValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SyndicateBounty, $Out> {
  SyndicateBountyCopyWith<$R, SyndicateBounty, $Out> get $asSyndicateBounty =>
      $base.as((v, t, t2) => _SyndicateBountyCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SyndicateBountyCopyWith<$R, $In extends SyndicateBounty, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? type,
    String? rewards,
    int? masteryRequirment,
    int? minLevel,
    int? maxLevel,
    bool? isEndless,
    int? standing,
    bool? isVault,
  });
  SyndicateBountyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SyndicateBountyCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SyndicateBounty, $Out>
    implements SyndicateBountyCopyWith<$R, SyndicateBounty, $Out> {
  _SyndicateBountyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SyndicateBounty> $mapper =
      SyndicateBountyMapper.ensureInitialized();
  @override
  $R call({
    Object? type = $none,
    String? rewards,
    int? masteryRequirment,
    int? minLevel,
    int? maxLevel,
    Object? isEndless = $none,
    int? standing,
    Object? isVault = $none,
  }) => $apply(
    FieldCopyWithData({
      if (type != $none) #type: type,
      if (rewards != null) #rewards: rewards,
      if (masteryRequirment != null) #masteryRequirment: masteryRequirment,
      if (minLevel != null) #minLevel: minLevel,
      if (maxLevel != null) #maxLevel: maxLevel,
      if (isEndless != $none) #isEndless: isEndless,
      if (standing != null) #standing: standing,
      if (isVault != $none) #isVault: isVault,
    }),
  );
  @override
  SyndicateBounty $make(CopyWithData data) => SyndicateBounty(
    type: data.get(#type, or: $value.type),
    rewards: data.get(#rewards, or: $value.rewards),
    masteryRequirment: data.get(
      #masteryRequirment,
      or: $value.masteryRequirment,
    ),
    minLevel: data.get(#minLevel, or: $value.minLevel),
    maxLevel: data.get(#maxLevel, or: $value.maxLevel),
    isEndless: data.get(#isEndless, or: $value.isEndless),
    standing: data.get(#standing, or: $value.standing),
    isVault: data.get(#isVault, or: $value.isVault),
  );

  @override
  SyndicateBountyCopyWith<$R2, SyndicateBounty, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SyndicateBountyCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

