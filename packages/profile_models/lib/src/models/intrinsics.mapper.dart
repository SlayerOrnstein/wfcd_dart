// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'intrinsics.dart';

class RawIntrinsicsMapper extends ClassMapperBase<RawIntrinsics> {
  RawIntrinsicsMapper._();

  static RawIntrinsicsMapper? _instance;
  static RawIntrinsicsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawIntrinsicsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawIntrinsics';

  static int? _$lppSpace(RawIntrinsics v) => v.lppSpace;
  static const Field<RawIntrinsics, int> _f$lppSpace = Field(
    'lppSpace',
    _$lppSpace,
    key: r'LPP_SPACE',
  );
  static int? _$lpsEngineering(RawIntrinsics v) => v.lpsEngineering;
  static const Field<RawIntrinsics, int> _f$lpsEngineering = Field(
    'lpsEngineering',
    _$lpsEngineering,
    key: r'LPS_ENGINEERING',
  );
  static int? _$lpsGunnery(RawIntrinsics v) => v.lpsGunnery;
  static const Field<RawIntrinsics, int> _f$lpsGunnery = Field(
    'lpsGunnery',
    _$lpsGunnery,
    key: r'LPS_GUNNERY',
  );
  static int? _$lpsPiloting(RawIntrinsics v) => v.lpsPiloting;
  static const Field<RawIntrinsics, int> _f$lpsPiloting = Field(
    'lpsPiloting',
    _$lpsPiloting,
    key: r'LPS_PILOTING',
  );
  static int? _$lpsTactical(RawIntrinsics v) => v.lpsTactical;
  static const Field<RawIntrinsics, int> _f$lpsTactical = Field(
    'lpsTactical',
    _$lpsTactical,
    key: r'LPS_TACTICAL',
  );
  static int? _$lpsCommand(RawIntrinsics v) => v.lpsCommand;
  static const Field<RawIntrinsics, int> _f$lpsCommand = Field(
    'lpsCommand',
    _$lpsCommand,
    key: r'LPS_COMMAND',
  );
  static int? _$lppDrifter(RawIntrinsics v) => v.lppDrifter;
  static const Field<RawIntrinsics, int> _f$lppDrifter = Field(
    'lppDrifter',
    _$lppDrifter,
    key: r'LPP_DRIFTER',
  );
  static int? _$lpsDritRiding(RawIntrinsics v) => v.lpsDritRiding;
  static const Field<RawIntrinsics, int> _f$lpsDritRiding = Field(
    'lpsDritRiding',
    _$lpsDritRiding,
    key: r'LPS_DRIT_RIDING',
  );
  static int? _$lpsDriftCombat(RawIntrinsics v) => v.lpsDriftCombat;
  static const Field<RawIntrinsics, int> _f$lpsDriftCombat = Field(
    'lpsDriftCombat',
    _$lpsDriftCombat,
    key: r'LPS_DRIFT_COMBAT',
  );
  static int? _$lpsDriftOpportunity(RawIntrinsics v) => v.lpsDriftOpportunity;
  static const Field<RawIntrinsics, int> _f$lpsDriftOpportunity = Field(
    'lpsDriftOpportunity',
    _$lpsDriftOpportunity,
    key: r'LPS_DRIFT_OPPORTUNITY',
  );
  static int? _$lpsDriftEndurance(RawIntrinsics v) => v.lpsDriftEndurance;
  static const Field<RawIntrinsics, int> _f$lpsDriftEndurance = Field(
    'lpsDriftEndurance',
    _$lpsDriftEndurance,
    key: r'LPS_DRIFT_ENDURANCE',
  );

  @override
  final MappableFields<RawIntrinsics> fields = const {
    #lppSpace: _f$lppSpace,
    #lpsEngineering: _f$lpsEngineering,
    #lpsGunnery: _f$lpsGunnery,
    #lpsPiloting: _f$lpsPiloting,
    #lpsTactical: _f$lpsTactical,
    #lpsCommand: _f$lpsCommand,
    #lppDrifter: _f$lppDrifter,
    #lpsDritRiding: _f$lpsDritRiding,
    #lpsDriftCombat: _f$lpsDriftCombat,
    #lpsDriftOpportunity: _f$lpsDriftOpportunity,
    #lpsDriftEndurance: _f$lpsDriftEndurance,
  };
  @override
  final bool ignoreNull = true;

