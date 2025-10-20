// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'news.dart';

class RawEventMapper extends ClassMapperBase<RawEvent> {
  RawEventMapper._();

  static RawEventMapper? _instance;
  static RawEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawEventMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawEvent';

  static Map<String, dynamic> _$id(RawEvent v) => v.id;
  static const Field<RawEvent, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static List<Map<String, dynamic>> _$messages(RawEvent v) => v.messages;
  static const Field<RawEvent, List<Map<String, dynamic>>> _f$messages = Field(
    'messages',
    _$messages,
    key: r'Messages',
  );
  static Map<String, dynamic>? _$date(RawEvent v) => v.date;
  static const Field<RawEvent, Map<String, dynamic>> _f$date = Field(
    'date',
    _$date,
    key: r'Date',
  );
  static bool _$priority(RawEvent v) => v.priority;
  static const Field<RawEvent, bool> _f$priority = Field(
    'priority',
    _$priority,
    key: r'Priority',
  );
  static String? _$prop(RawEvent v) => v.prop;
  static const Field<RawEvent, String> _f$prop = Field(
    'prop',
    _$prop,
    key: r'Prop',
  );
  static String? _$imageUrl(RawEvent v) => v.imageUrl;
  static const Field<RawEvent, String> _f$imageUrl = Field(
    'imageUrl',
    _$imageUrl,
    key: r'ImageUrl',
  );

  @override
  final MappableFields<RawEvent> fields = const {
    #id: _f$id,
    #messages: _f$messages,
    #date: _f$date,
    #priority: _f$priority,
    #prop: _f$prop,
    #imageUrl: _f$imageUrl,
  };
  @override
  final bool ignoreNull = true;

