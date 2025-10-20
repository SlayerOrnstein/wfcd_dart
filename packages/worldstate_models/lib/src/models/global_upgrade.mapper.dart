// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'global_upgrade.dart';

class RawGlobalUpgradeMapper extends ClassMapperBase<RawGlobalUpgrade> {
  RawGlobalUpgradeMapper._();

  static RawGlobalUpgradeMapper? _instance;
  static RawGlobalUpgradeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawGlobalUpgradeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawGlobalUpgrade';

  static Map<String, dynamic> _$id(RawGlobalUpgrade v) => v.id;
  static const Field<RawGlobalUpgrade, Map<String, dynamic>> _f$id = Field(
    'id',
    _$id,
    key: r'_id',
  );
  static Map<String, dynamic>? _$activation(RawGlobalUpgrade v) => v.activation;
  static const Field<RawGlobalUpgrade, Map<String, dynamic>> _f$activation =
      Field('activation', _$activation, key: r'Activation');
  static Map<String, dynamic>? _$expiry(RawGlobalUpgrade v) => v.expiry;
  static const Field<RawGlobalUpgrade, Map<String, dynamic>> _f$expiry = Field(
    'expiry',
    _$expiry,
    key: r'Expiry',
  );
  static String _$upgradeType(RawGlobalUpgrade v) => v.upgradeType;
  static const Field<RawGlobalUpgrade, String> _f$upgradeType = Field(
    'upgradeType',
    _$upgradeType,
    key: r'UpgradeType',
  );
  static String _$opertationType(RawGlobalUpgrade v) => v.opertationType;
  static const Field<RawGlobalUpgrade, String> _f$opertationType = Field(
    'opertationType',
    _$opertationType,
    key: r'OpertationType',
  );
  static int _$value(RawGlobalUpgrade v) => v.value;
  static const Field<RawGlobalUpgrade, int> _f$value = Field(
    'value',
    _$value,
    key: r'Value',
  );
  static String _$localizeTag(RawGlobalUpgrade v) => v.localizeTag;
  static const Field<RawGlobalUpgrade, String> _f$localizeTag = Field(
    'localizeTag',
    _$localizeTag,
    key: r'LocalizeTag',
  );
  static String _$localizeDescTag(RawGlobalUpgrade v) => v.localizeDescTag;
  static const Field<RawGlobalUpgrade, String> _f$localizeDescTag = Field(
    'localizeDescTag',
    _$localizeDescTag,
    key: r'LocalizeDescTag',
  );

  @override
  final MappableFields<RawGlobalUpgrade> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #upgradeType: _f$upgradeType,
    #opertationType: _f$opertationType,
    #value: _f$value,
    #localizeTag: _f$localizeTag,
    #localizeDescTag: _f$localizeDescTag,
  };
  @override
  final bool ignoreNull = true;

  static RawGlobalUpgrade _instantiate(DecodingData data) {
    return RawGlobalUpgrade(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      upgradeType: data.dec(_f$upgradeType),
      opertationType: data.dec(_f$opertationType),
      value: data.dec(_f$value),
      localizeTag: data.dec(_f$localizeTag),
      localizeDescTag: data.dec(_f$localizeDescTag),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawGlobalUpgrade fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawGlobalUpgrade>(map);
  }

  static RawGlobalUpgrade fromJson(String json) {
    return ensureInitialized().decodeJson<RawGlobalUpgrade>(json);
  }
}

