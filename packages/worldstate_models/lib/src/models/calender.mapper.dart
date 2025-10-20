// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'calender.dart';

class RawCalenderMapper extends ClassMapperBase<RawCalender> {
  RawCalenderMapper._();

  static RawCalenderMapper? _instance;
  static RawCalenderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawCalenderMapper._());
      RawCalenderDayMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawCalender';

  static Map<String, dynamic>? _$activation(RawCalender v) => v.activation;
  static const Field<RawCalender, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawCalender v) => v.expiry;
  static const Field<RawCalender, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String _$season(RawCalender v) => v.season;
  static const Field<RawCalender, String> _f$season = Field(
    'season',
    _$season,
    key: r'Season',
  );
  static int _$yearIteration(RawCalender v) => v.yearIteration;
  static const Field<RawCalender, int> _f$yearIteration = Field(
    'yearIteration',
    _$yearIteration,
    key: r'YearIteration',
  );
  static int _$version(RawCalender v) => v.version;
  static const Field<RawCalender, int> _f$version = Field(
    'version',
    _$version,
    key: r'Version',
  );
  static List<RawCalenderDay> _$days(RawCalender v) => v.days;
  static const Field<RawCalender, List<RawCalenderDay>> _f$days = Field(
    'days',
    _$days,
    key: r'Days',
  );

  @override
  final MappableFields<RawCalender> fields = const {
    #activation: _f$activation,
    #expiry: _f$expiry,
    #season: _f$season,
    #yearIteration: _f$yearIteration,
    #version: _f$version,
    #days: _f$days,
  };
  @override
  final bool ignoreNull = true;

  static RawCalender _instantiate(DecodingData data) {
    return RawCalender(
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      season: data.dec(_f$season),
      yearIteration: data.dec(_f$yearIteration),
      version: data.dec(_f$version),
      days: data.dec(_f$days),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawCalender fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawCalender>(map);
  }

  static RawCalender fromJson(String json) {
    return ensureInitialized().decodeJson<RawCalender>(json);
  }
}

