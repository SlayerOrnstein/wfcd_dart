// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'alert.dart';

class RawAlertMapper extends ClassMapperBase<RawAlert> {
  RawAlertMapper._();

  static RawAlertMapper? _instance;
  static RawAlertMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawAlertMapper._());
      RawMissionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawAlert';

  static Map<String, dynamic> _$id(RawAlert v) => v.id;
  static const Field<RawAlert, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static Map<String, dynamic>? _$activation(RawAlert v) => v.activation;
  static const Field<RawAlert, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawAlert v) => v.expiry;
  static const Field<RawAlert, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static RawMission _$missionInfo(RawAlert v) => v.missionInfo;
  static const Field<RawAlert, RawMission> _f$missionInfo = Field(
    'missionInfo',
    _$missionInfo,
    key: r'MissionInfo',
  );
  static String _$tag(RawAlert v) => v.tag;
  static const Field<RawAlert, String> _f$tag = Field(
    'tag',
    _$tag,
    key: r'Tag',
  );
  static bool _$forceUnlock(RawAlert v) => v.forceUnlock;
  static const Field<RawAlert, bool> _f$forceUnlock = Field(
    'forceUnlock',
    _$forceUnlock,
    key: r'ForceUnlock',
  );

  @override
  final MappableFields<RawAlert> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #missionInfo: _f$missionInfo,
    #tag: _f$tag,
    #forceUnlock: _f$forceUnlock,
  };
  @override
  final bool ignoreNull = true;

  static RawAlert _instantiate(DecodingData data) {
    return RawAlert(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      missionInfo: data.dec(_f$missionInfo),
      tag: data.dec(_f$tag),
      forceUnlock: data.dec(_f$forceUnlock),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawAlert fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawAlert>(map);
  }

  static RawAlert fromJson(String json) {
    return ensureInitialized().decodeJson<RawAlert>(json);
  }
}

mixin RawAlertMappable {
  String toJson() {
    return RawAlertMapper.ensureInitialized().encodeJson<RawAlert>(
      this as RawAlert,
    );
  }

  Map<String, dynamic> toMap() {
    return RawAlertMapper.ensureInitialized().encodeMap<RawAlert>(
      this as RawAlert,
    );
  }

  RawAlertCopyWith<RawAlert, RawAlert, RawAlert> get copyWith =>
      _RawAlertCopyWithImpl<RawAlert, RawAlert>(
        this as RawAlert,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawAlertMapper.ensureInitialized().stringifyValue(this as RawAlert);
  }

  @override
  bool operator ==(Object other) {
    return RawAlertMapper.ensureInitialized().equalsValue(
      this as RawAlert,
      other,
    );
  }

  @override
  int get hashCode {
    return RawAlertMapper.ensureInitialized().hashValue(this as RawAlert);
  }
}

