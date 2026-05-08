// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'relic.dart';

class RelicTypesMapper extends EnumMapper<RelicTypes> {
  RelicTypesMapper._();

  static RelicTypesMapper? _instance;
  static RelicTypesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RelicTypesMapper._());
    }
    return _instance!;
  }

  static RelicTypes fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  RelicTypes decode(dynamic value) {
    switch (value) {
      case r'Lith':
        return RelicTypes.lith;
      case r'Meso':
        return RelicTypes.meso;
      case r'Neo':
        return RelicTypes.neo;
      case r'Axi':
        return RelicTypes.axi;
      case r'Requiem':
        return RelicTypes.requiem;
      case r'Vanguard':
        return RelicTypes.vanguard;
      case r'Unknown':
        return RelicTypes.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(RelicTypes self) {
    switch (self) {
      case RelicTypes.lith:
        return r'Lith';
      case RelicTypes.meso:
        return r'Meso';
      case RelicTypes.neo:
        return r'Neo';
      case RelicTypes.axi:
        return r'Axi';
      case RelicTypes.requiem:
        return r'Requiem';
      case RelicTypes.vanguard:
        return r'Vanguard';
      case RelicTypes.unknown:
        return r'Unknown';
    }
  }
}

extension RelicTypesMapperExtension on RelicTypes {
  String toValue() {
    RelicTypesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<RelicTypes>(this) as String;
  }
}

class RelicStatesMapper extends EnumMapper<RelicStates> {
  RelicStatesMapper._();

  static RelicStatesMapper? _instance;
  static RelicStatesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RelicStatesMapper._());
    }
    return _instance!;
  }

  static RelicStates fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  RelicStates decode(dynamic value) {
    switch (value) {
      case r'Intact':
        return RelicStates.intact;
      case r'Exceptional':
        return RelicStates.exceptional;
      case r'Flawless':
        return RelicStates.flawless;
      case r'Radiant':
        return RelicStates.radiant;
      case r'Unknown':
        return RelicStates.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(RelicStates self) {
    switch (self) {
      case RelicStates.intact:
        return r'Intact';
      case RelicStates.exceptional:
        return r'Exceptional';
      case RelicStates.flawless:
        return r'Flawless';
      case RelicStates.radiant:
        return r'Radiant';
      case RelicStates.unknown:
        return r'Unknown';
    }
  }
}

extension RelicStatesMapperExtension on RelicStates {
  String toValue() {
    RelicStatesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<RelicStates>(this) as String;
  }
}

class RelicMapper extends ClassMapperBase<Relic> {
  RelicMapper._();

  static RelicMapper? _instance;
  static RelicMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RelicMapper._());
      RelicTypesMapper.ensureInitialized();
      RelicStatesMapper.ensureInitialized();
      ItemDropMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Relic';

  static String _$id(Relic v) => v.id;
  static const Field<Relic, String> _f$id = Field('id', _$id);
  static RelicTypes _$tier(Relic v) => v.tier;
  static const Field<Relic, RelicTypes> _f$tier = Field('tier', _$tier);
  static String _$name(Relic v) => v.name;
  static const Field<Relic, String> _f$name = Field('name', _$name);
  static RelicStates _$state(Relic v) => v.state;
  static const Field<Relic, RelicStates> _f$state = Field('state', _$state);
  static List<ItemDrop> _$rewards(Relic v) => v.rewards;
  static const Field<Relic, List<ItemDrop>> _f$rewards = Field(
    'rewards',
    _$rewards,
  );

  @override
  final MappableFields<Relic> fields = const {
    #id: _f$id,
    #tier: _f$tier,
    #name: _f$name,
    #state: _f$state,
    #rewards: _f$rewards,
  };
  @override
  final bool ignoreNull = true;

  static Relic _instantiate(DecodingData data) {
    return Relic(
      id: data.dec(_f$id),
      tier: data.dec(_f$tier),
      name: data.dec(_f$name),
      state: data.dec(_f$state),
      rewards: data.dec(_f$rewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Relic fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Relic>(map);
  }

  static Relic fromJson(String json) {
    return ensureInitialized().decodeJson<Relic>(json);
  }
}

mixin RelicMappable {
  String toJson() {
    return RelicMapper.ensureInitialized().encodeJson<Relic>(this as Relic);
  }

  Map<String, dynamic> toMap() {
    return RelicMapper.ensureInitialized().encodeMap<Relic>(this as Relic);
  }

  RelicCopyWith<Relic, Relic, Relic> get copyWith =>
      _RelicCopyWithImpl<Relic, Relic>(this as Relic, $identity, $identity);
  @override
  String toString() {
    return RelicMapper.ensureInitialized().stringifyValue(this as Relic);
  }

  @override
  bool operator ==(Object other) {
    return RelicMapper.ensureInitialized().equalsValue(this as Relic, other);
  }

  @override
  int get hashCode {
    return RelicMapper.ensureInitialized().hashValue(this as Relic);
  }
}

extension RelicValueCopy<$R, $Out> on ObjectCopyWith<$R, Relic, $Out> {
  RelicCopyWith<$R, Relic, $Out> get $asRelic =>
      $base.as((v, t, t2) => _RelicCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RelicCopyWith<$R, $In extends Relic, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ItemDrop, ItemDropCopyWith<$R, ItemDrop, ItemDrop>>
  get rewards;
  $R call({
    String? id,
    RelicTypes? tier,
    String? name,
    RelicStates? state,
    List<ItemDrop>? rewards,
  });
  RelicCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RelicCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Relic, $Out>
    implements RelicCopyWith<$R, Relic, $Out> {
  _RelicCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Relic> $mapper = RelicMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ItemDrop, ItemDropCopyWith<$R, ItemDrop, ItemDrop>>
  get rewards => ListCopyWith(
    $value.rewards,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(rewards: v),
  );
  @override
  $R call({
    String? id,
    RelicTypes? tier,
    String? name,
    RelicStates? state,
    List<ItemDrop>? rewards,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (tier != null) #tier: tier,
      if (name != null) #name: name,
      if (state != null) #state: state,
      if (rewards != null) #rewards: rewards,
    }),
  );
  @override
  Relic $make(CopyWithData data) => Relic(
    id: data.get(#id, or: $value.id),
    tier: data.get(#tier, or: $value.tier),
    name: data.get(#name, or: $value.name),
    state: data.get(#state, or: $value.state),
    rewards: data.get(#rewards, or: $value.rewards),
  );

  @override
  RelicCopyWith<$R2, Relic, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RelicCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