  static RawEvent _instantiate(DecodingData data) {
    return RawEvent(
      id: data.dec(_f$id),
      messages: data.dec(_f$messages),
      date: data.dec(_f$date),
      priority: data.dec(_f$priority),
      prop: data.dec(_f$prop),
      imageUrl: data.dec(_f$imageUrl),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawEvent>(map);
  }

  static RawEvent fromJson(String json) {
    return ensureInitialized().decodeJson<RawEvent>(json);
  }
}

mixin RawEventMappable {
  String toJson() {
    return RawEventMapper.ensureInitialized().encodeJson<RawEvent>(
      this as RawEvent,
    );
  }

  Map<String, dynamic> toMap() {
    return RawEventMapper.ensureInitialized().encodeMap<RawEvent>(
      this as RawEvent,
    );
  }

  RawEventCopyWith<RawEvent, RawEvent, RawEvent> get copyWith =>
      _RawEventCopyWithImpl<RawEvent, RawEvent>(
        this as RawEvent,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawEventMapper.ensureInitialized().stringifyValue(this as RawEvent);
  }

  @override
  bool operator ==(Object other) {
    return RawEventMapper.ensureInitialized().equalsValue(
      this as RawEvent,
      other,
    );
  }

  @override
  int get hashCode {
    return RawEventMapper.ensureInitialized().hashValue(this as RawEvent);
  }
}

extension RawEventValueCopy<$R, $Out> on ObjectCopyWith<$R, RawEvent, $Out> {
  RawEventCopyWith<$R, RawEvent, $Out> get $asRawEvent =>
      $base.as((v, t, t2) => _RawEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawEventCopyWith<$R, $In extends RawEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  ListCopyWith<
    $R,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >
  get messages;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get date;
  $R call({
    Map<String, dynamic>? id,
    List<Map<String, dynamic>>? messages,
    Map<String, dynamic>? date,
    bool? priority,
    String? prop,
    String? imageUrl,
  });
  RawEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawEvent, $Out>
    implements RawEventCopyWith<$R, RawEvent, $Out> {
  _RawEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawEvent> $mapper =
      RawEventMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get id => MapCopyWith(
    $value.id,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(id: v),
  );
  @override
  ListCopyWith<
    $R,
    Map<String, dynamic>,
    ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>
  >
  get messages => ListCopyWith(
    $value.messages,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(messages: v),
  );
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get date => $value.date != null
      ? MapCopyWith(
          $value.date!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(date: v),
        )
      : null;
  @override
  $R call({
    Map<String, dynamic>? id,
    List<Map<String, dynamic>>? messages,
    Object? date = $none,
    bool? priority,
    Object? prop = $none,
    Object? imageUrl = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (messages != null) #messages: messages,
      if (date != $none) #date: date,
      if (priority != null) #priority: priority,
      if (prop != $none) #prop: prop,
      if (imageUrl != $none) #imageUrl: imageUrl,
    }),
  );
  @override
  RawEvent $make(CopyWithData data) => RawEvent(
    id: data.get(#id, or: $value.id),
    messages: data.get(#messages, or: $value.messages),
    date: data.get(#date, or: $value.date),
    priority: data.get(#priority, or: $value.priority),
    prop: data.get(#prop, or: $value.prop),
    imageUrl: data.get(#imageUrl, or: $value.imageUrl),
  );

  @override
  RawEventCopyWith<$R2, RawEvent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NewsMapper extends ClassMapperBase<News> {
  NewsMapper._();

  static NewsMapper? _instance;
  static NewsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NewsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'News';

  static String _$id(News v) => v.id;
  static const Field<News, String> _f$id = Field('id', _$id);
  static String _$message(News v) => v.message;
  static const Field<News, String> _f$message = Field('message', _$message);
  static String? _$link(News v) => v.link;
  static const Field<News, String> _f$link = Field('link', _$link);
  static String? _$imageLink(News v) => v.imageLink;
  static const Field<News, String> _f$imageLink = Field(
    'imageLink',
    _$imageLink,
  );
  static DateTime _$date(News v) => v.date;
  static const Field<News, DateTime> _f$date = Field('date', _$date);
  static bool _$priority(News v) => v.priority;
  static const Field<News, bool> _f$priority = Field('priority', _$priority);
  static bool _$update(News v) => v.update;
  static const Field<News, bool> _f$update = Field('update', _$update);
  static bool _$primeAccess(News v) => v.primeAccess;
  static const Field<News, bool> _f$primeAccess = Field(
    'primeAccess',
    _$primeAccess,
  );
  static bool _$stream(News v) => v.stream;
  static const Field<News, bool> _f$stream = Field('stream', _$stream);
  static Map<String, String> _$translations(News v) => v.translations;
  static const Field<News, Map<String, String>> _f$translations = Field(
    'translations',
    _$translations,
  );

  @override
  final MappableFields<News> fields = const {
    #id: _f$id,
    #message: _f$message,
    #link: _f$link,
    #imageLink: _f$imageLink,
    #date: _f$date,
    #priority: _f$priority,
    #update: _f$update,
    #primeAccess: _f$primeAccess,
    #stream: _f$stream,
    #translations: _f$translations,
  };
  @override
  final bool ignoreNull = true;

  static News _instantiate(DecodingData data) {
    return News(
      id: data.dec(_f$id),
      message: data.dec(_f$message),
      link: data.dec(_f$link),
      imageLink: data.dec(_f$imageLink),
      date: data.dec(_f$date),
      priority: data.dec(_f$priority),
      update: data.dec(_f$update),
      primeAccess: data.dec(_f$primeAccess),
      stream: data.dec(_f$stream),
      translations: data.dec(_f$translations),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static News fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<News>(map);
  }

  static News fromJson(String json) {
    return ensureInitialized().decodeJson<News>(json);
  }
}

mixin NewsMappable {
  String toJson() {
    return NewsMapper.ensureInitialized().encodeJson<News>(this as News);
  }

  Map<String, dynamic> toMap() {
    return NewsMapper.ensureInitialized().encodeMap<News>(this as News);
  }

  NewsCopyWith<News, News, News> get copyWith =>
      _NewsCopyWithImpl<News, News>(this as News, $identity, $identity);
  @override
  String toString() {
    return NewsMapper.ensureInitialized().stringifyValue(this as News);
  }

  @override
  bool operator ==(Object other) {
    return NewsMapper.ensureInitialized().equalsValue(this as News, other);
  }

  @override
  int get hashCode {
    return NewsMapper.ensureInitialized().hashValue(this as News);
  }
}

extension NewsValueCopy<$R, $Out> on ObjectCopyWith<$R, News, $Out> {
  NewsCopyWith<$R, News, $Out> get $asNews =>
      $base.as((v, t, t2) => _NewsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NewsCopyWith<$R, $In extends News, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get translations;
  $R call({
    String? id,
    String? message,
    String? link,
    String? imageLink,
    DateTime? date,
    bool? priority,
    bool? update,
    bool? primeAccess,
    bool? stream,
    Map<String, String>? translations,
  });
  NewsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NewsCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, News, $Out>
    implements NewsCopyWith<$R, News, $Out> {
  _NewsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<News> $mapper = NewsMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
  get translations => MapCopyWith(
    $value.translations,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(translations: v),
  );
  @override
  $R call({
    String? id,
    String? message,
    Object? link = $none,
    Object? imageLink = $none,
    DateTime? date,
    bool? priority,
    bool? update,
    bool? primeAccess,
    bool? stream,
    Map<String, String>? translations,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (message != null) #message: message,
      if (link != $none) #link: link,
      if (imageLink != $none) #imageLink: imageLink,
      if (date != null) #date: date,
      if (priority != null) #priority: priority,
      if (update != null) #update: update,
      if (primeAccess != null) #primeAccess: primeAccess,
      if (stream != null) #stream: stream,
      if (translations != null) #translations: translations,
    }),
  );
  @override
  News $make(CopyWithData data) => News(
    id: data.get(#id, or: $value.id),
    message: data.get(#message, or: $value.message),
    link: data.get(#link, or: $value.link),
    imageLink: data.get(#imageLink, or: $value.imageLink),
    date: data.get(#date, or: $value.date),
    priority: data.get(#priority, or: $value.priority),
    update: data.get(#update, or: $value.update),
    primeAccess: data.get(#primeAccess, or: $value.primeAccess),
    stream: data.get(#stream, or: $value.stream),
    translations: data.get(#translations, or: $value.translations),
  );

  @override
  NewsCopyWith<$R2, News, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _NewsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

