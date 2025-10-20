// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'riven_schema.dart';

class RivenSchemaMapper extends ClassMapperBase<RivenSchema> {
  RivenSchemaMapper._();

  static RivenSchemaMapper? _instance;
  static RivenSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RivenSchemaMapper._());
      UpgradeEntryMapper.ensureInitialized();
      AvailableChallengeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RivenSchema';

  static String _$uniqueName(RivenSchema v) => v.uniqueName;
  static const Field<RivenSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(RivenSchema v) => v.name;
  static const Field<RivenSchema, String> _f$name = Field('name', _$name);
  static bool _$codexSecret(RivenSchema v) => v.codexSecret;
  static const Field<RivenSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static bool? _$excludeFromCodex(RivenSchema v) => v.excludeFromCodex;
  static const Field<RivenSchema, bool> _f$excludeFromCodex = Field(
    'excludeFromCodex',
    _$excludeFromCodex,
  );
  static String _$polarity(RivenSchema v) => v.polarity;
  static const Field<RivenSchema, String> _f$polarity = Field(
    'polarity',
    _$polarity,
  );
  static String _$rarity(RivenSchema v) => v.rarity;
  static const Field<RivenSchema, String> _f$rarity = Field('rarity', _$rarity);
  static int _$baseDrain(RivenSchema v) => v.baseDrain;
  static const Field<RivenSchema, int> _f$baseDrain = Field(
    'baseDrain',
    _$baseDrain,
  );
  static int _$fusionLimit(RivenSchema v) => v.fusionLimit;
  static const Field<RivenSchema, int> _f$fusionLimit = Field(
    'fusionLimit',
    _$fusionLimit,
  );
  static List<UpgradeEntry> _$upgradeEntries(RivenSchema v) => v.upgradeEntries;
  static const Field<RivenSchema, List<UpgradeEntry>> _f$upgradeEntries = Field(
    'upgradeEntries',
    _$upgradeEntries,
  );
  static List<AvailableChallenge> _$availableChallenges(RivenSchema v) =>
      v.availableChallenges;
  static const Field<RivenSchema, List<AvailableChallenge>>
  _f$availableChallenges = Field('availableChallenges', _$availableChallenges);

  @override
  final MappableFields<RivenSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #codexSecret: _f$codexSecret,
    #excludeFromCodex: _f$excludeFromCodex,
    #polarity: _f$polarity,
    #rarity: _f$rarity,
    #baseDrain: _f$baseDrain,
    #fusionLimit: _f$fusionLimit,
    #upgradeEntries: _f$upgradeEntries,
    #availableChallenges: _f$availableChallenges,
  };

  static RivenSchema _instantiate(DecodingData data) {
    return RivenSchema(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      codexSecret: data.dec(_f$codexSecret),
      excludeFromCodex: data.dec(_f$excludeFromCodex),
      polarity: data.dec(_f$polarity),
      rarity: data.dec(_f$rarity),
      baseDrain: data.dec(_f$baseDrain),
      fusionLimit: data.dec(_f$fusionLimit),
      upgradeEntries: data.dec(_f$upgradeEntries),
      availableChallenges: data.dec(_f$availableChallenges),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RivenSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RivenSchema>(map);
  }

  static RivenSchema fromJson(String json) {
    return ensureInitialized().decodeJson<RivenSchema>(json);
  }
}

