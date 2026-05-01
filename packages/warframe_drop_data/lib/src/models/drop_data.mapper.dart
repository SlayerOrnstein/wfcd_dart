// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'drop_data.dart';

class DropDataMapper extends ClassMapperBase<DropData> {
  DropDataMapper._();

  static DropDataMapper? _instance;
  static DropDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DropDataMapper._());
      BlueprintPartMapper.ensureInitialized();
      BountyRewardTableMapper.ensureInitialized();
      AvatarMapper.ensureInitialized();
      PlanetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DropData';

  static List<BlueprintPart> _$blueprintDrops(DropData v) => v.blueprintDrops;
  static const Field<DropData, List<BlueprintPart>> _f$blueprintDrops = Field(
    'blueprintDrops',
    _$blueprintDrops,
    opt: true,
    def: const [],
  );
  static List<BountyRewardTable> _$bountyRewardTables(DropData v) =>
      v.bountyRewardTables;
  static const Field<DropData, List<BountyRewardTable>> _f$bountyRewardTables =
      Field(
        'bountyRewardTables',
        _$bountyRewardTables,
        opt: true,
        def: const [],
      );
  static List<Avatar> _$resourcesByAvatar(DropData v) => v.resourcesByAvatar;
  static const Field<DropData, List<Avatar>> _f$resourcesByAvatar = Field(
    'resourcesByAvatar',
    _$resourcesByAvatar,
    opt: true,
    def: const [],
  );
  static List<Avatar> _$sigilsByAvatar(DropData v) => v.sigilsByAvatar;
  static const Field<DropData, List<Avatar>> _f$sigilsByAvatar = Field(
    'sigilsByAvatar',
    _$sigilsByAvatar,
    opt: true,
    def: const [],
  );
  static List<Avatar> _$additionalItemsByAvatar(DropData v) =>
      v.additionalItemsByAvatar;
  static const Field<DropData, List<Avatar>> _f$additionalItemsByAvatar = Field(
    'additionalItemsByAvatar',
    _$additionalItemsByAvatar,
    opt: true,
    def: const [],
  );
  static List<Planet> _$missionRewards(DropData v) => v.missionRewards;
  static const Field<DropData, List<Planet>> _f$missionRewards = Field(
    'missionRewards',
    _$missionRewards,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<DropData> fields = const {
    #blueprintDrops: _f$blueprintDrops,
    #bountyRewardTables: _f$bountyRewardTables,
    #resourcesByAvatar: _f$resourcesByAvatar,
    #sigilsByAvatar: _f$sigilsByAvatar,
    #additionalItemsByAvatar: _f$additionalItemsByAvatar,
    #missionRewards: _f$missionRewards,
  };
  @override
  final bool ignoreNull = true;

  static DropData _instantiate(DecodingData data) {
    return DropData(
      blueprintDrops: data.dec(_f$blueprintDrops),
      bountyRewardTables: data.dec(_f$bountyRewardTables),
      resourcesByAvatar: data.dec(_f$resourcesByAvatar),
      sigilsByAvatar: data.dec(_f$sigilsByAvatar),
      additionalItemsByAvatar: data.dec(_f$additionalItemsByAvatar),
      missionRewards: data.dec(_f$missionRewards),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DropData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DropData>(map);
  }

  static DropData fromJson(String json) {
    return ensureInitialized().decodeJson<DropData>(json);
  }
}

mixin DropDataMappable {
  String toJson() {
    return DropDataMapper.ensureInitialized().encodeJson<DropData>(
      this as DropData,
    );
  }

  Map<String, dynamic> toMap() {
    return DropDataMapper.ensureInitialized().encodeMap<DropData>(
      this as DropData,
    );
  }

  DropDataCopyWith<DropData, DropData, DropData> get copyWith =>
      _DropDataCopyWithImpl<DropData, DropData>(
        this as DropData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DropDataMapper.ensureInitialized().stringifyValue(this as DropData);
  }

  @override
  bool operator ==(Object other) {
    return DropDataMapper.ensureInitialized().equalsValue(
      this as DropData,
      other,
    );
  }

  @override
  int get hashCode {
    return DropDataMapper.ensureInitialized().hashValue(this as DropData);
  }
}

extension DropDataValueCopy<$R, $Out> on ObjectCopyWith<$R, DropData, $Out> {
  DropDataCopyWith<$R, DropData, $Out> get $asDropData =>
      $base.as((v, t, t2) => _DropDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DropDataCopyWith<$R, $In extends DropData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    BlueprintPart,
    BlueprintPartCopyWith<$R, BlueprintPart, BlueprintPart>
  >
  get blueprintDrops;
  ListCopyWith<
    $R,
    BountyRewardTable,
    BountyRewardTableCopyWith<$R, BountyRewardTable, BountyRewardTable>
  >
  get bountyRewardTables;
  ListCopyWith<$R, Avatar, AvatarCopyWith<$R, Avatar, Avatar>>
  get resourcesByAvatar;
  ListCopyWith<$R, Avatar, AvatarCopyWith<$R, Avatar, Avatar>>
  get sigilsByAvatar;
  ListCopyWith<$R, Avatar, AvatarCopyWith<$R, Avatar, Avatar>>
  get additionalItemsByAvatar;
  ListCopyWith<$R, Planet, PlanetCopyWith<$R, Planet, Planet>>
  get missionRewards;
  $R call({
    List<BlueprintPart>? blueprintDrops,
    List<BountyRewardTable>? bountyRewardTables,
    List<Avatar>? resourcesByAvatar,
    List<Avatar>? sigilsByAvatar,
    List<Avatar>? additionalItemsByAvatar,
    List<Planet>? missionRewards,
  });
  DropDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DropDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DropData, $Out>
    implements DropDataCopyWith<$R, DropData, $Out> {
  _DropDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DropData> $mapper =
      DropDataMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    BlueprintPart,
    BlueprintPartCopyWith<$R, BlueprintPart, BlueprintPart>
  >
  get blueprintDrops => ListCopyWith(
    $value.blueprintDrops,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(blueprintDrops: v),
  );
  @override
  ListCopyWith<
    $R,
    BountyRewardTable,
    BountyRewardTableCopyWith<$R, BountyRewardTable, BountyRewardTable>
  >
  get bountyRewardTables => ListCopyWith(
    $value.bountyRewardTables,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(bountyRewardTables: v),
  );
  @override
  ListCopyWith<$R, Avatar, AvatarCopyWith<$R, Avatar, Avatar>>
  get resourcesByAvatar => ListCopyWith(
    $value.resourcesByAvatar,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(resourcesByAvatar: v),
  );
  @override
  ListCopyWith<$R, Avatar, AvatarCopyWith<$R, Avatar, Avatar>>
  get sigilsByAvatar => ListCopyWith(
    $value.sigilsByAvatar,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(sigilsByAvatar: v),
  );
  @override
  ListCopyWith<$R, Avatar, AvatarCopyWith<$R, Avatar, Avatar>>
  get additionalItemsByAvatar => ListCopyWith(
    $value.additionalItemsByAvatar,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(additionalItemsByAvatar: v),
  );
  @override
  ListCopyWith<$R, Planet, PlanetCopyWith<$R, Planet, Planet>>
  get missionRewards => ListCopyWith(
    $value.missionRewards,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(missionRewards: v),
  );
  @override
  $R call({
    List<BlueprintPart>? blueprintDrops,
    List<BountyRewardTable>? bountyRewardTables,
    List<Avatar>? resourcesByAvatar,
    List<Avatar>? sigilsByAvatar,
    List<Avatar>? additionalItemsByAvatar,
    List<Planet>? missionRewards,
  }) => $apply(
    FieldCopyWithData({
      if (blueprintDrops != null) #blueprintDrops: blueprintDrops,
      if (bountyRewardTables != null) #bountyRewardTables: bountyRewardTables,
      if (resourcesByAvatar != null) #resourcesByAvatar: resourcesByAvatar,
      if (sigilsByAvatar != null) #sigilsByAvatar: sigilsByAvatar,
      if (additionalItemsByAvatar != null)
        #additionalItemsByAvatar: additionalItemsByAvatar,
      if (missionRewards != null) #missionRewards: missionRewards,
    }),
  );
  @override
  DropData $make(CopyWithData data) => DropData(
    blueprintDrops: data.get(#blueprintDrops, or: $value.blueprintDrops),
    bountyRewardTables: data.get(
      #bountyRewardTables,
      or: $value.bountyRewardTables,
    ),
    resourcesByAvatar: data.get(
      #resourcesByAvatar,
      or: $value.resourcesByAvatar,
    ),
    sigilsByAvatar: data.get(#sigilsByAvatar, or: $value.sigilsByAvatar),
    additionalItemsByAvatar: data.get(
      #additionalItemsByAvatar,
      or: $value.additionalItemsByAvatar,
    ),
    missionRewards: data.get(#missionRewards, or: $value.missionRewards),
  );

  @override
  DropDataCopyWith<$R2, DropData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DropDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

