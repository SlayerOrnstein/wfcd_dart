// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
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
    }
    return _instance!;
  }

  @override
  final String id = 'DropData';

  static List<BlueprintPart> _$blueprintDrops(DropData v) => v.blueprintDrops;
  static const Field<DropData, List<BlueprintPart>> _f$blueprintDrops = Field(
    'blueprintDrops',
    _$blueprintDrops,
  );
  static List<BountyRewardTable> _$bountyRewardTables(DropData v) =>
      v.bountyRewardTables;
  static const Field<DropData, List<BountyRewardTable>> _f$bountyRewardTables =
      Field('bountyRewardTables', _$bountyRewardTables);

  @override
  final MappableFields<DropData> fields = const {
    #blueprintDrops: _f$blueprintDrops,
    #bountyRewardTables: _f$bountyRewardTables,
  };
  @override
  final bool ignoreNull = true;

  static DropData _instantiate(DecodingData data) {
    return DropData(
      blueprintDrops: data.dec(_f$blueprintDrops),
      bountyRewardTables: data.dec(_f$bountyRewardTables),
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
  $R call({
    List<BlueprintPart>? blueprintDrops,
    List<BountyRewardTable>? bountyRewardTables,
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
  $R call({
    List<BlueprintPart>? blueprintDrops,
    List<BountyRewardTable>? bountyRewardTables,
  }) => $apply(
    FieldCopyWithData({
      if (blueprintDrops != null) #blueprintDrops: blueprintDrops,
      if (bountyRewardTables != null) #bountyRewardTables: bountyRewardTables,
    }),
  );
  @override
  DropData $make(CopyWithData data) => DropData(
    blueprintDrops: data.get(#blueprintDrops, or: $value.blueprintDrops),
    bountyRewardTables: data.get(
      #bountyRewardTables,
      or: $value.bountyRewardTables,
    ),
  );

  @override
  DropDataCopyWith<$R2, DropData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DropDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

