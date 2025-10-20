// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'calendar.dart';

class RawCalendarMapper extends ClassMapperBase<RawCalendar> {
  RawCalendarMapper._();

  static RawCalendarMapper? _instance;
  static RawCalendarMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawCalendarMapper._());
      RawCalendarDayMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawCalendar';

  static Map<String, dynamic>? _$activation(RawCalendar v) => v.activation;
  static const Field<RawCalendar, Map<String, dynamic>> _f$activation = Field(
    'activation',
    _$activation,
    key: r'Activation',
  );
  static Map<String, dynamic>? _$expiry(RawCalendar v) => v.expiry;
  static const Field<RawCalendar, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String _$season(RawCalendar v) => v.season;
  static const Field<RawCalendar, String> _f$season = Field(
    'season',
    _$season,
    key: r'Season',
  );
  static int _$yearIteration(RawCalendar v) => v.yearIteration;
  static const Field<RawCalendar, int> _f$yearIteration = Field(
    'yearIteration',
    _$yearIteration,
    key: r'YearIteration',
  );
  static int _$version(RawCalendar v) => v.version;
  static const Field<RawCalendar, int> _f$version = Field(
    'version',
    _$version,
    key: r'Version',
  );
  static List<RawCalendarDay> _$days(RawCalendar v) => v.days;
  static const Field<RawCalendar, List<RawCalendarDay>> _f$days = Field(
    'days',
    _$days,
    key: r'Days',
  );

  @override
  final MappableFields<RawCalendar> fields = const {
    #activation: _f$activation,
    #expiry: _f$expiry,
    #season: _f$season,
    #yearIteration: _f$yearIteration,
    #version: _f$version,
    #days: _f$days,
  };
  @override
  final bool ignoreNull = true;

  static RawCalendar _instantiate(DecodingData data) {
    return RawCalendar(
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

  static RawCalendar fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawCalendar>(map);
  }

  static RawCalendar fromJson(String json) {
    return ensureInitialized().decodeJson<RawCalendar>(json);
  }
}