mixin RawGlobalUpgradeMappable {
  String toJson() {
    return RawGlobalUpgradeMapper.ensureInitialized()
        .encodeJson<RawGlobalUpgrade>(this as RawGlobalUpgrade);
  }

  Map<String, dynamic> toMap() {
    return RawGlobalUpgradeMapper.ensureInitialized()
        .encodeMap<RawGlobalUpgrade>(this as RawGlobalUpgrade);
  }

  RawGlobalUpgradeCopyWith<RawGlobalUpgrade, RawGlobalUpgrade, RawGlobalUpgrade>
  get copyWith =>
      _RawGlobalUpgradeCopyWithImpl<RawGlobalUpgrade, RawGlobalUpgrade>(
        this as RawGlobalUpgrade,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawGlobalUpgradeMapper.ensureInitialized().stringifyValue(
      this as RawGlobalUpgrade,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawGlobalUpgradeMapper.ensureInitialized().equalsValue(
      this as RawGlobalUpgrade,
      other,
    );
  }

  @override
  int get hashCode {
    return RawGlobalUpgradeMapper.ensureInitialized().hashValue(
      this as RawGlobalUpgrade,
    );
  }
}

extension RawGlobalUpgradeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawGlobalUpgrade, $Out> {
  RawGlobalUpgradeCopyWith<$R, RawGlobalUpgrade, $Out>
  get $asRawGlobalUpgrade =>
      $base.as((v, t, t2) => _RawGlobalUpgradeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawGlobalUpgradeCopyWith<$R, $In extends RawGlobalUpgrade, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get id;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get activation;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get expiry;
  $R call({
    Map<String, dynamic>? id,
    Map<String, dynamic>? activation,
    Map<String, dynamic>? expiry,
    String? upgradeType,
    String? opertationType,
    int? value,
    String? localizeTag,
    String? localizeDescTag,
  });
  RawGlobalUpgradeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawGlobalUpgradeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawGlobalUpgrade, $Out>
    implements RawGlobalUpgradeCopyWith<$R, RawGlobalUpgrade, $Out> {
  _RawGlobalUpgradeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawGlobalUpgrade> $mapper =
      RawGlobalUpgradeMapper.ensureInitialized();
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
  $R call({
    Map<String, dynamic>? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? upgradeType,
    String? opertationType,
    int? value,
    String? localizeTag,
    String? localizeDescTag,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (upgradeType != null) #upgradeType: upgradeType,
      if (opertationType != null) #opertationType: opertationType,
      if (value != null) #value: value,
      if (localizeTag != null) #localizeTag: localizeTag,
      if (localizeDescTag != null) #localizeDescTag: localizeDescTag,
    }),
  );
  @override
  RawGlobalUpgrade $make(CopyWithData data) => RawGlobalUpgrade(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    upgradeType: data.get(#upgradeType, or: $value.upgradeType),
    opertationType: data.get(#opertationType, or: $value.opertationType),
    value: data.get(#value, or: $value.value),
    localizeTag: data.get(#localizeTag, or: $value.localizeTag),
    localizeDescTag: data.get(#localizeDescTag, or: $value.localizeDescTag),
  );

  @override
  RawGlobalUpgradeCopyWith<$R2, RawGlobalUpgrade, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawGlobalUpgradeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GlobalUpgradeMapper extends ClassMapperBase<GlobalUpgrade> {
  GlobalUpgradeMapper._();

  static GlobalUpgradeMapper? _instance;
  static GlobalUpgradeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GlobalUpgradeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GlobalUpgrade';

  static String _$id(GlobalUpgrade v) => v.id;
  static const Field<GlobalUpgrade, String> _f$id = Field('id', _$id);
  static DateTime? _$activation(GlobalUpgrade v) => v.activation;
  static const Field<GlobalUpgrade, DateTime> _f$activation = Field(
    'activation',
    _$activation,
  );
  static DateTime? _$expiry(GlobalUpgrade v) => v.expiry;
  static const Field<GlobalUpgrade, DateTime> _f$expiry = Field(
    'expiry',
    _$expiry,
  );
  static String _$upgrade(GlobalUpgrade v) => v.upgrade;
  static const Field<GlobalUpgrade, String> _f$upgrade = Field(
    'upgrade',
    _$upgrade,
  );
  static String _$operation(GlobalUpgrade v) => v.operation;
  static const Field<GlobalUpgrade, String> _f$operation = Field(
    'operation',
    _$operation,
  );
  static String _$symbol(GlobalUpgrade v) => v.symbol;
  static const Field<GlobalUpgrade, String> _f$symbol = Field(
    'symbol',
    _$symbol,
  );
  static int _$value(GlobalUpgrade v) => v.value;
  static const Field<GlobalUpgrade, int> _f$value = Field('value', _$value);
  static bool _$isExpired(GlobalUpgrade v) => v.isExpired;
  static const Field<GlobalUpgrade, bool> _f$isExpired = Field(
    'isExpired',
    _$isExpired,
  );
  static String _$description(GlobalUpgrade v) => v.description;
  static const Field<GlobalUpgrade, String> _f$description = Field(
    'description',
    _$description,
  );

  @override
  final MappableFields<GlobalUpgrade> fields = const {
    #id: _f$id,
    #activation: _f$activation,
    #expiry: _f$expiry,
    #upgrade: _f$upgrade,
    #operation: _f$operation,
    #symbol: _f$symbol,
    #value: _f$value,
    #isExpired: _f$isExpired,
    #description: _f$description,
  };
  @override
  final bool ignoreNull = true;

  static GlobalUpgrade _instantiate(DecodingData data) {
    return GlobalUpgrade(
      id: data.dec(_f$id),
      activation: data.dec(_f$activation),
      expiry: data.dec(_f$expiry),
      upgrade: data.dec(_f$upgrade),
      operation: data.dec(_f$operation),
      symbol: data.dec(_f$symbol),
      value: data.dec(_f$value),
      isExpired: data.dec(_f$isExpired),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GlobalUpgrade fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GlobalUpgrade>(map);
  }

  static GlobalUpgrade fromJson(String json) {
    return ensureInitialized().decodeJson<GlobalUpgrade>(json);
  }
}

mixin GlobalUpgradeMappable {
  String toJson() {
    return GlobalUpgradeMapper.ensureInitialized().encodeJson<GlobalUpgrade>(
      this as GlobalUpgrade,
    );
  }

  Map<String, dynamic> toMap() {
    return GlobalUpgradeMapper.ensureInitialized().encodeMap<GlobalUpgrade>(
      this as GlobalUpgrade,
    );
  }

  GlobalUpgradeCopyWith<GlobalUpgrade, GlobalUpgrade, GlobalUpgrade>
  get copyWith => _GlobalUpgradeCopyWithImpl<GlobalUpgrade, GlobalUpgrade>(
    this as GlobalUpgrade,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return GlobalUpgradeMapper.ensureInitialized().stringifyValue(
      this as GlobalUpgrade,
    );
  }

  @override
  bool operator ==(Object other) {
    return GlobalUpgradeMapper.ensureInitialized().equalsValue(
      this as GlobalUpgrade,
      other,
    );
  }

  @override
  int get hashCode {
    return GlobalUpgradeMapper.ensureInitialized().hashValue(
      this as GlobalUpgrade,
    );
  }
}

extension GlobalUpgradeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GlobalUpgrade, $Out> {
  GlobalUpgradeCopyWith<$R, GlobalUpgrade, $Out> get $asGlobalUpgrade =>
      $base.as((v, t, t2) => _GlobalUpgradeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class GlobalUpgradeCopyWith<$R, $In extends GlobalUpgrade, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    DateTime? activation,
    DateTime? expiry,
    String? upgrade,
    String? operation,
    String? symbol,
    int? value,
    bool? isExpired,
    String? description,
  });
  GlobalUpgradeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GlobalUpgradeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GlobalUpgrade, $Out>
    implements GlobalUpgradeCopyWith<$R, GlobalUpgrade, $Out> {
  _GlobalUpgradeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GlobalUpgrade> $mapper =
      GlobalUpgradeMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? activation = $none,
    Object? expiry = $none,
    String? upgrade,
    String? operation,
    String? symbol,
    int? value,
    bool? isExpired,
    String? description,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (activation != $none) #activation: activation,
      if (expiry != $none) #expiry: expiry,
      if (upgrade != null) #upgrade: upgrade,
      if (operation != null) #operation: operation,
      if (symbol != null) #symbol: symbol,
      if (value != null) #value: value,
      if (isExpired != null) #isExpired: isExpired,
      if (description != null) #description: description,
    }),
  );
  @override
  GlobalUpgrade $make(CopyWithData data) => GlobalUpgrade(
    id: data.get(#id, or: $value.id),
    activation: data.get(#activation, or: $value.activation),
    expiry: data.get(#expiry, or: $value.expiry),
    upgrade: data.get(#upgrade, or: $value.upgrade),
    operation: data.get(#operation, or: $value.operation),
    symbol: data.get(#symbol, or: $value.symbol),
    value: data.get(#value, or: $value.value),
    isExpired: data.get(#isExpired, or: $value.isExpired),
    description: data.get(#description, or: $value.description),
  );

  @override
  GlobalUpgradeCopyWith<$R2, GlobalUpgrade, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _GlobalUpgradeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

