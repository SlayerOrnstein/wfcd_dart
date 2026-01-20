// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'archon_upgrade.dart';

class RawArchonUpgradeMapper extends ClassMapperBase<RawArchonUpgrade> {
  RawArchonUpgradeMapper._();

  static RawArchonUpgradeMapper? _instance;
  static RawArchonUpgradeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawArchonUpgradeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawArchonUpgrade';

  static String _$color(RawArchonUpgrade v) => v.color;
  static const Field<RawArchonUpgrade, String> _f$color = Field(
    'color',
    _$color,
    key: r'Color',
  );
  static String _$upgradeType(RawArchonUpgrade v) => v.upgradeType;
  static const Field<RawArchonUpgrade, String> _f$upgradeType = Field(
    'upgradeType',
    _$upgradeType,
    key: r'UpgradeType',
  );

  @override
  final MappableFields<RawArchonUpgrade> fields = const {
    #color: _f$color,
    #upgradeType: _f$upgradeType,
  };
  @override
  final bool ignoreNull = true;

  static RawArchonUpgrade _instantiate(DecodingData data) {
    return RawArchonUpgrade(
      color: data.dec(_f$color),
      upgradeType: data.dec(_f$upgradeType),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawArchonUpgrade fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawArchonUpgrade>(map);
  }

  static RawArchonUpgrade fromJson(String json) {
    return ensureInitialized().decodeJson<RawArchonUpgrade>(json);
  }
}

mixin RawArchonUpgradeMappable {
  String toJson() {
    return RawArchonUpgradeMapper.ensureInitialized()
        .encodeJson<RawArchonUpgrade>(this as RawArchonUpgrade);
  }

  Map<String, dynamic> toMap() {
    return RawArchonUpgradeMapper.ensureInitialized()
        .encodeMap<RawArchonUpgrade>(this as RawArchonUpgrade);
  }

  RawArchonUpgradeCopyWith<RawArchonUpgrade, RawArchonUpgrade, RawArchonUpgrade>
  get copyWith =>
      _RawArchonUpgradeCopyWithImpl<RawArchonUpgrade, RawArchonUpgrade>(
        this as RawArchonUpgrade,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawArchonUpgradeMapper.ensureInitialized().stringifyValue(
      this as RawArchonUpgrade,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawArchonUpgradeMapper.ensureInitialized().equalsValue(
      this as RawArchonUpgrade,
      other,
    );
  }

  @override
  int get hashCode {
    return RawArchonUpgradeMapper.ensureInitialized().hashValue(
      this as RawArchonUpgrade,
    );
  }
}

extension RawArchonUpgradeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawArchonUpgrade, $Out> {
  RawArchonUpgradeCopyWith<$R, RawArchonUpgrade, $Out>
  get $asRawArchonUpgrade =>
      $base.as((v, t, t2) => _RawArchonUpgradeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawArchonUpgradeCopyWith<$R, $In extends RawArchonUpgrade, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? color, String? upgradeType});
  RawArchonUpgradeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawArchonUpgradeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawArchonUpgrade, $Out>
    implements RawArchonUpgradeCopyWith<$R, RawArchonUpgrade, $Out> {
  _RawArchonUpgradeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawArchonUpgrade> $mapper =
      RawArchonUpgradeMapper.ensureInitialized();
  @override
  $R call({String? color, String? upgradeType}) => $apply(
    FieldCopyWithData({
      if (color != null) #color: color,
      if (upgradeType != null) #upgradeType: upgradeType,
    }),
  );
  @override
  RawArchonUpgrade $make(CopyWithData data) => RawArchonUpgrade(
    color: data.get(#color, or: $value.color),
    upgradeType: data.get(#upgradeType, or: $value.upgradeType),
  );

  @override
  RawArchonUpgradeCopyWith<$R2, RawArchonUpgrade, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawArchonUpgradeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ArchonUpgradeMapper extends ClassMapperBase<ArchonUpgrade> {
  ArchonUpgradeMapper._();

  static ArchonUpgradeMapper? _instance;
  static ArchonUpgradeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArchonUpgradeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ArchonUpgrade';

  static String _$color(ArchonUpgrade v) => v.color;
  static const Field<ArchonUpgrade, String> _f$color = Field('color', _$color);
  static String _$modifier(ArchonUpgrade v) => v.modifier;
  static const Field<ArchonUpgrade, String> _f$modifier = Field(
    'modifier',
    _$modifier,
  );

  @override
  final MappableFields<ArchonUpgrade> fields = const {
    #color: _f$color,
    #modifier: _f$modifier,
  };
  @override
  final bool ignoreNull = true;

  static ArchonUpgrade _instantiate(DecodingData data) {
    return ArchonUpgrade(
      color: data.dec(_f$color),
      modifier: data.dec(_f$modifier),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ArchonUpgrade fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ArchonUpgrade>(map);
  }

  static ArchonUpgrade fromJson(String json) {
    return ensureInitialized().decodeJson<ArchonUpgrade>(json);
  }
}

mixin ArchonUpgradeMappable {
  String toJson() {
    return ArchonUpgradeMapper.ensureInitialized().encodeJson<ArchonUpgrade>(
      this as ArchonUpgrade,
    );
  }

  Map<String, dynamic> toMap() {
    return ArchonUpgradeMapper.ensureInitialized().encodeMap<ArchonUpgrade>(
      this as ArchonUpgrade,
    );
  }

  ArchonUpgradeCopyWith<ArchonUpgrade, ArchonUpgrade, ArchonUpgrade>
  get copyWith => _ArchonUpgradeCopyWithImpl<ArchonUpgrade, ArchonUpgrade>(
    this as ArchonUpgrade,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ArchonUpgradeMapper.ensureInitialized().stringifyValue(
      this as ArchonUpgrade,
    );
  }

  @override
  bool operator ==(Object other) {
    return ArchonUpgradeMapper.ensureInitialized().equalsValue(
      this as ArchonUpgrade,
      other,
    );
  }

  @override
  int get hashCode {
    return ArchonUpgradeMapper.ensureInitialized().hashValue(
      this as ArchonUpgrade,
    );
  }
}

extension ArchonUpgradeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ArchonUpgrade, $Out> {
  ArchonUpgradeCopyWith<$R, ArchonUpgrade, $Out> get $asArchonUpgrade =>
      $base.as((v, t, t2) => _ArchonUpgradeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ArchonUpgradeCopyWith<$R, $In extends ArchonUpgrade, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? color, String? modifier});
  ArchonUpgradeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ArchonUpgradeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ArchonUpgrade, $Out>
    implements ArchonUpgradeCopyWith<$R, ArchonUpgrade, $Out> {
  _ArchonUpgradeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ArchonUpgrade> $mapper =
      ArchonUpgradeMapper.ensureInitialized();
  @override
  $R call({String? color, String? modifier}) => $apply(
    FieldCopyWithData({
      if (color != null) #color: color,
      if (modifier != null) #modifier: modifier,
    }),
  );
  @override
  ArchonUpgrade $make(CopyWithData data) => ArchonUpgrade(
    color: data.get(#color, or: $value.color),
    modifier: data.get(#modifier, or: $value.modifier),
  );

  @override
  ArchonUpgradeCopyWith<$R2, ArchonUpgrade, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ArchonUpgradeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