mixin RawCalendarMappable {
  String toJson() {
    return RawCalendarMapper.ensureInitialized().encodeJson<RawCalendar>(
      this as RawCalendar,
    );
  }

  Map<String, dynamic> toMap() {
    return RawCalendarMapper.ensureInitialized().encodeMap<RawCalendar>(
      this as RawCalendar,
    );
  }

  RawCalendarCopyWith<RawCalendar, RawCalendar, RawCalendar> get copyWith =>
      _RawCalendarCopyWithImpl<RawCalendar, RawCalendar>(
        this as RawCalendar,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawCalendarMapper.ensureInitialized().stringifyValue(
      this as RawCalendar,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawCalendarMapper.ensureInitialized().equalsValue(
      this as RawCalendar,
      other,
    );
  }

  @override
  int get hashCode {
    return RawCalendarMapper.ensureInitialized().hashValue(this as RawCalendar);
  }
}

extension RawCalendarValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawCalendar, $Out> {
  RawCalendarCopyWith<$R, RawCalendar, $Out> get $asRawCalendar =>
      $base.as((v, t, t2) => _RawCalendarCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawCalendarCopyWith<$R, $In extends RawCalendar, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  ListCopyWith<
    $R,
    RawCalendarDay,
    RawCalendarDayCopyWith<$R, RawCalendarDay, RawCalendarDay>
  >
  get days;
  $R call({
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? season,
    int? yearIteration,
    int? version,
    List<RawCalendarDay>? days,
  });
  RawCalendarCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawCalendarCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawCalendar, $Out>
    implements RawCalendarCopyWith<$R, RawCalendar, $Out> {
  _RawCalendarCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawCalendar> $mapper =
      RawCalendarMapper.ensureInitialized();
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
    RawCalendarDay,
    RawCalendarDayCopyWith<$R, RawCalendarDay, RawCalendarDay>
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
    List<RawCalendarDay>? days,
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
  RawCalendar $make(CopyWithData data) => RawCalendar(
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    season: data.get(#season, or: $value.season),
    yearIteration: data.get(#yearIteration, or: $value.yearIteration),
    version: data.get(#version, or: $value.version),
    days: data.get(#days, or: $value.days),
  );

  @override
  RawCalendarCopyWith<$R2, RawCalendar, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawCalendarCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawCalendarDayMapper extends ClassMapperBase<RawCalendarDay> {
  RawCalendarDayMapper._();

  static RawCalendarDayMapper? _instance;
  static RawCalendarDayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawCalendarDayMapper._());
      RawCalendarDayEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawCalendarDay';

  static int _$day(RawCalendarDay v) => v.day;
  static const Field<RawCalendarDay, int> _f$day = Field('day', _$day);
  static List<RawCalendarDayEvent> _$events(RawCalendarDay v) => v.events;
  static const Field<RawCalendarDay, List<RawCalendarDayEvent>> _f$events =
      Field('events', _$events);

  @override
  final MappableFields<RawCalendarDay> fields = const {
    #day: _f$day,
    #events: _f$events,
  };
  @override
  final bool ignoreNull = true;

  static RawCalendarDay _instantiate(DecodingData data) {
    return RawCalendarDay(day: data.dec(_f$day), events: data.dec(_f$events));
  }

  @override
  final Function instantiate = _instantiate;

  static RawCalendarDay fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawCalendarDay>(map);
  }

  static RawCalendarDay fromJson(String json) {
    return ensureInitialized().decodeJson<RawCalendarDay>(json);
  }
}

mixin RawCalendarDayMappable {
  String toJson() {
    return RawCalendarDayMapper.ensureInitialized().encodeJson<RawCalendarDay>(
      this as RawCalendarDay,
    );
  }

  Map<String, dynamic> toMap() {
    return RawCalendarDayMapper.ensureInitialized().encodeMap<RawCalendarDay>(
      this as RawCalendarDay,
    );
  }

  RawCalendarDayCopyWith<RawCalendarDay, RawCalendarDay, RawCalendarDay>
  get copyWith => _RawCalendarDayCopyWithImpl<RawCalendarDay, RawCalendarDay>(
    this as RawCalendarDay,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawCalendarDayMapper.ensureInitialized().stringifyValue(
      this as RawCalendarDay,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawCalendarDayMapper.ensureInitialized().equalsValue(
      this as RawCalendarDay,
      other,
    );
  }

  @override
  int get hashCode {
    return RawCalendarDayMapper.ensureInitialized().hashValue(
      this as RawCalendarDay,
    );
  }
}

extension RawCalendarDayValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawCalendarDay, $Out> {
  RawCalendarDayCopyWith<$R, RawCalendarDay, $Out> get $asRawCalendarDay =>
      $base.as((v, t, t2) => _RawCalendarDayCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawCalendarDayCopyWith<$R, $In extends RawCalendarDay, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    RawCalendarDayEvent,
    ObjectCopyWith<$R, RawCalendarDayEvent, RawCalendarDayEvent>
  >
  get events;
  $R call({int? day, List<RawCalendarDayEvent>? events});
  RawCalendarDayCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawCalendarDayCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawCalendarDay, $Out>
    implements RawCalendarDayCopyWith<$R, RawCalendarDay, $Out> {
  _RawCalendarDayCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawCalendarDay> $mapper =
      RawCalendarDayMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    RawCalendarDayEvent,
    ObjectCopyWith<$R, RawCalendarDayEvent, RawCalendarDayEvent>
  >
  get events => ListCopyWith(
    $value.events,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(events: v),
  );
  @override
  $R call({int? day, List<RawCalendarDayEvent>? events}) => $apply(
    FieldCopyWithData({
      if (day != null) #day: day,
      if (events != null) #events: events,
    }),
  );
  @override
  RawCalendarDay $make(CopyWithData data) => RawCalendarDay(
    day: data.get(#day, or: $value.day),
    events: data.get(#events, or: $value.events),
  );

  @override
  RawCalendarDayCopyWith<$R2, RawCalendarDay, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawCalendarDayCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawCalendarDayEventMapper extends RecordMapperBase<RawCalendarDayEvent> {
  static RawCalendarDayEventMapper? _instance;
  RawCalendarDayEventMapper._();

  static RawCalendarDayEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawCalendarDayEventMapper._());
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

  static String _$type(RawCalendarDayEvent v) => v.type;
  static const Field<RawCalendarDayEvent, String> _f$type = Field(
    'type',
    _$type,
  );
  static String? _$challenge(RawCalendarDayEvent v) => v.challenge;
  static const Field<RawCalendarDayEvent, String> _f$challenge = Field(
    'challenge',
    _$challenge,
  );
  static String? _$reward(RawCalendarDayEvent v) => v.reward;
  static const Field<RawCalendarDayEvent, String> _f$reward = Field(
    'reward',
    _$reward,
  );
  static String? _$upgrade(RawCalendarDayEvent v) => v.upgrade;
  static const Field<RawCalendarDayEvent, String> _f$upgrade = Field(
    'upgrade',
    _$upgrade,
  );
  static String? _$dialogueName(RawCalendarDayEvent v) => v.dialogueName;
  static const Field<RawCalendarDayEvent, String> _f$dialogueName = Field(
    'dialogueName',
    _$dialogueName,
  );
  static String? _$dialogueConvo(RawCalendarDayEvent v) => v.dialogueConvo;
  static const Field<RawCalendarDayEvent, String> _f$dialogueConvo = Field(
    'dialogueConvo',
    _$dialogueConvo,
  );

  @override
  final MappableFields<RawCalendarDayEvent> fields = const {
    #type: _f$type,
    #challenge: _f$challenge,
    #reward: _f$reward,
    #upgrade: _f$upgrade,
    #dialogueName: _f$dialogueName,
    #dialogueConvo: _f$dialogueConvo,
  };

  @override
  Function get typeFactory =>
      (f) => f<RawCalendarDayEvent>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static RawCalendarDayEvent _instantiate(
    DecodingData<RawCalendarDayEvent> data,
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

  static RawCalendarDayEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawCalendarDayEvent>(map);
  }

  static RawCalendarDayEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RawCalendarDayEvent>(json);
  }
}

extension RawCalendarDayEventMappable on RawCalendarDayEvent {
  Map<String, dynamic> toMap() {
    return RawCalendarDayEventMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return RawCalendarDayEventMapper.ensureInitialized().encodeJson(this);
  }

  RawCalendarDayEventCopyWith<RawCalendarDayEvent> get copyWith =>
      _RawCalendarDayEventCopyWithImpl(this, $identity, $identity);
}

extension RawCalendarDayEventValueCopy<$R>
    on ObjectCopyWith<$R, RawCalendarDayEvent, RawCalendarDayEvent> {
  RawCalendarDayEventCopyWith<$R> get $asRawCalendarDayEvent =>
      $base.as((v, t, t2) => _RawCalendarDayEventCopyWithImpl(v, t, t2));
}

abstract class RawCalendarDayEventCopyWith<$R>
    implements RecordCopyWith<$R, RawCalendarDayEvent> {
  $R call({
    String? type,
    String? challenge,
    String? reward,
    String? upgrade,
    String? dialogueName,
    String? dialogueConvo,
  });
  RawCalendarDayEventCopyWith<$R2> $chain<$R2>(
    Then<RawCalendarDayEvent, $R2> t,
  );
}

class _RawCalendarDayEventCopyWithImpl<$R>
    extends RecordCopyWithBase<$R, RawCalendarDayEvent>
    implements RawCalendarDayEventCopyWith<$R> {
  _RawCalendarDayEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<RawCalendarDayEvent> $mapper =
      RawCalendarDayEventMapper.ensureInitialized();
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
  RawCalendarDayEvent $make(CopyWithData data) => (
    type: data.get(#type, or: $value.type),
    challenge: data.get(#challenge, or: $value.challenge),
    reward: data.get(#reward, or: $value.reward),
    upgrade: data.get(#upgrade, or: $value.upgrade),
    dialogueName: data.get(#dialogueName, or: $value.dialogueName),
    dialogueConvo: data.get(#dialogueConvo, or: $value.dialogueConvo),
  );

  @override
  RawCalendarDayEventCopyWith<$R2> $chain<$R2>(
    Then<RawCalendarDayEvent, $R2> t,
  ) => _RawCalendarDayEventCopyWithImpl($value, $cast, t);
}

class CalendarMapper extends ClassMapperBase<Calendar> {
  CalendarMapper._();

  static CalendarMapper? _instance;
  static CalendarMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalendarMapper._());
      CalendarDayMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Calendar';

  static String _$id(Calendar v) => v.id;
  static const Field<Calendar, String> _f$id = Field('id', _$id);
  static DateTime? _$activation(Calendar v) => v.activation;
  static const Field<Calendar, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime? _$expiry(Calendar v) => v.expiry;
  static const Field<Calendar, DateTime> _f$expiry = Field('expiry', _$expiry);
  static String _$season(Calendar v) => v.season;
  static const Field<Calendar, String> _f$season = Field('season', _$season);
  static int _$loops(Calendar v) => v.loops;
  static const Field<Calendar, int> _f$loops = Field('loops', _$loops);
  static List<CalendarDay> _$days(Calendar v) => v.days;
  static const Field<Calendar, List<CalendarDay>> _f$days = Field(
    'days',
    _$days,
  );

  @override
  final MappableFields<Calendar> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #season: _f$season,
    #loops: _f$loops,
    #days: _f$days,
  };
  @override
  final bool ignoreNull = true;

  static Calendar _instantiate(DecodingData data) {
    return Calendar(
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

  static Calendar fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Calendar>(map);
  }

  static Calendar fromJson(String json) {
    return ensureInitialized().decodeJson<Calendar>(json);
  }
}

mixin CalendarMappable {
  String toJson() {
    return CalendarMapper.ensureInitialized().encodeJson<Calendar>(
      this as Calendar,
    );
  }

  Map<String, dynamic> toMap() {
    return CalendarMapper.ensureInitialized().encodeMap<Calendar>(
      this as Calendar,
    );
  }

  CalendarCopyWith<Calendar, Calendar, Calendar> get copyWith =>
      _CalendarCopyWithImpl<Calendar, Calendar>(
        this as Calendar,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CalendarMapper.ensureInitialized().stringifyValue(this as Calendar);
  }

  @override
  bool operator ==(Object other) {
    return CalendarMapper.ensureInitialized().equalsValue(
      this as Calendar,
      other,
    );
  }

  @override
  int get hashCode {
    return CalendarMapper.ensureInitialized().hashValue(this as Calendar);
  }
}

extension CalendarValueCopy<$R, $Out> on ObjectCopyWith<$R, Calendar, $Out> {
  CalendarCopyWith<$R, Calendar, $Out> get $asCalendar =>
      $base.as((v, t, t2) => _CalendarCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CalendarCopyWith<$R, $In extends Calendar, $Out>
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
  CalendarCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CalendarCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Calendar, $Out>
    implements CalendarCopyWith<$R, Calendar, $Out> {
  _CalendarCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Calendar> $mapper =
      CalendarMapper.ensureInitialized();
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
  Calendar $make(CopyWithData data) => Calendar(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    season: data.get(#season, or: $value.season),
    loops: data.get(#loops, or: $value.loops),
    days: data.get(#days, or: $value.days),
  );

  @override
  CalendarCopyWith<$R2, Calendar, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CalendarCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CalendarDayMapper extends ClassMapperBase<CalendarDay> {
  CalendarDayMapper._();

  static CalendarDayMapper? _instance;
  static CalendarDayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalendarDayMapper._());
      CalendarDayEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CalendarDay';

  static DateTime _$day(CalendarDay v) => v.day;
  static const Field<CalendarDay, DateTime> _f$day = Field('day', _$day);
  static List<CalendarDayEvent> _$events(CalendarDay v) => v.events;
  static const Field<CalendarDay, List<CalendarDayEvent>> _f$events = Field(
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
    CalendarDayEvent,
    CalendarDayEventCopyWith<$R, CalendarDayEvent, CalendarDayEvent>
  >
  get events;
  $R call({DateTime? day, List<CalendarDayEvent>? events});
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
    CalendarDayEvent,
    CalendarDayEventCopyWith<$R, CalendarDayEvent, CalendarDayEvent>
  >
  get events => ListCopyWith(
    $value.events,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(events: v),
  );
  @override
  $R call({DateTime? day, List<CalendarDayEvent>? events}) => $apply(
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

class CalendarDayEventMapper extends ClassMapperBase<CalendarDayEvent> {
  CalendarDayEventMapper._();

  static CalendarDayEventMapper? _instance;
  static CalendarDayEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalendarDayEventMapper._());
      CalendarDayChallengeMapper.ensureInitialized();
      CalendarDayRewardMapper.ensureInitialized();
      CalendarDayUpgradeMapper.ensureInitialized();
      CalendarDayBirthdayMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CalendarDayEvent';

  static String _$type(CalendarDayEvent v) => v.type;
  static const Field<CalendarDayEvent, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<CalendarDayEvent> fields = const {#type: _f$type};
  @override
  final bool ignoreNull = true;

  static CalendarDayEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'CalendarDayEvent',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalendarDayEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalendarDayEvent>(map);
  }

  static CalendarDayEvent fromJson(String json) {
    return ensureInitialized().decodeJson<CalendarDayEvent>(json);
  }
}

mixin CalendarDayEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  CalendarDayEventCopyWith<CalendarDayEvent, CalendarDayEvent, CalendarDayEvent>
  get copyWith;
}

abstract class CalendarDayEventCopyWith<$R, $In extends CalendarDayEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? type});
  CalendarDayEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class CalendarDayChallengeMapper
    extends SubClassMapperBase<CalendarDayChallenge> {
  CalendarDayChallengeMapper._();

  static CalendarDayChallengeMapper? _instance;
  static CalendarDayChallengeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalendarDayChallengeMapper._());
      CalendarDayEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CalendarDayChallenge';

  static String _$type(CalendarDayChallenge v) => v.type;
  static const Field<CalendarDayChallenge, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$title(CalendarDayChallenge v) => v.title;
  static const Field<CalendarDayChallenge, String> _f$title = Field(
    'title',
    _$title,
  );
  static String _$description(CalendarDayChallenge v) => v.description;
  static const Field<CalendarDayChallenge, String> _f$description = Field(
    'description',
    _$description,
  );

  @override
  final MappableFields<CalendarDayChallenge> fields = const {
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
      CalendarDayEventMapper.ensureInitialized();

  static CalendarDayChallenge _instantiate(DecodingData data) {
    return CalendarDayChallenge(
      type: data.dec(_f$type),
      title: data.dec(_f$title),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalendarDayChallenge fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalendarDayChallenge>(map);
  }

  static CalendarDayChallenge fromJson(String json) {
    return ensureInitialized().decodeJson<CalendarDayChallenge>(json);
  }
}

mixin CalendarDayChallengeMappable {
  String toJson() {
    return CalendarDayChallengeMapper.ensureInitialized()
        .encodeJson<CalendarDayChallenge>(this as CalendarDayChallenge);
  }

  Map<String, dynamic> toMap() {
    return CalendarDayChallengeMapper.ensureInitialized()
        .encodeMap<CalendarDayChallenge>(this as CalendarDayChallenge);
  }

  CalendarDayChallengeCopyWith<
    CalendarDayChallenge,
    CalendarDayChallenge,
    CalendarDayChallenge
  >
  get copyWith =>
      _CalendarDayChallengeCopyWithImpl<
        CalendarDayChallenge,
        CalendarDayChallenge
      >(this as CalendarDayChallenge, $identity, $identity);
  @override
  String toString() {
    return CalendarDayChallengeMapper.ensureInitialized().stringifyValue(
      this as CalendarDayChallenge,
    );
  }

  @override
  bool operator ==(Object other) {
    return CalendarDayChallengeMapper.ensureInitialized().equalsValue(
      this as CalendarDayChallenge,
      other,
    );
  }

  @override
  int get hashCode {
    return CalendarDayChallengeMapper.ensureInitialized().hashValue(
      this as CalendarDayChallenge,
    );
  }
}

extension CalendarDayChallengeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalendarDayChallenge, $Out> {
  CalendarDayChallengeCopyWith<$R, CalendarDayChallenge, $Out>
  get $asCalendarDayChallenge => $base.as(
    (v, t, t2) => _CalendarDayChallengeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CalendarDayChallengeCopyWith<
  $R,
  $In extends CalendarDayChallenge,
  $Out
>
    implements CalendarDayEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? title, String? description});
  CalendarDayChallengeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CalendarDayChallengeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalendarDayChallenge, $Out>
    implements CalendarDayChallengeCopyWith<$R, CalendarDayChallenge, $Out> {
  _CalendarDayChallengeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalendarDayChallenge> $mapper =
      CalendarDayChallengeMapper.ensureInitialized();
  @override
  $R call({String? type, String? title, String? description}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (title != null) #title: title,
      if (description != null) #description: description,
    }),
  );
  @override
  CalendarDayChallenge $make(CopyWithData data) => CalendarDayChallenge(
    type: data.get(#type, or: $value.type),
    title: data.get(#title, or: $value.title),
    description: data.get(#description, or: $value.description),
  );

  @override
  CalendarDayChallengeCopyWith<$R2, CalendarDayChallenge, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CalendarDayChallengeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CalendarDayRewardMapper extends SubClassMapperBase<CalendarDayReward> {
  CalendarDayRewardMapper._();

  static CalendarDayRewardMapper? _instance;
  static CalendarDayRewardMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalendarDayRewardMapper._());
      CalendarDayEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CalendarDayReward';

  static String _$type(CalendarDayReward v) => v.type;
  static const Field<CalendarDayReward, String> _f$type = Field('type', _$type);
  static String _$reward(CalendarDayReward v) => v.reward;
  static const Field<CalendarDayReward, String> _f$reward = Field(
    'reward',
    _$reward,
  );

  @override
  final MappableFields<CalendarDayReward> fields = const {
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
      CalendarDayEventMapper.ensureInitialized();

  static CalendarDayReward _instantiate(DecodingData data) {
    return CalendarDayReward(
      type: data.dec(_f$type),
      reward: data.dec(_f$reward),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalendarDayReward fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalendarDayReward>(map);
  }

  static CalendarDayReward fromJson(String json) {
    return ensureInitialized().decodeJson<CalendarDayReward>(json);
  }
}

mixin CalendarDayRewardMappable {
  String toJson() {
    return CalendarDayRewardMapper.ensureInitialized()
        .encodeJson<CalendarDayReward>(this as CalendarDayReward);
  }

  Map<String, dynamic> toMap() {
    return CalendarDayRewardMapper.ensureInitialized()
        .encodeMap<CalendarDayReward>(this as CalendarDayReward);
  }

  CalendarDayRewardCopyWith<
    CalendarDayReward,
    CalendarDayReward,
    CalendarDayReward
  >
  get copyWith =>
      _CalendarDayRewardCopyWithImpl<CalendarDayReward, CalendarDayReward>(
        this as CalendarDayReward,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CalendarDayRewardMapper.ensureInitialized().stringifyValue(
      this as CalendarDayReward,
    );
  }

  @override
  bool operator ==(Object other) {
    return CalendarDayRewardMapper.ensureInitialized().equalsValue(
      this as CalendarDayReward,
      other,
    );
  }

  @override
  int get hashCode {
    return CalendarDayRewardMapper.ensureInitialized().hashValue(
      this as CalendarDayReward,
    );
  }
}

extension CalendarDayRewardValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalendarDayReward, $Out> {
  CalendarDayRewardCopyWith<$R, CalendarDayReward, $Out>
  get $asCalendarDayReward => $base.as(
    (v, t, t2) => _CalendarDayRewardCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CalendarDayRewardCopyWith<
  $R,
  $In extends CalendarDayReward,
  $Out
>
    implements CalendarDayEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? reward});
  CalendarDayRewardCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CalendarDayRewardCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalendarDayReward, $Out>
    implements CalendarDayRewardCopyWith<$R, CalendarDayReward, $Out> {
  _CalendarDayRewardCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalendarDayReward> $mapper =
      CalendarDayRewardMapper.ensureInitialized();
  @override
  $R call({String? type, String? reward}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (reward != null) #reward: reward,
    }),
  );
  @override
  CalendarDayReward $make(CopyWithData data) => CalendarDayReward(
    type: data.get(#type, or: $value.type),
    reward: data.get(#reward, or: $value.reward),
  );

  @override
  CalendarDayRewardCopyWith<$R2, CalendarDayReward, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CalendarDayRewardCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CalendarDayUpgradeMapper extends SubClassMapperBase<CalendarDayUpgrade> {
  CalendarDayUpgradeMapper._();

  static CalendarDayUpgradeMapper? _instance;
  static CalendarDayUpgradeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalendarDayUpgradeMapper._());
      CalendarDayEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CalendarDayUpgrade';

  static String _$type(CalendarDayUpgrade v) => v.type;
  static const Field<CalendarDayUpgrade, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$name(CalendarDayUpgrade v) => v.name;
  static const Field<CalendarDayUpgrade, String> _f$name = Field(
    'name',
    _$name,
  );
  static String _$description(CalendarDayUpgrade v) => v.description;
  static const Field<CalendarDayUpgrade, String> _f$description = Field(
    'description',
    _$description,
  );

  @override
  final MappableFields<CalendarDayUpgrade> fields = const {
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
      CalendarDayEventMapper.ensureInitialized();

  static CalendarDayUpgrade _instantiate(DecodingData data) {
    return CalendarDayUpgrade(
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalendarDayUpgrade fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalendarDayUpgrade>(map);
  }

  static CalendarDayUpgrade fromJson(String json) {
    return ensureInitialized().decodeJson<CalendarDayUpgrade>(json);
  }
}

mixin CalendarDayUpgradeMappable {
  String toJson() {
    return CalendarDayUpgradeMapper.ensureInitialized()
        .encodeJson<CalendarDayUpgrade>(this as CalendarDayUpgrade);
  }

  Map<String, dynamic> toMap() {
    return CalendarDayUpgradeMapper.ensureInitialized()
        .encodeMap<CalendarDayUpgrade>(this as CalendarDayUpgrade);
  }

  CalendarDayUpgradeCopyWith<
    CalendarDayUpgrade,
    CalendarDayUpgrade,
    CalendarDayUpgrade
  >
  get copyWith =>
      _CalendarDayUpgradeCopyWithImpl<CalendarDayUpgrade, CalendarDayUpgrade>(
        this as CalendarDayUpgrade,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CalendarDayUpgradeMapper.ensureInitialized().stringifyValue(
      this as CalendarDayUpgrade,
    );
  }

  @override
  bool operator ==(Object other) {
    return CalendarDayUpgradeMapper.ensureInitialized().equalsValue(
      this as CalendarDayUpgrade,
      other,
    );
  }

  @override
  int get hashCode {
    return CalendarDayUpgradeMapper.ensureInitialized().hashValue(
      this as CalendarDayUpgrade,
    );
  }
}

extension CalendarDayUpgradeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalendarDayUpgrade, $Out> {
  CalendarDayUpgradeCopyWith<$R, CalendarDayUpgrade, $Out>
  get $asCalendarDayUpgrade => $base.as(
    (v, t, t2) => _CalendarDayUpgradeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CalendarDayUpgradeCopyWith<
  $R,
  $In extends CalendarDayUpgrade,
  $Out
>
    implements CalendarDayEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? name, String? description});
  CalendarDayUpgradeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CalendarDayUpgradeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalendarDayUpgrade, $Out>
    implements CalendarDayUpgradeCopyWith<$R, CalendarDayUpgrade, $Out> {
  _CalendarDayUpgradeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalendarDayUpgrade> $mapper =
      CalendarDayUpgradeMapper.ensureInitialized();
  @override
  $R call({String? type, String? name, String? description}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (description != null) #description: description,
    }),
  );
  @override
  CalendarDayUpgrade $make(CopyWithData data) => CalendarDayUpgrade(
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
  );

  @override
  CalendarDayUpgradeCopyWith<$R2, CalendarDayUpgrade, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CalendarDayUpgradeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CalendarDayBirthdayMapper
    extends SubClassMapperBase<CalendarDayBirthday> {
  CalendarDayBirthdayMapper._();

  static CalendarDayBirthdayMapper? _instance;
  static CalendarDayBirthdayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CalendarDayBirthdayMapper._());
      CalendarDayEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CalendarDayBirthday';

  static String _$type(CalendarDayBirthday v) => v.type;
  static const Field<CalendarDayBirthday, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$name(CalendarDayBirthday v) => v.name;
  static const Field<CalendarDayBirthday, String> _f$name = Field(
    'name',
    _$name,
  );
  static String _$conversation(CalendarDayBirthday v) => v.conversation;
  static const Field<CalendarDayBirthday, String> _f$conversation = Field(
    'conversation',
    _$conversation,
  );

  @override
  final MappableFields<CalendarDayBirthday> fields = const {
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
      CalendarDayEventMapper.ensureInitialized();

  static CalendarDayBirthday _instantiate(DecodingData data) {
    return CalendarDayBirthday(
      type: data.dec(_f$type),
      name: data.dec(_f$name),
      conversation: data.dec(_f$conversation),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CalendarDayBirthday fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CalendarDayBirthday>(map);
  }

  static CalendarDayBirthday fromJson(String json) {
    return ensureInitialized().decodeJson<CalendarDayBirthday>(json);
  }
}

mixin CalendarDayBirthdayMappable {
  String toJson() {
    return CalendarDayBirthdayMapper.ensureInitialized()
        .encodeJson<CalendarDayBirthday>(this as CalendarDayBirthday);
  }

  Map<String, dynamic> toMap() {
    return CalendarDayBirthdayMapper.ensureInitialized()
        .encodeMap<CalendarDayBirthday>(this as CalendarDayBirthday);
  }

  CalendarDayBirthdayCopyWith<
    CalendarDayBirthday,
    CalendarDayBirthday,
    CalendarDayBirthday
  >
  get copyWith =>
      _CalendarDayBirthdayCopyWithImpl<
        CalendarDayBirthday,
        CalendarDayBirthday
      >(this as CalendarDayBirthday, $identity, $identity);
  @override
  String toString() {
    return CalendarDayBirthdayMapper.ensureInitialized().stringifyValue(
      this as CalendarDayBirthday,
    );
  }

  @override
  bool operator ==(Object other) {
    return CalendarDayBirthdayMapper.ensureInitialized().equalsValue(
      this as CalendarDayBirthday,
      other,
    );
  }

  @override
  int get hashCode {
    return CalendarDayBirthdayMapper.ensureInitialized().hashValue(
      this as CalendarDayBirthday,
    );
  }
}

extension CalendarDayBirthdayValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CalendarDayBirthday, $Out> {
  CalendarDayBirthdayCopyWith<$R, CalendarDayBirthday, $Out>
  get $asCalendarDayBirthday => $base.as(
    (v, t, t2) => _CalendarDayBirthdayCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CalendarDayBirthdayCopyWith<
  $R,
  $In extends CalendarDayBirthday,
  $Out
>
    implements CalendarDayEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? name, String? conversation});
  CalendarDayBirthdayCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CalendarDayBirthdayCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CalendarDayBirthday, $Out>
    implements CalendarDayBirthdayCopyWith<$R, CalendarDayBirthday, $Out> {
  _CalendarDayBirthdayCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CalendarDayBirthday> $mapper =
      CalendarDayBirthdayMapper.ensureInitialized();
  @override
  $R call({String? type, String? name, String? conversation}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (name != null) #name: name,
      if (conversation != null) #conversation: conversation,
    }),
  );
  @override
  CalendarDayBirthday $make(CopyWithData data) => CalendarDayBirthday(
    type: data.get(#type, or: $value.type),
    name: data.get(#name, or: $value.name),
    conversation: data.get(#conversation, or: $value.conversation),
  );

  @override
  CalendarDayBirthdayCopyWith<$R2, CalendarDayBirthday, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CalendarDayBirthdayCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