  static RawIntrinsics _instantiate(DecodingData data) {
    return RawIntrinsics(
      lppSpace: data.dec(_f$lppSpace),
      lpsEngineering: data.dec(_f$lpsEngineering),
      lpsGunnery: data.dec(_f$lpsGunnery),
      lpsPiloting: data.dec(_f$lpsPiloting),
      lpsTactical: data.dec(_f$lpsTactical),
      lpsCommand: data.dec(_f$lpsCommand),
      lppDrifter: data.dec(_f$lppDrifter),
      lpsDritRiding: data.dec(_f$lpsDritRiding),
      lpsDriftCombat: data.dec(_f$lpsDriftCombat),
      lpsDriftOpportunity: data.dec(_f$lpsDriftOpportunity),
      lpsDriftEndurance: data.dec(_f$lpsDriftEndurance),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawIntrinsics fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawIntrinsics>(map);
  }

  static RawIntrinsics fromJson(String json) {
    return ensureInitialized().decodeJson<RawIntrinsics>(json);
  }
}

mixin RawIntrinsicsMappable {
  String toJson() {
    return RawIntrinsicsMapper.ensureInitialized().encodeJson<RawIntrinsics>(
      this as RawIntrinsics,
    );
  }

  Map<String, dynamic> toMap() {
    return RawIntrinsicsMapper.ensureInitialized().encodeMap<RawIntrinsics>(
      this as RawIntrinsics,
    );
  }

  RawIntrinsicsCopyWith<RawIntrinsics, RawIntrinsics, RawIntrinsics>
  get copyWith => _RawIntrinsicsCopyWithImpl<RawIntrinsics, RawIntrinsics>(
    this as RawIntrinsics,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawIntrinsicsMapper.ensureInitialized().stringifyValue(
      this as RawIntrinsics,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawIntrinsicsMapper.ensureInitialized().equalsValue(
      this as RawIntrinsics,
      other,
    );
  }

  @override
  int get hashCode {
    return RawIntrinsicsMapper.ensureInitialized().hashValue(
      this as RawIntrinsics,
    );
  }
}

extension RawIntrinsicsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawIntrinsics, $Out> {
  RawIntrinsicsCopyWith<$R, RawIntrinsics, $Out> get $asRawIntrinsics =>
      $base.as((v, t, t2) => _RawIntrinsicsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawIntrinsicsCopyWith<$R, $In extends RawIntrinsics, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? lppSpace,
    int? lpsEngineering,
    int? lpsGunnery,
    int? lpsPiloting,
    int? lpsTactical,
    int? lpsCommand,
    int? lppDrifter,
    int? lpsDritRiding,
    int? lpsDriftCombat,
    int? lpsDriftOpportunity,
    int? lpsDriftEndurance,
  });
  RawIntrinsicsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawIntrinsicsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawIntrinsics, $Out>
    implements RawIntrinsicsCopyWith<$R, RawIntrinsics, $Out> {
  _RawIntrinsicsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawIntrinsics> $mapper =
      RawIntrinsicsMapper.ensureInitialized();
  @override
  $R call({
    Object? lppSpace = $none,
    Object? lpsEngineering = $none,
    Object? lpsGunnery = $none,
    Object? lpsPiloting = $none,
    Object? lpsTactical = $none,
    Object? lpsCommand = $none,
    Object? lppDrifter = $none,
    Object? lpsDritRiding = $none,
    Object? lpsDriftCombat = $none,
    Object? lpsDriftOpportunity = $none,
    Object? lpsDriftEndurance = $none,
  }) => $apply(
    FieldCopyWithData({
      if (lppSpace != $none) #lppSpace: lppSpace,
      if (lpsEngineering != $none) #lpsEngineering: lpsEngineering,
      if (lpsGunnery != $none) #lpsGunnery: lpsGunnery,
      if (lpsPiloting != $none) #lpsPiloting: lpsPiloting,
      if (lpsTactical != $none) #lpsTactical: lpsTactical,
      if (lpsCommand != $none) #lpsCommand: lpsCommand,
      if (lppDrifter != $none) #lppDrifter: lppDrifter,
      if (lpsDritRiding != $none) #lpsDritRiding: lpsDritRiding,
      if (lpsDriftCombat != $none) #lpsDriftCombat: lpsDriftCombat,
      if (lpsDriftOpportunity != $none)
        #lpsDriftOpportunity: lpsDriftOpportunity,
      if (lpsDriftEndurance != $none) #lpsDriftEndurance: lpsDriftEndurance,
    }),
  );
  @override
  RawIntrinsics $make(CopyWithData data) => RawIntrinsics(
    lppSpace: data.get(#lppSpace, or: $value.lppSpace),
    lpsEngineering: data.get(#lpsEngineering, or: $value.lpsEngineering),
    lpsGunnery: data.get(#lpsGunnery, or: $value.lpsGunnery),
    lpsPiloting: data.get(#lpsPiloting, or: $value.lpsPiloting),
    lpsTactical: data.get(#lpsTactical, or: $value.lpsTactical),
    lpsCommand: data.get(#lpsCommand, or: $value.lpsCommand),
    lppDrifter: data.get(#lppDrifter, or: $value.lppDrifter),
    lpsDritRiding: data.get(#lpsDritRiding, or: $value.lpsDritRiding),
    lpsDriftCombat: data.get(#lpsDriftCombat, or: $value.lpsDriftCombat),
    lpsDriftOpportunity: data.get(
      #lpsDriftOpportunity,
      or: $value.lpsDriftOpportunity,
    ),
    lpsDriftEndurance: data.get(
      #lpsDriftEndurance,
      or: $value.lpsDriftEndurance,
    ),
  );

  @override
  RawIntrinsicsCopyWith<$R2, RawIntrinsics, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawIntrinsicsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class IntrinsicsMapper extends ClassMapperBase<Intrinsics> {
  IntrinsicsMapper._();

  static IntrinsicsMapper? _instance;
  static IntrinsicsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IntrinsicsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Intrinsics';

  static int _$railJack(Intrinsics v) => v.railJack;
  static const Field<Intrinsics, int> _f$railJack = Field(
    'railJack',
    _$railJack,
  );
  static int _$engineering(Intrinsics v) => v.engineering;
  static const Field<Intrinsics, int> _f$engineering = Field(
    'engineering',
    _$engineering,
  );
  static int _$gunnery(Intrinsics v) => v.gunnery;
  static const Field<Intrinsics, int> _f$gunnery = Field('gunnery', _$gunnery);
  static int _$piloting(Intrinsics v) => v.piloting;
  static const Field<Intrinsics, int> _f$piloting = Field(
    'piloting',
    _$piloting,
  );
  static int _$tactical(Intrinsics v) => v.tactical;
  static const Field<Intrinsics, int> _f$tactical = Field(
    'tactical',
    _$tactical,
  );
  static int _$command(Intrinsics v) => v.command;
  static const Field<Intrinsics, int> _f$command = Field('command', _$command);
  static int _$drifter(Intrinsics v) => v.drifter;
  static const Field<Intrinsics, int> _f$drifter = Field('drifter', _$drifter);
  static int _$riding(Intrinsics v) => v.riding;
  static const Field<Intrinsics, int> _f$riding = Field('riding', _$riding);
  static int _$combat(Intrinsics v) => v.combat;
  static const Field<Intrinsics, int> _f$combat = Field('combat', _$combat);
  static int _$opportunity(Intrinsics v) => v.opportunity;
  static const Field<Intrinsics, int> _f$opportunity = Field(
    'opportunity',
    _$opportunity,
  );
  static int _$endurance(Intrinsics v) => v.endurance;
  static const Field<Intrinsics, int> _f$endurance = Field(
    'endurance',
    _$endurance,
  );

  @override
  final MappableFields<Intrinsics> fields = const {
    #railJack: _f$railJack,
    #engineering: _f$engineering,
    #gunnery: _f$gunnery,
    #piloting: _f$piloting,
    #tactical: _f$tactical,
    #command: _f$command,
    #drifter: _f$drifter,
    #riding: _f$riding,
    #combat: _f$combat,
    #opportunity: _f$opportunity,
    #endurance: _f$endurance,
  };
  @override
  final bool ignoreNull = true;

  static Intrinsics _instantiate(DecodingData data) {
    return Intrinsics(
      railJack: data.dec(_f$railJack),
      engineering: data.dec(_f$engineering),
      gunnery: data.dec(_f$gunnery),
      piloting: data.dec(_f$piloting),
      tactical: data.dec(_f$tactical),
      command: data.dec(_f$command),
      drifter: data.dec(_f$drifter),
      riding: data.dec(_f$riding),
      combat: data.dec(_f$combat),
      opportunity: data.dec(_f$opportunity),
      endurance: data.dec(_f$endurance),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Intrinsics fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Intrinsics>(map);
  }

  static Intrinsics fromJson(String json) {
    return ensureInitialized().decodeJson<Intrinsics>(json);
  }
}

mixin IntrinsicsMappable {
  String toJson() {
    return IntrinsicsMapper.ensureInitialized().encodeJson<Intrinsics>(
      this as Intrinsics,
    );
  }

  Map<String, dynamic> toMap() {
    return IntrinsicsMapper.ensureInitialized().encodeMap<Intrinsics>(
      this as Intrinsics,
    );
  }

  IntrinsicsCopyWith<Intrinsics, Intrinsics, Intrinsics> get copyWith =>
      _IntrinsicsCopyWithImpl<Intrinsics, Intrinsics>(
        this as Intrinsics,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return IntrinsicsMapper.ensureInitialized().stringifyValue(
      this as Intrinsics,
    );
  }

  @override
  bool operator ==(Object other) {
    return IntrinsicsMapper.ensureInitialized().equalsValue(
      this as Intrinsics,
      other,
    );
  }

  @override
  int get hashCode {
    return IntrinsicsMapper.ensureInitialized().hashValue(this as Intrinsics);
  }
}

extension IntrinsicsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Intrinsics, $Out> {
  IntrinsicsCopyWith<$R, Intrinsics, $Out> get $asIntrinsics =>
      $base.as((v, t, t2) => _IntrinsicsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class IntrinsicsCopyWith<$R, $In extends Intrinsics, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? railJack,
    int? engineering,
    int? gunnery,
    int? piloting,
    int? tactical,
    int? command,
    int? drifter,
    int? riding,
    int? combat,
    int? opportunity,
    int? endurance,
  });
  IntrinsicsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IntrinsicsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Intrinsics, $Out>
    implements IntrinsicsCopyWith<$R, Intrinsics, $Out> {
  _IntrinsicsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Intrinsics> $mapper =
      IntrinsicsMapper.ensureInitialized();
  @override
  $R call({
    int? railJack,
    int? engineering,
    int? gunnery,
    int? piloting,
    int? tactical,
    int? command,
    int? drifter,
    int? riding,
    int? combat,
    int? opportunity,
    int? endurance,
  }) => $apply(
    FieldCopyWithData({
      if (railJack != null) #railJack: railJack,
      if (engineering != null) #engineering: engineering,
      if (gunnery != null) #gunnery: gunnery,
      if (piloting != null) #piloting: piloting,
      if (tactical != null) #tactical: tactical,
      if (command != null) #command: command,
      if (drifter != null) #drifter: drifter,
      if (riding != null) #riding: riding,
      if (combat != null) #combat: combat,
      if (opportunity != null) #opportunity: opportunity,
      if (endurance != null) #endurance: endurance,
    }),
  );
  @override
  Intrinsics $make(CopyWithData data) => Intrinsics(
    railJack: data.get(#railJack, or: $value.railJack),
    engineering: data.get(#engineering, or: $value.engineering),
    gunnery: data.get(#gunnery, or: $value.gunnery),
    piloting: data.get(#piloting, or: $value.piloting),
    tactical: data.get(#tactical, or: $value.tactical),
    command: data.get(#command, or: $value.command),
    drifter: data.get(#drifter, or: $value.drifter),
    riding: data.get(#riding, or: $value.riding),
    combat: data.get(#combat, or: $value.combat),
    opportunity: data.get(#opportunity, or: $value.opportunity),
    endurance: data.get(#endurance, or: $value.endurance),
  );

  @override
  IntrinsicsCopyWith<$R2, Intrinsics, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _IntrinsicsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