extension RawAlertValueCopy<$R, $Out> on ObjectCopyWith<$R, RawAlert, $Out> {
  RawAlertCopyWith<$R, RawAlert, $Out> get $asRawAlert =>
      $base.as((v, t, t2) => _RawAlertCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawAlertCopyWith<$R, $In extends RawAlert, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  RawMissionCopyWith<$R, RawMission, RawMission> get missionInfo;
  $R call({
    Map<String, dynamic>? id,
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    RawMission? missionInfo,
    String? tag,
    bool? forceUnlock,
  });
  RawAlertCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawAlertCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawAlert, $Out>
    implements RawAlertCopyWith<$R, RawAlert, $Out> {
  _RawAlertCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawAlert> $mapper =
      RawAlertMapper.ensureInitialized();
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
  RawMissionCopyWith<$R, RawMission, RawMission> get missionInfo =>
      $value.missionInfo.copyWith.$chain((v) => call(missionInfo: v));
  @override
  $R call({
    Map<String, dynamic>? id,
    Object? activation = $none,
    Object? expiry = $none,
    RawMission? missionInfo,
    String? tag,
    bool? forceUnlock,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (missionInfo != null) #missionInfo: missionInfo,
      if (tag != null) #tag: tag,
      if (forceUnlock != null) #forceUnlock: forceUnlock,
    }),
  );
  @override
  RawAlert $make(CopyWithData data) => RawAlert(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    missionInfo: data.get(#missionInfo, or: $value.missionInfo),
    tag: data.get(#tag, or: $value.tag),
    forceUnlock: data.get(#forceUnlock, or: $value.forceUnlock),
  );

  @override
  RawAlertCopyWith<$R2, RawAlert, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawAlertCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AlertMapper extends ClassMapperBase<Alert> {
  AlertMapper._();

  static AlertMapper? _instance;
  static AlertMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AlertMapper._());
      MissionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Alert';

  static String _$id(Alert v) => v.id;
  static const Field<Alert, String> _f$id = Field('id', _$id);
  static DateTime? _$activation(Alert v) => v.activation;
  static const Field<Alert, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime? _$expiry(Alert v) => v.expiry;
  static const Field<Alert, DateTime> _f$expiry = Field('expiry', _$expiry);
  static Mission _$mission(Alert v) => v.mission;
  static const Field<Alert, Mission> _f$mission = Field('mission', _$mission);
  static String _$tag(Alert v) => v.tag;
  static const Field<Alert, String> _f$tag = Field('tag', _$tag);
  static bool _$forceUnlocked(Alert v) => v.forceUnlocked;
  static const Field<Alert, bool> _f$forceUnlocked = Field(
    'forceUnlocked',
    _$forceUnlocked,
  );

  @override
  final MappableFields<Alert> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #mission: _f$mission,
    #tag: _f$tag,
    #forceUnlocked: _f$forceUnlocked,
  };
  @override
  final bool ignoreNull = true;

  static Alert _instantiate(DecodingData data) {
    return Alert(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      mission: data.dec(_f$mission),
      tag: data.dec(_f$tag),
      forceUnlocked: data.dec(_f$forceUnlocked),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Alert fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Alert>(map);
  }

  static Alert fromJson(String json) {
    return ensureInitialized().decodeJson<Alert>(json);
  }
}

mixin AlertMappable {
  String toJson() {
    return AlertMapper.ensureInitialized().encodeJson<Alert>(this as Alert);
  }

  Map<String, dynamic> toMap() {
    return AlertMapper.ensureInitialized().encodeMap<Alert>(this as Alert);
  }

  AlertCopyWith<Alert, Alert, Alert> get copyWith =>
      _AlertCopyWithImpl<Alert, Alert>(this as Alert, $identity, $identity);
  @override
  String toString() {
    return AlertMapper.ensureInitialized().stringifyValue(this as Alert);
  }

  @override
  bool operator ==(Object other) {
    return AlertMapper.ensureInitialized().equalsValue(this as Alert, other);
  }

  @override
  int get hashCode {
    return AlertMapper.ensureInitialized().hashValue(this as Alert);
  }
}

extension AlertValueCopy<$R, $Out> on ObjectCopyWith<$R, Alert, $Out> {
  AlertCopyWith<$R, Alert, $Out> get $asAlert =>
      $base.as((v, t, t2) => _AlertCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AlertCopyWith<$R, $In extends Alert, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MissionCopyWith<$R, Mission, Mission> get mission;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    Mission? mission,
    String? tag,
    bool? forceUnlocked,
  });
  AlertCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AlertCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Alert, $Out>
    implements AlertCopyWith<$R, Alert, $Out> {
  _AlertCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Alert> $mapper = AlertMapper.ensureInitialized();
  @override
  MissionCopyWith<$R, Mission, Mission> get mission =>
      $value.mission.copyWith.$chain((v) => call(mission: v));
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    Mission? mission,
    String? tag,
    bool? forceUnlocked,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (mission != null) #mission: mission,
      if (tag != null) #tag: tag,
      if (forceUnlocked != null) #forceUnlocked: forceUnlocked,
    }),
  );
  @override
  Alert $make(CopyWithData data) => Alert(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    mission: data.get(#mission, or: $value.mission),
    tag: data.get(#tag, or: $value.tag),
    forceUnlocked: data.get(#forceUnlocked, or: $value.forceUnlocked),
  );

  @override
  AlertCopyWith<$R2, Alert, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AlertCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