mixin RawCalenderMappable {
  String toJson() {
    return RawCalenderMapper.ensureInitialized().encodeJson<RawCalender>(
      this as RawCalender,
    );
  }

  Map<String, dynamic> toMap() {
    return RawCalenderMapper.ensureInitialized().encodeMap<RawCalender>(
      this as RawCalender,
    );
  }

  RawCalenderCopyWith<RawCalender, RawCalender, RawCalender> get copyWith =>
      _RawCalenderCopyWithImpl<RawCalender, RawCalender>(
        this as RawCalender,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawCalenderMapper.ensureInitialized().stringifyValue(
      this as RawCalender,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawCalenderMapper.ensureInitialized().equalsValue(
      this as RawCalender,
      other,
    );
  }

  @override
  int get hashCode {
    return RawCalenderMapper.ensureInitialized().hashValue(this as RawCalender);
  }
}

extension RawCalenderValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawCalender, $Out> {
  RawCalenderCopyWith<$R, RawCalender, $Out> get $asRawCalender =>
      $base.as((v, t, t2) => _RawCalenderCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawCalenderCopyWith<$R, $In extends RawCalender, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  ListCopyWith<
    $R,
    RawCalenderDay,
    RawCalenderDayCopyWith<$R, RawCalenderDay, RawCalenderDay>
  >
  get days;
  $R call({
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? season,
    int? yearIteration,
    int? version,
    List<RawCalenderDay>? days,
  });
  RawCalenderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawCalenderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawCalender, $Out>
    implements RawCalenderCopyWith<$R, RawCalender, $Out> {
  _RawCalenderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawCalender> $mapper =
      RawCalenderMapper.ensureInitialized();
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
    RawCalenderDay,
    RawCalenderDayCopyWith<$R, RawCalenderDay, RawCalenderDay>
  >
  get days => ListCopyWith(
    $value.days,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(days: v),
  );
  @override
  $R call({
    Object? activation = $none,
    Object? expiry = $none,
    String? season,
    int? yearIteration,
    int? version,
    List<RawCalenderDay>? days,
  }) => $apply(
    FieldCopyWithData({
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (season != null) #season: season,
      if (yearIteration != null) #yearIteration: yearIteration,
      if (version != null) #version: version,
      if (days != null) #days: days,
    }),
  );
  @override
  RawCalender $make(CopyWithData data) => RawCalender(
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    season: data.get(#season, or: $value.season),
    yearIteration: data.get(#yearIteration, or: $value.yearIteration),
    version: data.get(#version, or: $value.version),
    days: data.get(#days, or: $value.days),
  );

  @override
  RawCalenderCopyWith<$R2, RawCalender, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawCalenderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawCalenderDayMapper extends ClassMapperBase<RawCalenderDay> {
  RawCalenderDayMapper._();

  static RawCalenderDayMapper? _instance;
  static RawCalenderDayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawCalenderDayMapper._());
      RawCalenderDayEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawCalenderDay';

  static int _$day(RawCalenderDay v) => v.day;
  static const Field<RawCalenderDay, int> _f$day = Field('day', _$day);
  static List<RawCalenderDayEvent> _$events(RawCalenderDay v) => v.events;
  static const Field<RawCalenderDay, List<RawCalenderDayEvent>> _f$events =
      Field('events', _$events);

  @override
  final MappableFields<RawCalenderDay> fields = const {
    #day: _f$day,
    #events: _f$events,
  };
  @override
  final bool ignoreNull = true;

  static RawCalenderDay _instantiate(DecodingData data) {
    return RawCalenderDay(day: data.dec(_f$day), events: data.dec(_f$events));
  }

  @override
  final Function instantiate = _instantiate;

  static RawCalenderDay fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawCalenderDay>(map);
  }

  static RawCalenderDay fromJson(String json) {
    return ensureInitialized().decodeJson<RawCalenderDay>(json);
  }
}

mixin RawCalenderDayMappable {
  String toJson() {
    return RawCalenderDayMapper.ensureInitialized().encodeJson<RawCalenderDay>(
      this as RawCalenderDay,
    );
  }

  Map<String, dynamic> toMap() {
    return RawCalenderDayMapper.ensureInitialized().encodeMap<RawCalenderDay>(
      this as RawCalenderDay,
    );
  }

  RawCalenderDayCopyWith<RawCalenderDay, RawCalenderDay, RawCalenderDay>
  get copyWith => _RawCalenderDayCopyWithImpl<RawCalenderDay, RawCalenderDay>(
    this as RawCalenderDay,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawCalenderDayMapper.ensureInitialized().stringifyValue(
      this as RawCalenderDay,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawCalenderDayMapper.ensureInitialized().equalsValue(
      this as RawCalenderDay,
      other,
    );
  }

  @override
  int get hashCode {
    return RawCalenderDayMapper.ensureInitialized().hashValue(
      this as RawCalenderDay,
    );
  }
}

extension RawCalenderDayValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawCalenderDay, $Out> {
  RawCalenderDayCopyWith<$R, RawCalenderDay, $Out> get $asRawCalenderDay =>
      $base.as((v, t, t2) => _RawCalenderDayCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawCalenderDayCopyWith<$R, $In extends RawCalenderDay, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    RawCalenderDayEvent,
    ObjectCopyWith<$R, RawCalenderDayEvent, RawCalenderDayEvent>
  >
  get events;
  $R call({int? day, List<RawCalenderDayEvent>? events});
  RawCalenderDayCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawCalenderDayCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawCalenderDay, $Out>
    implements RawCalenderDayCopyWith<$R, RawCalenderDay, $Out> {
  _RawCalenderDayCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawCalenderDay> $mapper =
      RawCalenderDayMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    RawCalenderDayEvent,
    ObjectCopyWith<$R, RawCalenderDayEvent, RawCalenderDayEvent>
  >
  get events => ListCopyWith(
    $value.events,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(events: v),
  );
  @override
  $R call({int? day, List<RawCalenderDayEvent>? events}) => $apply(
    FieldCopyWithData({
      if (day != null) #day: day,
      if (events != null) #events: events,
    }),
  );
  @override
  RawCalenderDay $make(CopyWithData data) => RawCalenderDay(
    day: data.get(#day, or: $value.day),
    events: data.get(#events, or: $value.events),
  );

  @override
  RawCalenderDayCopyWith<$R2, RawCalenderDay, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawCalenderDayCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawCalenderDayEventMapper extends RecordMapperBase<RawCalenderDayEvent> {
  static RawCalenderDayEventMapper? _instance;
  RawCalenderDayEventMapper._();

  static RawCalenderDayEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawCalenderDayEventMapper._());
      MapperBase.addType(
        <A, B, C, D, E, F>(f) =>
            f<
              ({
                A challenge,
                B dialogueConvo,
                C dialogueName,
                D reward,
                E type,
                F upgrade,
              })
            >(),
      );
    }
    return _instance!;
  }

  static String _$type(RawCalenderDayEvent v) => v.type;
  static const Field<RawCalenderDayEvent, String> _f$type = Field(
    'type',
    _$type,
  );
  static String? _$challenge(RawCalenderDayEvent v) => v.challenge;
  static const Field<RawCalenderDayEvent, String> _f$challenge = Field(
    'challenge',
    _$challenge,
  );
  static String? _$reward(RawCalenderDayEvent v) => v.reward;
  static const Field<RawCalenderDayEvent, String> _f$reward = Field(
    'reward',
    _$reward,
  );
  static String? _$upgrade(RawCalenderDayEvent v) => v.upgrade;
  static const Field<RawCalenderDayEvent, String> _f$upgrade = Field(
    'upgrade',
    _$upgrade,
  );
  static String? _$dialogueName(RawCalenderDayEvent v) => v.dialogueName;
  static const Field<RawCalenderDayEvent, String> _f$dialogueName = Field(
    'dialogueName',
    _$dialogueName,
  );
  static String? _$dialogueConvo(RawCalenderDayEvent v) => v.dialogueConvo;
  static const Field<RawCalenderDayEvent, String> _f$dialogueConvo = Field(
    'dialogueConvo',
    _$dialogueConvo,
  );

  @override
  final MappableFields<RawCalenderDayEvent> fields = const {
    #type: _f$type,
    #challenge: _f$challenge,
    #reward: _f$reward,
    #upgrade: _f$upgrade,
    #dialogueName: _f$dialogueName,
    #dialogueConvo: _f$dialogueConvo,
  };

  @override
  Function get typeFactory =>
      (f) => f<RawCalenderDayEvent>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static RawCalenderDayEvent _instantiate(
    DecodingData<RawCalenderDayEvent> data,
  ) {
    return (
      type: data.dec(_f$type),
      challenge: data.dec(_f$challenge),
      reward: data.dec(_f$reward),
      upgrade: data.dec(_f$upgrade),
      dialogueName: data.dec(_f$dialogueName),
      dialogueConvo: data.dec(_f$dialogueConvo),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawCalenderDayEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawCalenderDayEvent>(map);
  }

  static RawCalenderDayEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RawCalenderDayEvent>(json);
  }
}

extension RawCalenderDayEventMappable on RawCalenderDayEvent {
  Map<String, dynamic> toMap() {
    return RawCalenderDayEventMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return RawCalenderDayEventMapper.ensureInitialized().encodeJson(this);
  }

  RawCalenderDayEventCopyWith<RawCalenderDayEvent> get copyWith =>
      _RawCalenderDayEventCopyWithImpl(this, $identity, $identity);
}

extension RawCalenderDayEventValueCopy<$R>
    on ObjectCopyWith<$R, RawCalenderDayEvent, RawCalenderDayEvent> {
  RawCalenderDayEventCopyWith<$R> get $asRawCalenderDayEvent =>
      $base.as((v, t, t2) => _RawCalenderDayEventCopyWithImpl(v, t, t2));
}

abstract class RawCalenderDayEventCopyWith<$R>
    implements RecordCopyWith<$R, RawCalenderDayEvent> {
  $R call({
    String? type,
    String? challenge,
    String? reward,
    String? upgrade,
    String? dialogueName,
    String? dialogueConvo,
  });
  RawCalenderDayEventCopyWith<$R2> $chain<$R2>(
    Then<RawCalenderDayEvent, $R2> t,
  );
}

class _RawCalenderDayEventCopyWithImpl<$R>
    extends RecordCopyWithBase<$R, RawCalenderDayEvent>
    implements RawCalenderDayEventCopyWith<$R> {
  _RawCalenderDayEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<RawCalenderDayEvent> $mapper =
      RawCalenderDayEventMapper.ensureInitialized();
  @override
  $R call({
    String? type,
    Object? challenge = $none,
    Object? reward = $none,
    Object? upgrade = $none,
    Object? dialogueName = $none,
    Object? dialogueConvo = $none,
  }) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (challenge != $none) #challenge: challenge,
      if (reward != $none) #reward: reward,
      if (upgrade != $none) #upgrade: upgrade,
      if (dialogueName != $none) #dialogueName: dialogueName,
      if (dialogueConvo != $none) #dialogueConvo: dialogueConvo,
    }),
  );
  @override
  RawCalenderDayEvent $make(CopyWithData data) => (
    type: data.get(#type, or: $value.type),
    challenge: data.get(#challenge, or: $value.challenge),
    reward: data.get(#reward, or: $value.reward),
    upgrade: data.get(#upgrade, or: $value.upgrade),
    dialogueName: data.get(#dialogueName, or: $value.dialogueName),
    dialogueConvo: data.get(#dialogueConvo, or: $value.dialogueConvo),
  );

  @override
  RawCalenderDayEventCopyWith<$R2> $chain<$R2>(
    Then<RawCalenderDayEvent, $R2> t,
  ) => _RawCalenderDayEventCopyWithImpl($value, $cast, t);
}

class CalenderMapper extends ClassMapperBase<Calender> {
  CalenderMapper._();

  static CalenderMapper? _instance;
  static CalenderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalenderMapper._());
      CalendarDayMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Calender';

  static String _$id(Calender v) => v.id;
  static const Field<Calender, String> _f$id = Field('id', _$id);
  static DateTime? _$activation(Calender v) => v.activation;
  static const Field<Calender, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime? _$expiry(Calender v) => v.expiry;
  static const Field<Calender, DateTime> _f$expiry = Field('expiry', _$expiry);
  static String _$season(Calender v) => v.season;
  static const Field<Calender, String> _f$season = Field('season', _$season);
  static int _$loops(Calender v) => v.loops;
  static const Field<Calender, int> _f$loops = Field('loops', _$loops);
  static List<CalendarDay> _$days(Calender v) => v.days;
  static const Field<Calender, List<CalendarDay>> _f$days = Field(
    'days',
    _$days,
  );

  @override
  final MappableFields<Calender> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #season: _f$season,
    #loops: _f$loops,
    #days: _f$days,
  };
  @override
  final bool ignoreNull = true;

  static Calender _instantiate(DecodingData data) {
    return Calender(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      season: data.dec(_f$season),
      loops: data.dec(_f$loops),
      days: data.dec(_f$days),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Calender fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Calender>(map);
  }

  static Calender fromJson(String json) {
    return ensureInitialized().decodeJson<Calender>(json);
  }
}

mixin CalenderMappable {
  String toJson() {
    return CalenderMapper.ensureInitialized().encodeJson<Calender>(
      this as Calender,
    );
  }

  Map<String, dynamic> toMap() {
    return CalenderMapper.ensureInitialized().encodeMap<Calender>(
      this as Calender,
    );
  }

  CalenderCopyWith<Calender, Calender, Calender> get copyWith =>
      _CalenderCopyWithImpl<Calender, Calender>(
        this as Calender,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CalenderMapper.ensureInitialized().stringifyValue(this as Calender);
  }

  @override
  bool operator ==(Object other) {
    return CalenderMapper.ensureInitialized().equalsValue(
      this as Calender,
      other,
    );
  }

  @override
  int get hashCode {
    return CalenderMapper.ensureInitialized().hashValue(this as Calender);
  }
}

extension CalenderValueCopy<$R, $Out> on ObjectCopyWith<$R, Calender, $Out> {
  CalenderCopyWith<$R, Calender, $Out> get $asCalender =>
      $base.as((v, t, t2) => _CalenderCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CalenderCopyWith<$R, $In extends Calender, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CalendarDay,
    CalendarDayCopyWith<$R, CalendarDay, CalendarDay>
  >
  get days;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? season,
    int? loops,
    List<CalendarDay>? days,
  });
  CalenderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CalenderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Calender, $Out>
    implements CalenderCopyWith<$R, Calender, $Out> {
  _CalenderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Calender> $mapper =
      CalenderMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CalendarDay,
    CalendarDayCopyWith<$R, CalendarDay, CalendarDay>
  >
  get days => ListCopyWith(
    $value.days,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(days: v),
  );
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? season,
    int? loops,
    List<CalendarDay>? days,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (season != null) #season: season,
      if (loops != null) #loops: loops,
      if (days != null) #days: days,
    }),
  );
  @override
  Calender $make(CopyWithData data) => Calender(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    season: data.get(#season, or: $value.season),
    loops: data.get(#loops, or: $value.loops),
    days: data.get(#days, or: $value.days),
  );

  @override
  CalenderCopyWith<$R2, Calender, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CalenderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CalendarDayMapper extends ClassMapperBase<CalendarDay> {
  CalendarDayMapper._();

  static CalendarDayMapper? _instance;
  static CalendarDayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalendarDayMapper._());
      CalenderDayEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CalendarDay';

  static DateTime _$day(CalendarDay v) => v.day;
  static const Field<CalendarDay, DateTime> _f$day = Field('day', _$day);
  static List<CalenderDayEvent> _$events(CalendarDay v) => v.events;
  static const Field<CalendarDay, List<CalenderDayEvent>> _f$events = Field(
    'events',
    _$events,
  );

  @override
  final MappableFields<CalendarDay> fields = const {
    #day: _f$day,
    #events: _f$events,
  };
  @override
  final bool ignoreNull = true;

  static CalendarDay _instantiate(DecodingData data) {
    return CalendarDay(day: data.dec(_f$day), events: data.dec(_f$events));
  }

  @override
  final Function instantiate = _instantiate;

  static CalendarDay fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalendarDay>(map);
  }

  static CalendarDay fromJson(String json) {
    return ensureInitialized().decodeJson<CalendarDay>(json);
  }
}

mixin CalendarDayMappable {
  String toJson() {
    return CalendarDayMapper.ensureInitialized().encodeJson<CalendarDay>(
      this as CalendarDay,
    );
  }

  Map<String, dynamic> toMap() {
    return CalendarDayMapper.ensureInitialized().encodeMap<CalendarDay>(
      this as CalendarDay,
    );
  }

  CalendarDayCopyWith<CalendarDay, CalendarDay, CalendarDay> get copyWith =>
      _CalendarDayCopyWithImpl<CalendarDay, CalendarDay>(
        this as CalendarDay,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CalendarDayMapper.ensureInitialized().stringifyValue(
      this as CalendarDay,
    );
  }

  @override
  bool operator ==(Object other) {
    return CalendarDayMapper.ensureInitialized().equalsValue(
      this as CalendarDay,
      other,
    );
  }

  @override
  int get hashCode {
    return CalendarDayMapper.ensureInitialized().hashValue(this as CalendarDay);
  }
}

extension CalendarDayValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalendarDay, $Out> {
  CalendarDayCopyWith<$R, CalendarDay, $Out> get $asCalendarDay =>
      $base.as((v, t, t2) => _CalendarDayCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CalendarDayCopyWith<$R, $In extends CalendarDay, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CalenderDayEvent,
    CalenderDayEventCopyWith<$R, CalenderDayEvent, CalenderDayEvent>
  >
  get events;
  $R call({DateTime? day, List<CalenderDayEvent>? events});
  CalendarDayCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CalendarDayCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalendarDay, $Out>
    implements CalendarDayCopyWith<$R, CalendarDay, $Out> {
  _CalendarDayCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalendarDay> $mapper =
      CalendarDayMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CalenderDayEvent,
    CalenderDayEventCopyWith<$R, CalenderDayEvent, CalenderDayEvent>
  >
  get events => ListCopyWith(
    $value.events,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(events: v),
  );
  @override
  $R call({DateTime? day, List<CalenderDayEvent>? events}) => $apply(
    FieldCopyWithData({
      if (day != null) #day: day,
      if (events != null) #events: events,
    }),
  );
  @override
  CalendarDay $make(CopyWithData data) => CalendarDay(
    day: data.get(#day, or: $value.day),
    events: data.get(#events, or: $value.events),
  );

  @override
  CalendarDayCopyWith<$R2, CalendarDay, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CalendarDayCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CalenderDayEventMapper extends ClassMapperBase<CalenderDayEvent> {
  CalenderDayEventMapper._();

  static CalenderDayEventMapper? _instance;
  static CalenderDayEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalenderDayEventMapper._());
      CalenderDayChallengeMapper.ensureInitialized();
      CalenderDayRewardMapper.ensureInitialized();
      CalenderDayUpgradeMapper.ensureInitialized();
      CalenderDayBirthdayMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CalenderDayEvent';

  static String _$type(CalenderDayEvent v) => v.type;
  static const Field<CalenderDayEvent, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<CalenderDayEvent> fields = const {#type: _f$type};
  @override
  final bool ignoreNull = true;

  static CalenderDayEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'CalenderDayEvent',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalenderDayEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalenderDayEvent>(map);
  }

  static CalenderDayEvent fromJson(String json) {
    return ensureInitialized().decodeJson<CalenderDayEvent>(json);
  }
}

mixin CalenderDayEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  CalenderDayEventCopyWith<CalenderDayEvent, CalenderDayEvent, CalenderDayEvent>
  get copyWith;
}

abstract class CalenderDayEventCopyWith<$R, $In extends CalenderDayEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? type});
  CalenderDayEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class CalenderDayChallengeMapper
    extends SubClassMapperBase<CalenderDayChallenge> {
  CalenderDayChallengeMapper._();

  static CalenderDayChallengeMapper? _instance;
  static CalenderDayChallengeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalenderDayChallengeMapper._());
      CalenderDayEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CalenderDayChallenge';

  static String _$type(CalenderDayChallenge v) => v.type;
  static const Field<CalenderDayChallenge, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$title(CalenderDayChallenge v) => v.title;
  static const Field<CalenderDayChallenge, String> _f$title = Field(
    'title',
    _$title,
  );
  static String _$description(CalenderDayChallenge v) => v.description;
  static const Field<CalenderDayChallenge, String> _f$description = Field(
    'description',
    _$description,
  );

  @override
  final MappableFields<CalenderDayChallenge> fields = const {
    #type: _f$type,
    #title: _f$title,
    #description: _f$description,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'CET_CHALLENGE';
  @override
  late final ClassMapperBase superMapper =
      CalenderDayEventMapper.ensureInitialized();

  static CalenderDayChallenge _instantiate(DecodingData data) {
    return CalenderDayChallenge(
      type: data.dec(_f$type),
      title: data.dec(_f$title),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalenderDayChallenge fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalenderDayChallenge>(map);
  }

  static CalenderDayChallenge fromJson(String json) {
    return ensureInitialized().decodeJson<CalenderDayChallenge>(json);
  }
}

mixin CalenderDayChallengeMappable {
  String toJson() {
    return CalenderDayChallengeMapper.ensureInitialized()
        .encodeJson<CalenderDayChallenge>(this as CalenderDayChallenge);
  }

  Map<String, dynamic> toMap() {
    return CalenderDayChallengeMapper.ensureInitialized()
        .encodeMap<CalenderDayChallenge>(this as CalenderDayChallenge);
  }

  CalenderDayChallengeCopyWith<
    CalenderDayChallenge,
    CalenderDayChallenge,
    CalenderDayChallenge
  >
  get copyWith =>
      _CalenderDayChallengeCopyWithImpl<
        CalenderDayChallenge,
        CalenderDayChallenge
      >(this as CalenderDayChallenge, $identity, $identity);
  @override
  String toString() {
    return CalenderDayChallengeMapper.ensureInitialized().stringifyValue(
      this as CalenderDayChallenge,
    );
  }

  @override
  bool operator ==(Object other) {
    return CalenderDayChallengeMapper.ensureInitialized().equalsValue(
      this as CalenderDayChallenge,
      other,
    );
  }

  @override
  int get hashCode {
    return CalenderDayChallengeMapper.ensureInitialized().hashValue(
      this as CalenderDayChallenge,
    );
  }
}

extension CalenderDayChallengeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalenderDayChallenge, $Out> {
  CalenderDayChallengeCopyWith<$R, CalenderDayChallenge, $Out>
  get $asCalenderDayChallenge => $base.as(
    (v, t, t2) => _CalenderDayChallengeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CalenderDayChallengeCopyWith<
  $R,
  $In extends CalenderDayChallenge,
  $Out
>
    implements CalenderDayEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? title, String? description});
  CalenderDayChallengeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CalenderDayChallengeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalenderDayChallenge, $Out>
    implements CalenderDayChallengeCopyWith<$R, CalenderDayChallenge, $Out> {
  _CalenderDayChallengeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalenderDayChallenge> $mapper =
      CalenderDayChallengeMapper.ensureInitialized();
  @override
  $R call({String? type, String? title, String? description}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (title != null) #title: title,
      if (description != null) #description: description,
    }),
  );
  @override
  CalenderDayChallenge $make(CopyWithData data) => CalenderDayChallenge(
    type: data.get(#type, or: $value.type),
    title: data.get(#title, or: $value.title),
    description: data.get(#description, or: $value.description),
  );

  @override
  CalenderDayChallengeCopyWith<$R2, CalenderDayChallenge, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CalenderDayChallengeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CalenderDayRewardMapper extends SubClassMapperBase<CalenderDayReward> {
  CalenderDayRewardMapper._();

  static CalenderDayRewardMapper? _instance;
  static CalenderDayRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalenderDayRewardMapper._());
      CalenderDayEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CalenderDayReward';

  static String _$type(CalenderDayReward v) => v.type;
  static const Field<CalenderDayReward, String> _f$type = Field('type', _$type);
  static String _$reward(CalenderDayReward v) => v.reward;
  static const Field<CalenderDayReward, String> _f$reward = Field(
    'reward',
    _$reward,
  );

  @override
  final MappableFields<CalenderDayReward> fields = const {
    #type: _f$type,
    #reward: _f$reward,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'CET_REWARD';
  @override
  late final ClassMapperBase superMapper =
      CalenderDayEventMapper.ensureInitialized();

  static CalenderDayReward _instantiate(DecodingData data) {
    return CalenderDayReward(
      type: data.dec(_f$type),
      reward: data.dec(_f$reward),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalenderDayReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalenderDayReward>(map);
  }

  static CalenderDayReward fromJson(String json) {
    return ensureInitialized().decodeJson<CalenderDayReward>(json);
  }
}

mixin CalenderDayRewardMappable {
  String toJson() {
    return CalenderDayRewardMapper.ensureInitialized()
        .encodeJson<CalenderDayReward>(this as CalenderDayReward);
  }

  Map<String, dynamic> toMap() {
    return CalenderDayRewardMapper.ensureInitialized()
        .encodeMap<CalenderDayReward>(this as CalenderDayReward);
  }

  CalenderDayRewardCopyWith<
    CalenderDayReward,
    CalenderDayReward,
    CalenderDayReward
  >
  get copyWith =>
      _CalenderDayRewardCopyWithImpl<CalenderDayReward, CalenderDayReward>(
        this as CalenderDayReward,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CalenderDayRewardMapper.ensureInitialized().stringifyValue(
      this as CalenderDayReward,
    );
  }

  @override
  bool operator ==(Object other) {
    return CalenderDayRewardMapper.ensureInitialized().equalsValue(
      this as CalenderDayReward,
      other,
    );
  }

  @override
  int get hashCode {
    return CalenderDayRewardMapper.ensureInitialized().hashValue(
      this as CalenderDayReward,
    );
  }
}

extension CalenderDayRewardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalenderDayReward, $Out> {
  CalenderDayRewardCopyWith<$R, CalenderDayReward, $Out>
  get $asCalenderDayReward => $base.as(
    (v, t, t2) => _CalenderDayRewardCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CalenderDayRewardCopyWith<
  $R,
  $In extends CalenderDayReward,
  $Out
>
    implements CalenderDayEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? reward});
  CalenderDayRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CalenderDayRewardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalenderDayReward, $Out>
    implements CalenderDayRewardCopyWith<$R, CalenderDayReward, $Out> {
  _CalenderDayRewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalenderDayReward> $mapper =
      CalenderDayRewardMapper.ensureInitialized();
  @override
  $R call({String? type, String? reward}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (reward != null) #reward: reward,
    }),
  );
  @override
  CalenderDayReward $make(CopyWithData data) => CalenderDayReward(
    type: data.get(#type, or: $value.type),
    reward: data.get(#reward, or: $value.reward),
  );

  @override
  CalenderDayRewardCopyWith<$R2, CalenderDayReward, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CalenderDayRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CalenderDayUpgradeMapper extends SubClassMapperBase<CalenderDayUpgrade> {
  CalenderDayUpgradeMapper._();

  static CalenderDayUpgradeMapper? _instance;
  static CalenderDayUpgradeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalenderDayUpgradeMapper._());
      CalenderDayEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CalenderDayUpgrade';

  static String _$type(CalenderDayUpgrade v) => v.type;
  static const Field<CalenderDayUpgrade, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$name(CalenderDayUpgrade v) => v.name;
  static const Field<CalenderDayUpgrade, String> _f$name = Field(
    'name',
    _$name,
  );
  static String _$description(CalenderDayUpgrade v) => v.description;
  static const Field<CalenderDayUpgrade, String> _f$description = Field(
    'description',
    _$description,
  );

  @override
  final MappableFields<CalenderDayUpgrade> fields = const {
    #type: _f$type,
    #name: _f$name,
    #description: _f$description,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'CET_UPGRADE';
  @override
  late final ClassMapperBase superMapper =
      CalenderDayEventMapper.ensureInitialized();

  static CalenderDayUpgrade _instantiate(DecodingData data) {
    return CalenderDayUpgrade(
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalenderDayUpgrade fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalenderDayUpgrade>(map);
  }

  static CalenderDayUpgrade fromJson(String json) {
    return ensureInitialized().decodeJson<CalenderDayUpgrade>(json);
  }
}

mixin CalenderDayUpgradeMappable {
  String toJson() {
    return CalenderDayUpgradeMapper.ensureInitialized()
        .encodeJson<CalenderDayUpgrade>(this as CalenderDayUpgrade);
  }

  Map<String, dynamic> toMap() {
    return CalenderDayUpgradeMapper.ensureInitialized()
        .encodeMap<CalenderDayUpgrade>(this as CalenderDayUpgrade);
  }

  CalenderDayUpgradeCopyWith<
    CalenderDayUpgrade,
    CalenderDayUpgrade,
    CalenderDayUpgrade
  >
  get copyWith =>
      _CalenderDayUpgradeCopyWithImpl<CalenderDayUpgrade, CalenderDayUpgrade>(
        this as CalenderDayUpgrade,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CalenderDayUpgradeMapper.ensureInitialized().stringifyValue(
      this as CalenderDayUpgrade,
    );
  }

  @override
  bool operator ==(Object other) {
    return CalenderDayUpgradeMapper.ensureInitialized().equalsValue(
      this as CalenderDayUpgrade,
      other,
    );
  }

  @override
  int get hashCode {
    return CalenderDayUpgradeMapper.ensureInitialized().hashValue(
      this as CalenderDayUpgrade,
    );
  }
}

extension CalenderDayUpgradeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalenderDayUpgrade, $Out> {
  CalenderDayUpgradeCopyWith<$R, CalenderDayUpgrade, $Out>
  get $asCalenderDayUpgrade => $base.as(
    (v, t, t2) => _CalenderDayUpgradeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CalenderDayUpgradeCopyWith<
  $R,
  $In extends CalenderDayUpgrade,
  $Out
>
    implements CalenderDayEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? name, String? description});
  CalenderDayUpgradeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CalenderDayUpgradeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalenderDayUpgrade, $Out>
    implements CalenderDayUpgradeCopyWith<$R, CalenderDayUpgrade, $Out> {
  _CalenderDayUpgradeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalenderDayUpgrade> $mapper =
      CalenderDayUpgradeMapper.ensureInitialized();
  @override
  $R call({String? type, String? name, String? description}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (description != null) #description: description,
    }),
  );
  @override
  CalenderDayUpgrade $make(CopyWithData data) => CalenderDayUpgrade(
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
  );

  @override
  CalenderDayUpgradeCopyWith<$R2, CalenderDayUpgrade, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CalenderDayUpgradeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CalenderDayBirthdayMapper
    extends SubClassMapperBase<CalenderDayBirthday> {
  CalenderDayBirthdayMapper._();

  static CalenderDayBirthdayMapper? _instance;
  static CalenderDayBirthdayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalenderDayBirthdayMapper._());
      CalenderDayEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CalenderDayBirthday';

  static String _$type(CalenderDayBirthday v) => v.type;
  static const Field<CalenderDayBirthday, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$name(CalenderDayBirthday v) => v.name;
  static const Field<CalenderDayBirthday, String> _f$name = Field(
    'name',
    _$name,
  );
  static String _$conversation(CalenderDayBirthday v) => v.conversation;
  static const Field<CalenderDayBirthday, String> _f$conversation = Field(
    'conversation',
    _$conversation,
  );

  @override
  final MappableFields<CalenderDayBirthday> fields = const {
    #type: _f$type,
    #name: _f$name,
    #conversation: _f$conversation,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'CET_PLOT';
  @override
  late final ClassMapperBase superMapper =
      CalenderDayEventMapper.ensureInitialized();

  static CalenderDayBirthday _instantiate(DecodingData data) {
    return CalenderDayBirthday(
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      conversation: data.dec(_f$conversation),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalenderDayBirthday fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalenderDayBirthday>(map);
  }

  static CalenderDayBirthday fromJson(String json) {
    return ensureInitialized().decodeJson<CalenderDayBirthday>(json);
  }
}

mixin CalenderDayBirthdayMappable {
  String toJson() {
    return CalenderDayBirthdayMapper.ensureInitialized()
        .encodeJson<CalenderDayBirthday>(this as CalenderDayBirthday);
  }

  Map<String, dynamic> toMap() {
    return CalenderDayBirthdayMapper.ensureInitialized()
        .encodeMap<CalenderDayBirthday>(this as CalenderDayBirthday);
  }

  CalenderDayBirthdayCopyWith<
    CalenderDayBirthday,
    CalenderDayBirthday,
    CalenderDayBirthday
  >
  get copyWith =>
      _CalenderDayBirthdayCopyWithImpl<
        CalenderDayBirthday,
        CalenderDayBirthday
      >(this as CalenderDayBirthday, $identity, $identity);
  @override
  String toString() {
    return CalenderDayBirthdayMapper.ensureInitialized().stringifyValue(
      this as CalenderDayBirthday,
    );
  }

  @override
  bool operator ==(Object other) {
    return CalenderDayBirthdayMapper.ensureInitialized().equalsValue(
      this as CalenderDayBirthday,
      other,
    );
  }

  @override
  int get hashCode {
    return CalenderDayBirthdayMapper.ensureInitialized().hashValue(
      this as CalenderDayBirthday,
    );
  }
}

extension CalenderDayBirthdayValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalenderDayBirthday, $Out> {
  CalenderDayBirthdayCopyWith<$R, CalenderDayBirthday, $Out>
  get $asCalenderDayBirthday => $base.as(
    (v, t, t2) => _CalenderDayBirthdayCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CalenderDayBirthdayCopyWith<
  $R,
  $In extends CalenderDayBirthday,
  $Out
>
    implements CalenderDayEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? name, String? conversation});
  CalenderDayBirthdayCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CalenderDayBirthdayCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalenderDayBirthday, $Out>
    implements CalenderDayBirthdayCopyWith<$R, CalenderDayBirthday, $Out> {
  _CalenderDayBirthdayCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalenderDayBirthday> $mapper =
      CalenderDayBirthdayMapper.ensureInitialized();
  @override
  $R call({String? type, String? name, String? conversation}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (conversation != null) #conversation: conversation,
    }),
  );
  @override
  CalenderDayBirthday $make(CopyWithData data) => CalenderDayBirthday(
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    conversation: data.get(#conversation, or: $value.conversation),
  );

  @override
  CalenderDayBirthdayCopyWith<$R2, CalenderDayBirthday, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CalenderDayBirthdayCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

