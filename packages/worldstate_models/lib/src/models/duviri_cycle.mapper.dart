// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'duviri_cycle.dart';

class DuviriStateMapper extends EnumMapper<DuviriState> {
  DuviriStateMapper._();

  static DuviriStateMapper? _instance;
  static DuviriStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DuviriStateMapper._());
    }
    return _instance!;
  }

  static DuviriState fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DuviriState decode(dynamic value) {
    switch (value) {
      case r'Sorrow':
        return DuviriState.sorrow;
      case r'Fear':
        return DuviriState.fear;
      case r'Joy':
        return DuviriState.joy;
      case r'Anger':
        return DuviriState.anger;
      case r'Envy':
        return DuviriState.envy;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DuviriState self) {
    switch (self) {
      case DuviriState.sorrow:
        return r'Sorrow';
      case DuviriState.fear:
        return r'Fear';
      case DuviriState.joy:
        return r'Joy';
      case DuviriState.anger:
        return r'Anger';
      case DuviriState.envy:
        return r'Envy';
    }
  }
}

extension DuviriStateMapperExtension on DuviriState {
  String toValue() {
    DuviriStateMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DuviriState>(this) as String;
  }
}

class RawCircuitChoiceMapper extends ClassMapperBase<RawCircuitChoice> {
  RawCircuitChoiceMapper._();

  static RawCircuitChoiceMapper? _instance;
  static RawCircuitChoiceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawCircuitChoiceMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawCircuitChoice';

  static String _$category(RawCircuitChoice v) => v.category;
  static const Field<RawCircuitChoice, String> _f$category = Field(
    'category',
    _$category,
    key: r'Category',
  );
  static List<String> _$choices(RawCircuitChoice v) => v.choices;
  static const Field<RawCircuitChoice, List<String>> _f$choices = Field(
    'choices',
    _$choices,
    key: r'Choices',
  );

  @override
  final MappableFields<RawCircuitChoice> fields = const {
    #category: _f$category,
    #choices: _f$choices,
  };
  @override
  final bool ignoreNull = true;