mixin RivenSchemaMappable {
  String toJson() {
    return RivenSchemaMapper.ensureInitialized().encodeJson<RivenSchema>(
      this as RivenSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return RivenSchemaMapper.ensureInitialized().encodeMap<RivenSchema>(
      this as RivenSchema,
    );
  }

  RivenSchemaCopyWith<RivenSchema, RivenSchema, RivenSchema> get copyWith =>
      _RivenSchemaCopyWithImpl<RivenSchema, RivenSchema>(
        this as RivenSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RivenSchemaMapper.ensureInitialized().stringifyValue(
      this as RivenSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return RivenSchemaMapper.ensureInitialized().equalsValue(
      this as RivenSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return RivenSchemaMapper.ensureInitialized().hashValue(this as RivenSchema);
  }
}

extension RivenSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RivenSchema, $Out> {
  RivenSchemaCopyWith<$R, RivenSchema, $Out> get $asRivenSchema =>
      $base.as((v, t, t2) => _RivenSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RivenSchemaCopyWith<$R, $In extends RivenSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    UpgradeEntry,
    UpgradeEntryCopyWith<$R, UpgradeEntry, UpgradeEntry>
  >
  get upgradeEntries;
  ListCopyWith<
    $R,
    AvailableChallenge,
    AvailableChallengeCopyWith<$R, AvailableChallenge, AvailableChallenge>
  >
  get availableChallenges;
  $R call({
    String? uniqueName,
    String? name,
    bool? codexSecret,
    bool? excludeFromCodex,
    String? polarity,
    String? rarity,
    int? baseDrain,
    int? fusionLimit,
    List<UpgradeEntry>? upgradeEntries,
    List<AvailableChallenge>? availableChallenges,
  });
  RivenSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RivenSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RivenSchema, $Out>
    implements RivenSchemaCopyWith<$R, RivenSchema, $Out> {
  _RivenSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RivenSchema> $mapper =
      RivenSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    UpgradeEntry,
    UpgradeEntryCopyWith<$R, UpgradeEntry, UpgradeEntry>
  >
  get upgradeEntries => ListCopyWith(
    $value.upgradeEntries,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(upgradeEntries: v),
  );
  @override
  ListCopyWith<
    $R,
    AvailableChallenge,
    AvailableChallengeCopyWith<$R, AvailableChallenge, AvailableChallenge>
  >
  get availableChallenges => ListCopyWith(
    $value.availableChallenges,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(availableChallenges: v),
  );
  @override
  $R call({
    String? uniqueName,
    String? name,
    bool? codexSecret,
    Object? excludeFromCodex = $none,
    String? polarity,
    String? rarity,
    int? baseDrain,
    int? fusionLimit,
    List<UpgradeEntry>? upgradeEntries,
    List<AvailableChallenge>? availableChallenges,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (excludeFromCodex != $none) #excludeFromCodex: excludeFromCodex,
      if (polarity != null) #polarity: polarity,
      if (rarity != null) #rarity: rarity,
      if (baseDrain != null) #baseDrain: baseDrain,
      if (fusionLimit != null) #fusionLimit: fusionLimit,
      if (upgradeEntries != null) #upgradeEntries: upgradeEntries,
      if (availableChallenges != null)
        #availableChallenges: availableChallenges,
    }),
  );
  @override
  RivenSchema $make(CopyWithData data) => RivenSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    excludeFromCodex: data.get(#excludeFromCodex, or: $value.excludeFromCodex),
    polarity: data.get(#polarity, or: $value.polarity),
    rarity: data.get(#rarity, or: $value.rarity),
    baseDrain: data.get(#baseDrain, or: $value.baseDrain),
    fusionLimit: data.get(#fusionLimit, or: $value.fusionLimit),
    upgradeEntries: data.get(#upgradeEntries, or: $value.upgradeEntries),
    availableChallenges: data.get(
      #availableChallenges,
      or: $value.availableChallenges,
    ),
  );

  @override
  RivenSchemaCopyWith<$R2, RivenSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RivenSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UpgradeEntryMapper extends ClassMapperBase<UpgradeEntry> {
  UpgradeEntryMapper._();

  static UpgradeEntryMapper? _instance;
  static UpgradeEntryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpgradeEntryMapper._());
      UpgradeValueMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UpgradeEntry';

  static String _$tag(UpgradeEntry v) => v.tag;
  static const Field<UpgradeEntry, String> _f$tag = Field('tag', _$tag);
  static String _$prefixTag(UpgradeEntry v) => v.prefixTag;
  static const Field<UpgradeEntry, String> _f$prefixTag = Field(
    'prefixTag',
    _$prefixTag,
  );
  static String _$suffixTag(UpgradeEntry v) => v.suffixTag;
  static const Field<UpgradeEntry, String> _f$suffixTag = Field(
    'suffixTag',
    _$suffixTag,
  );
  static List<UpgradeValue> _$upgradeValues(UpgradeEntry v) => v.upgradeValues;
  static const Field<UpgradeEntry, List<UpgradeValue>> _f$upgradeValues = Field(
    'upgradeValues',
    _$upgradeValues,
  );

  @override
  final MappableFields<UpgradeEntry> fields = const {
    #tag: _f$tag,
    #prefixTag: _f$prefixTag,
    #suffixTag: _f$suffixTag,
    #upgradeValues: _f$upgradeValues,
  };

  static UpgradeEntry _instantiate(DecodingData data) {
    return UpgradeEntry(
      tag: data.dec(_f$tag),
      prefixTag: data.dec(_f$prefixTag),
      suffixTag: data.dec(_f$suffixTag),
      upgradeValues: data.dec(_f$upgradeValues),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UpgradeEntry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpgradeEntry>(map);
  }

  static UpgradeEntry fromJson(String json) {
    return ensureInitialized().decodeJson<UpgradeEntry>(json);
  }
}

mixin UpgradeEntryMappable {
  String toJson() {
    return UpgradeEntryMapper.ensureInitialized().encodeJson<UpgradeEntry>(
      this as UpgradeEntry,
    );
  }

  Map<String, dynamic> toMap() {
    return UpgradeEntryMapper.ensureInitialized().encodeMap<UpgradeEntry>(
      this as UpgradeEntry,
    );
  }

  UpgradeEntryCopyWith<UpgradeEntry, UpgradeEntry, UpgradeEntry> get copyWith =>
      _UpgradeEntryCopyWithImpl<UpgradeEntry, UpgradeEntry>(
        this as UpgradeEntry,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UpgradeEntryMapper.ensureInitialized().stringifyValue(
      this as UpgradeEntry,
    );
  }

  @override
  bool operator ==(Object other) {
    return UpgradeEntryMapper.ensureInitialized().equalsValue(
      this as UpgradeEntry,
      other,
    );
  }

  @override
  int get hashCode {
    return UpgradeEntryMapper.ensureInitialized().hashValue(
      this as UpgradeEntry,
    );
  }
}

extension UpgradeEntryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpgradeEntry, $Out> {
  UpgradeEntryCopyWith<$R, UpgradeEntry, $Out> get $asUpgradeEntry =>
      $base.as((v, t, t2) => _UpgradeEntryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UpgradeEntryCopyWith<$R, $In extends UpgradeEntry, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    UpgradeValue,
    UpgradeValueCopyWith<$R, UpgradeValue, UpgradeValue>
  >
  get upgradeValues;
  $R call({
    String? tag,
    String? prefixTag,
    String? suffixTag,
    List<UpgradeValue>? upgradeValues,
  });
  UpgradeEntryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UpgradeEntryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpgradeEntry, $Out>
    implements UpgradeEntryCopyWith<$R, UpgradeEntry, $Out> {
  _UpgradeEntryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpgradeEntry> $mapper =
      UpgradeEntryMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    UpgradeValue,
    UpgradeValueCopyWith<$R, UpgradeValue, UpgradeValue>
  >
  get upgradeValues => ListCopyWith(
    $value.upgradeValues,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(upgradeValues: v),
  );
  @override
  $R call({
    String? tag,
    String? prefixTag,
    String? suffixTag,
    List<UpgradeValue>? upgradeValues,
  }) => $apply(
    FieldCopyWithData({
      if (tag != null) #tag: tag,
      if (prefixTag != null) #prefixTag: prefixTag,
      if (suffixTag != null) #suffixTag: suffixTag,
      if (upgradeValues != null) #upgradeValues: upgradeValues,
    }),
  );
  @override
  UpgradeEntry $make(CopyWithData data) => UpgradeEntry(
    tag: data.get(#tag, or: $value.tag),
    prefixTag: data.get(#prefixTag, or: $value.prefixTag),
    suffixTag: data.get(#suffixTag, or: $value.suffixTag),
    upgradeValues: data.get(#upgradeValues, or: $value.upgradeValues),
  );

  @override
  UpgradeEntryCopyWith<$R2, UpgradeEntry, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UpgradeEntryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UpgradeValueMapper extends ClassMapperBase<UpgradeValue> {
  UpgradeValueMapper._();

  static UpgradeValueMapper? _instance;
  static UpgradeValueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpgradeValueMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UpgradeValue';

  static double _$value(UpgradeValue v) => v.value;
  static const Field<UpgradeValue, double> _f$value = Field('value', _$value);
  static String _$locTag(UpgradeValue v) => v.locTag;
  static const Field<UpgradeValue, String> _f$locTag = Field(
    'locTag',
    _$locTag,
  );

  @override
  final MappableFields<UpgradeValue> fields = const {
    #value: _f$value,
    #locTag: _f$locTag,
  };

  static UpgradeValue _instantiate(DecodingData data) {
    return UpgradeValue(value: data.dec(_f$value), locTag: data.dec(_f$locTag));
  }

  @override
  final Function instantiate = _instantiate;

  static UpgradeValue fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpgradeValue>(map);
  }

  static UpgradeValue fromJson(String json) {
    return ensureInitialized().decodeJson<UpgradeValue>(json);
  }
}

mixin UpgradeValueMappable {
  String toJson() {
    return UpgradeValueMapper.ensureInitialized().encodeJson<UpgradeValue>(
      this as UpgradeValue,
    );
  }

  Map<String, dynamic> toMap() {
    return UpgradeValueMapper.ensureInitialized().encodeMap<UpgradeValue>(
      this as UpgradeValue,
    );
  }

  UpgradeValueCopyWith<UpgradeValue, UpgradeValue, UpgradeValue> get copyWith =>
      _UpgradeValueCopyWithImpl<UpgradeValue, UpgradeValue>(
        this as UpgradeValue,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UpgradeValueMapper.ensureInitialized().stringifyValue(
      this as UpgradeValue,
    );
  }

  @override
  bool operator ==(Object other) {
    return UpgradeValueMapper.ensureInitialized().equalsValue(
      this as UpgradeValue,
      other,
    );
  }

  @override
  int get hashCode {
    return UpgradeValueMapper.ensureInitialized().hashValue(
      this as UpgradeValue,
    );
  }
}

extension UpgradeValueValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpgradeValue, $Out> {
  UpgradeValueCopyWith<$R, UpgradeValue, $Out> get $asUpgradeValue =>
      $base.as((v, t, t2) => _UpgradeValueCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UpgradeValueCopyWith<$R, $In extends UpgradeValue, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? value, String? locTag});
  UpgradeValueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UpgradeValueCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpgradeValue, $Out>
    implements UpgradeValueCopyWith<$R, UpgradeValue, $Out> {
  _UpgradeValueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpgradeValue> $mapper =
      UpgradeValueMapper.ensureInitialized();
  @override
  $R call({double? value, String? locTag}) => $apply(
    FieldCopyWithData({
      if (value != null) #value: value,
      if (locTag != null) #locTag: locTag,
    }),
  );
  @override
  UpgradeValue $make(CopyWithData data) => UpgradeValue(
    value: data.get(#value, or: $value.value),
    locTag: data.get(#locTag, or: $value.locTag),
  );

  @override
  UpgradeValueCopyWith<$R2, UpgradeValue, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UpgradeValueCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AvailableChallengeMapper extends ClassMapperBase<AvailableChallenge> {
  AvailableChallengeMapper._();

  static AvailableChallengeMapper? _instance;
  static AvailableChallengeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AvailableChallengeMapper._());
      ComplicationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AvailableChallenge';

  static String _$fullName(AvailableChallenge v) => v.fullName;
  static const Field<AvailableChallenge, String> _f$fullName = Field(
    'fullName',
    _$fullName,
  );
  static String _$description(AvailableChallenge v) => v.description;
  static const Field<AvailableChallenge, String> _f$description = Field(
    'description',
    _$description,
  );
  static List<Complication> _$complications(AvailableChallenge v) =>
      v.complications;
  static const Field<AvailableChallenge, List<Complication>> _f$complications =
      Field('complications', _$complications);

  @override
  final MappableFields<AvailableChallenge> fields = const {
    #fullName: _f$fullName,
    #description: _f$description,
    #complications: _f$complications,
  };

  static AvailableChallenge _instantiate(DecodingData data) {
    return AvailableChallenge(
      fullName: data.dec(_f$fullName),
      description: data.dec(_f$description),
      complications: data.dec(_f$complications),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AvailableChallenge fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AvailableChallenge>(map);
  }

  static AvailableChallenge fromJson(String json) {
    return ensureInitialized().decodeJson<AvailableChallenge>(json);
  }
}

mixin AvailableChallengeMappable {
  String toJson() {
    return AvailableChallengeMapper.ensureInitialized()
        .encodeJson<AvailableChallenge>(this as AvailableChallenge);
  }

  Map<String, dynamic> toMap() {
    return AvailableChallengeMapper.ensureInitialized()
        .encodeMap<AvailableChallenge>(this as AvailableChallenge);
  }

  AvailableChallengeCopyWith<
    AvailableChallenge,
    AvailableChallenge,
    AvailableChallenge
  >
  get copyWith =>
      _AvailableChallengeCopyWithImpl<AvailableChallenge, AvailableChallenge>(
        this as AvailableChallenge,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AvailableChallengeMapper.ensureInitialized().stringifyValue(
      this as AvailableChallenge,
    );
  }

  @override
  bool operator ==(Object other) {
    return AvailableChallengeMapper.ensureInitialized().equalsValue(
      this as AvailableChallenge,
      other,
    );
  }

  @override
  int get hashCode {
    return AvailableChallengeMapper.ensureInitialized().hashValue(
      this as AvailableChallenge,
    );
  }
}

extension AvailableChallengeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AvailableChallenge, $Out> {
  AvailableChallengeCopyWith<$R, AvailableChallenge, $Out>
  get $asAvailableChallenge => $base.as(
    (v, t, t2) => _AvailableChallengeCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class AvailableChallengeCopyWith<
  $R,
  $In extends AvailableChallenge,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    Complication,
    ComplicationCopyWith<$R, Complication, Complication>
  >
  get complications;
  $R call({
    String? fullName,
    String? description,
    List<Complication>? complications,
  });
  AvailableChallengeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AvailableChallengeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AvailableChallenge, $Out>
    implements AvailableChallengeCopyWith<$R, AvailableChallenge, $Out> {
  _AvailableChallengeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AvailableChallenge> $mapper =
      AvailableChallengeMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    Complication,
    ComplicationCopyWith<$R, Complication, Complication>
  >
  get complications => ListCopyWith(
    $value.complications,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(complications: v),
  );
  @override
  $R call({
    String? fullName,
    String? description,
    List<Complication>? complications,
  }) => $apply(
    FieldCopyWithData({
      if (fullName != null) #fullName: fullName,
      if (description != null) #description: description,
      if (complications != null) #complications: complications,
    }),
  );
  @override
  AvailableChallenge $make(CopyWithData data) => AvailableChallenge(
    fullName: data.get(#fullName, or: $value.fullName),
    description: data.get(#description, or: $value.description),
    complications: data.get(#complications, or: $value.complications),
  );

  @override
  AvailableChallengeCopyWith<$R2, AvailableChallenge, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AvailableChallengeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ComplicationMapper extends ClassMapperBase<Complication> {
  ComplicationMapper._();

  static ComplicationMapper? _instance;
  static ComplicationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ComplicationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Complication';

  static String _$fullName(Complication v) => v.fullName;
  static const Field<Complication, String> _f$fullName = Field(
    'fullName',
    _$fullName,
  );
  static String _$description(Complication v) => v.description;
  static const Field<Complication, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$overrideTag(Complication v) => v.overrideTag;
  static const Field<Complication, String> _f$overrideTag = Field(
    'overrideTag',
    _$overrideTag,
  );

  @override
  final MappableFields<Complication> fields = const {
    #fullName: _f$fullName,
    #description: _f$description,
    #overrideTag: _f$overrideTag,
  };

  static Complication _instantiate(DecodingData data) {
    return Complication(
      fullName: data.dec(_f$fullName),
      description: data.dec(_f$description),
      overrideTag: data.dec(_f$overrideTag),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Complication fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Complication>(map);
  }

  static Complication fromJson(String json) {
    return ensureInitialized().decodeJson<Complication>(json);
  }
}

mixin ComplicationMappable {
  String toJson() {
    return ComplicationMapper.ensureInitialized().encodeJson<Complication>(
      this as Complication,
    );
  }

  Map<String, dynamic> toMap() {
    return ComplicationMapper.ensureInitialized().encodeMap<Complication>(
      this as Complication,
    );
  }

  ComplicationCopyWith<Complication, Complication, Complication> get copyWith =>
      _ComplicationCopyWithImpl<Complication, Complication>(
        this as Complication,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ComplicationMapper.ensureInitialized().stringifyValue(
      this as Complication,
    );
  }

  @override
  bool operator ==(Object other) {
    return ComplicationMapper.ensureInitialized().equalsValue(
      this as Complication,
      other,
    );
  }

  @override
  int get hashCode {
    return ComplicationMapper.ensureInitialized().hashValue(
      this as Complication,
    );
  }
}

extension ComplicationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Complication, $Out> {
  ComplicationCopyWith<$R, Complication, $Out> get $asComplication =>
      $base.as((v, t, t2) => _ComplicationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ComplicationCopyWith<$R, $In extends Complication, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? fullName, String? description, String? overrideTag});
  ComplicationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ComplicationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Complication, $Out>
    implements ComplicationCopyWith<$R, Complication, $Out> {
  _ComplicationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Complication> $mapper =
      ComplicationMapper.ensureInitialized();
  @override
  $R call({String? fullName, String? description, String? overrideTag}) =>
      $apply(
        FieldCopyWithData({
          if (fullName != null) #fullName: fullName,
          if (description != null) #description: description,
          if (overrideTag != null) #overrideTag: overrideTag,
        }),
      );
  @override
  Complication $make(CopyWithData data) => Complication(
    fullName: data.get(#fullName, or: $value.fullName),
    description: data.get(#description, or: $value.description),
    overrideTag: data.get(#overrideTag, or: $value.overrideTag),
  );

  @override
  ComplicationCopyWith<$R2, Complication, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ComplicationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