  static RawCircuitChoice _instantiate(DecodingData data) {
    return RawCircuitChoice(
      category: data.dec(_f$category),
      choices: data.dec(_f$choices),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawCircuitChoice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawCircuitChoice>(map);
  }

  static RawCircuitChoice fromJson(String json) {
    return ensureInitialized().decodeJson<RawCircuitChoice>(json);
  }
}

mixin RawCircuitChoiceMappable {
  String toJson() {
    return RawCircuitChoiceMapper.ensureInitialized()
        .encodeJson<RawCircuitChoice>(this as RawCircuitChoice);
  }

  Map<String, dynamic> toMap() {
    return RawCircuitChoiceMapper.ensureInitialized()
        .encodeMap<RawCircuitChoice>(this as RawCircuitChoice);
  }

  RawCircuitChoiceCopyWith<RawCircuitChoice, RawCircuitChoice, RawCircuitChoice>
  get copyWith =>
      _RawCircuitChoiceCopyWithImpl<RawCircuitChoice, RawCircuitChoice>(
        this as RawCircuitChoice,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawCircuitChoiceMapper.ensureInitialized().stringifyValue(
      this as RawCircuitChoice,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawCircuitChoiceMapper.ensureInitialized().equalsValue(
      this as RawCircuitChoice,
      other,
    );
  }

  @override
  int get hashCode {
    return RawCircuitChoiceMapper.ensureInitialized().hashValue(
      this as RawCircuitChoice,
    );
  }
}

extension RawCircuitChoiceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawCircuitChoice, $Out> {
  RawCircuitChoiceCopyWith<$R, RawCircuitChoice, $Out>
  get $asRawCircuitChoice =>
      $base.as((v, t, t2) => _RawCircuitChoiceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawCircuitChoiceCopyWith<$R, $In extends RawCircuitChoice, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get choices;
  $R call({String? category, List<String>? choices});
  RawCircuitChoiceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawCircuitChoiceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawCircuitChoice, $Out>
    implements RawCircuitChoiceCopyWith<$R, RawCircuitChoice, $Out> {
  _RawCircuitChoiceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawCircuitChoice> $mapper =
      RawCircuitChoiceMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get choices =>
      ListCopyWith(
        $value.choices,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(choices: v),
      );
  @override
  $R call({String? category, List<String>? choices}) => $apply(
    FieldCopyWithData({
      if (category != null) #category: category,
      if (choices != null) #choices: choices,
    }),
  );
  @override
  RawCircuitChoice $make(CopyWithData data) => RawCircuitChoice(
    category: data.get(#category, or: $value.category),
    choices: data.get(#choices, or: $value.choices),
  );

  @override
  RawCircuitChoiceCopyWith<$R2, RawCircuitChoice, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawCircuitChoiceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DuviriCycleMapper extends ClassMapperBase<DuviriCycle> {
  DuviriCycleMapper._();

  static DuviriCycleMapper? _instance;
  static DuviriCycleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DuviriCycleMapper._());
      DuviriStateMapper.ensureInitialized();
      CircuitChoiceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DuviriCycle';

  static String _$id(DuviriCycle v) => v.id;
  static const Field<DuviriCycle, String> _f$id = Field('id', _$id);
  static DateTime? _$activation(DuviriCycle v) => v.activation;
  static const Field<DuviriCycle, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime? _$expiry(DuviriCycle v) => v.expiry;
  static const Field<DuviriCycle, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static DuviriState _$state(DuviriCycle v) => v.state;
  static const Field<DuviriCycle, DuviriState> _f$state = Field(
    'state',
    _$state,
  );
  static List<CircuitChoice> _$choices(DuviriCycle v) => v.choices;
  static const Field<DuviriCycle, List<CircuitChoice>> _f$choices = Field(
    'choices',
    _$choices,
  );

  @override
  final MappableFields<DuviriCycle> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #state: _f$state,
    #choices: _f$choices,
  };
  @override
  final bool ignoreNull = true;

  static DuviriCycle _instantiate(DecodingData data) {
    return DuviriCycle(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      state: data.dec(_f$state),
      choices: data.dec(_f$choices),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DuviriCycle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DuviriCycle>(map);
  }

  static DuviriCycle fromJson(String json) {
    return ensureInitialized().decodeJson<DuviriCycle>(json);
  }
}

mixin DuviriCycleMappable {
  String toJson() {
    return DuviriCycleMapper.ensureInitialized().encodeJson<DuviriCycle>(
      this as DuviriCycle,
    );
  }

  Map<String, dynamic> toMap() {
    return DuviriCycleMapper.ensureInitialized().encodeMap<DuviriCycle>(
      this as DuviriCycle,
    );
  }

  DuviriCycleCopyWith<DuviriCycle, DuviriCycle, DuviriCycle> get copyWith =>
      _DuviriCycleCopyWithImpl<DuviriCycle, DuviriCycle>(
        this as DuviriCycle,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DuviriCycleMapper.ensureInitialized().stringifyValue(
      this as DuviriCycle,
    );
  }

  @override
  bool operator ==(Object other) {
    return DuviriCycleMapper.ensureInitialized().equalsValue(
      this as DuviriCycle,
      other,
    );
  }

  @override
  int get hashCode {
    return DuviriCycleMapper.ensureInitialized().hashValue(this as DuviriCycle);
  }
}

extension DuviriCycleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DuviriCycle, $Out> {
  DuviriCycleCopyWith<$R, DuviriCycle, $Out> get $asDuviriCycle =>
      $base.as((v, t, t2) => _DuviriCycleCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DuviriCycleCopyWith<$R, $In extends DuviriCycle, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CircuitChoice,
    CircuitChoiceCopyWith<$R, CircuitChoice, CircuitChoice>
  >
  get choices;
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    DuviriState? state,
    List<CircuitChoice>? choices,
  });
  DuviriCycleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DuviriCycleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DuviriCycle, $Out>
    implements DuviriCycleCopyWith<$R, DuviriCycle, $Out> {
  _DuviriCycleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DuviriCycle> $mapper =
      DuviriCycleMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CircuitChoice,
    CircuitChoiceCopyWith<$R, CircuitChoice, CircuitChoice>
  >
  get choices => ListCopyWith(
    $value.choices,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(choices: v),
  );
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    DuviriState? state,
    List<CircuitChoice>? choices,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (state != null) #state: state,
      if (choices != null) #choices: choices,
    }),
  );
  @override
  DuviriCycle $make(CopyWithData data) => DuviriCycle(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    state: data.get(#state, or: $value.state),
    choices: data.get(#choices, or: $value.choices),
  );

  @override
  DuviriCycleCopyWith<$R2, DuviriCycle, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DuviriCycleCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CircuitChoiceMapper extends ClassMapperBase<CircuitChoice> {
  CircuitChoiceMapper._();

  static CircuitChoiceMapper? _instance;
  static CircuitChoiceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CircuitChoiceMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CircuitChoice';

  static String _$key(CircuitChoice v) => v.key;
  static const Field<CircuitChoice, String> _f$key = Field('key', _$key);
  static List<String> _$choices(CircuitChoice v) => v.choices;
  static const Field<CircuitChoice, List<String>> _f$choices = Field(
    'choices',
    _$choices,
  );
  static String _$mode(CircuitChoice v) => v.mode;
  static const Field<CircuitChoice, String> _f$mode = Field('mode', _$mode);

  @override
  final MappableFields<CircuitChoice> fields = const {
    #key: _f$key,
    #choices: _f$choices,
    #mode: _f$mode,
  };
  @override
  final bool ignoreNull = true;

  static CircuitChoice _instantiate(DecodingData data) {
    return CircuitChoice(key: data.dec(_f$key), choices: data.dec(_f$choices));
  }

  @override
  final Function instantiate = _instantiate;

  static CircuitChoice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CircuitChoice>(map);
  }

  static CircuitChoice fromJson(String json) {
    return ensureInitialized().decodeJson<CircuitChoice>(json);
  }
}

mixin CircuitChoiceMappable {
  String toJson() {
    return CircuitChoiceMapper.ensureInitialized().encodeJson<CircuitChoice>(
      this as CircuitChoice,
    );
  }

  Map<String, dynamic> toMap() {
    return CircuitChoiceMapper.ensureInitialized().encodeMap<CircuitChoice>(
      this as CircuitChoice,
    );
  }

  CircuitChoiceCopyWith<CircuitChoice, CircuitChoice, CircuitChoice>
  get copyWith => _CircuitChoiceCopyWithImpl<CircuitChoice, CircuitChoice>(
    this as CircuitChoice,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return CircuitChoiceMapper.ensureInitialized().stringifyValue(
      this as CircuitChoice,
    );
  }

  @override
  bool operator ==(Object other) {
    return CircuitChoiceMapper.ensureInitialized().equalsValue(
      this as CircuitChoice,
      other,
    );
  }

  @override
  int get hashCode {
    return CircuitChoiceMapper.ensureInitialized().hashValue(
      this as CircuitChoice,
    );
  }
}

extension CircuitChoiceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CircuitChoice, $Out> {
  CircuitChoiceCopyWith<$R, CircuitChoice, $Out> get $asCircuitChoice =>
      $base.as((v, t, t2) => _CircuitChoiceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CircuitChoiceCopyWith<$R, $In extends CircuitChoice, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get choices;
  $R call({String? key, List<String>? choices});
  CircuitChoiceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CircuitChoiceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CircuitChoice, $Out>
    implements CircuitChoiceCopyWith<$R, CircuitChoice, $Out> {
  _CircuitChoiceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CircuitChoice> $mapper =
      CircuitChoiceMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get choices =>
      ListCopyWith(
        $value.choices,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(choices: v),
      );
  @override
  $R call({String? key, List<String>? choices}) => $apply(
    FieldCopyWithData({
      if (key != null) #key: key,
      if (choices != null) #choices: choices,
    }),
  );
  @override
  CircuitChoice $make(CopyWithData data) => CircuitChoice(
    key: data.get(#key, or: $value.key),
    choices: data.get(#choices, or: $value.choices),
  );

  @override
  CircuitChoiceCopyWith<$R2, CircuitChoice, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CircuitChoiceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

