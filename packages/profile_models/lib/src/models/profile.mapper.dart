// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'profile.dart';

class RawProfileMapper extends ClassMapperBase<RawProfile> {
  RawProfileMapper._();

  static RawProfileMapper? _instance;
  static RawProfileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawProfileMapper._());
      RawLoadoutPresetMapper.ensureInitialized();
      RawLoadoutMapper.ensureInitialized();
      RawIntrinsicsMapper.ensureInitialized();
      RawOperatorAlignmentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawProfile';

  static Map<String, dynamic> _$accountId(RawProfile v) => v.accountId;
  static const Field<RawProfile, Map<String, dynamic>> _f$accountId = Field(
    'accountId',
    _$accountId,
    key: r'AccountId',
  );
  static String _$displayName(RawProfile v) => v.displayName;
  static const Field<RawProfile, String> _f$displayName = Field(
    'displayName',
    _$displayName,
    key: r'DisplayName',
  );
  static List<String>? _$platformNames(RawProfile v) => v.platformNames;
  static const Field<RawProfile, List<String>> _f$platformNames = Field(
    'platformNames',
    _$platformNames,
    key: r'PlatformNames',
  );
  static int _$playerLevel(RawProfile v) => v.playerLevel;
  static const Field<RawProfile, int> _f$playerLevel = Field(
    'playerLevel',
    _$playerLevel,
    key: r'PlayerLevel',
  );
  static RawLoadoutPreset _$loadoutPreset(RawProfile v) => v.loadoutPreset;
  static const Field<RawProfile, RawLoadoutPreset> _f$loadoutPreset = Field(
    'loadoutPreset',
    _$loadoutPreset,
    key: r'LoadOutPreset',
  );
  static RawLoadout _$loadoutInventory(RawProfile v) => v.loadoutInventory;
  static const Field<RawProfile, RawLoadout> _f$loadoutInventory = Field(
    'loadoutInventory',
    _$loadoutInventory,
    key: r'LoadOutInventory',
  );
  static RawIntrinsics _$playerSkills(RawProfile v) => v.playerSkills;
  static const Field<RawProfile, RawIntrinsics> _f$playerSkills = Field(
    'playerSkills',
    _$playerSkills,
    key: r'PlayerSkills',
  );
  static Map<String, dynamic> _$guildId(RawProfile v) => v.guildId;
  static const Field<RawProfile, Map<String, dynamic>> _f$guildId = Field(
    'guildId',
    _$guildId,
    key: r'GuildId',
  );
  static List<String> _$deathMarks(RawProfile v) => v.deathMarks;
  static const Field<RawProfile, List<String>> _f$deathMarks = Field(
    'deathMarks',
    _$deathMarks,
    key: r'DeathMarks',
  );
  static bool _$harvestable(RawProfile v) => v.harvestable;
  static const Field<RawProfile, bool> _f$harvestable = Field(
    'harvestable',
    _$harvestable,
    key: r'Harvestable',
  );
  static bool _$deathSquadable(RawProfile v) => v.deathSquadable;
  static const Field<RawProfile, bool> _f$deathSquadable = Field(
    'deathSquadable',
    _$deathSquadable,
    key: r'DeathSquadable',
  );
  static Map<String, dynamic> _$created(RawProfile v) => v.created;
  static const Field<RawProfile, Map<String, dynamic>> _f$created = Field(
    'created',
    _$created,
    key: r'Created',
  );
  static int _$dailyAffiliation(RawProfile v) => v.dailyAffiliation;
  static const Field<RawProfile, int> _f$dailyAffiliation = Field(
    'dailyAffiliation',
    _$dailyAffiliation,
    key: r'DailyAffiliation',
  );
  static int? _$dailyAffiliationPvp(RawProfile v) => v.dailyAffiliationPvp;
  static const Field<RawProfile, int> _f$dailyAffiliationPvp = Field(
    'dailyAffiliationPvp',
    _$dailyAffiliationPvp,
    key: r'DailyAffiliationPvp',
  );
  static int? _$dailyAffiliationLibrary(RawProfile v) =>
      v.dailyAffiliationLibrary;
  static const Field<RawProfile, int> _f$dailyAffiliationLibrary = Field(
    'dailyAffiliationLibrary',
    _$dailyAffiliationLibrary,
    key: r'DailyAffiliationLibrary',
  );
  static int? _$dailyAffiliationCetus(RawProfile v) => v.dailyAffiliationCetus;
  static const Field<RawProfile, int> _f$dailyAffiliationCetus = Field(
    'dailyAffiliationCetus',
    _$dailyAffiliationCetus,
    key: r'DailyAffiliationCetus',
  );
  static int? _$dailyAffiliationQuills(RawProfile v) =>
      v.dailyAffiliationQuills;
  static const Field<RawProfile, int> _f$dailyAffiliationQuills = Field(
    'dailyAffiliationQuills',
    _$dailyAffiliationQuills,
    key: r'DailyAffiliationQuills',
  );
  static int? _$dailyAffiliationSolaris(RawProfile v) =>
      v.dailyAffiliationSolaris;
  static const Field<RawProfile, int> _f$dailyAffiliationSolaris = Field(
    'dailyAffiliationSolaris',
    _$dailyAffiliationSolaris,
    key: r'DailyAffiliationSolaris',
  );
  static int? _$dailyAffiliationVentKids(RawProfile v) =>
      v.dailyAffiliationVentKids;
  static const Field<RawProfile, int> _f$dailyAffiliationVentKids = Field(
    'dailyAffiliationVentKids',
    _$dailyAffiliationVentKids,
    key: r'DailyAffiliationVentKids',
  );
  static int? _$dailyAffiliationVox(RawProfile v) => v.dailyAffiliationVox;
  static const Field<RawProfile, int> _f$dailyAffiliationVox = Field(
    'dailyAffiliationVox',
    _$dailyAffiliationVox,
    key: r'DailyAffiliationVox',
  );
  static int? _$dailyAffiliationEntrati(RawProfile v) =>
      v.dailyAffiliationEntrati;
  static const Field<RawProfile, int> _f$dailyAffiliationEntrati = Field(
    'dailyAffiliationEntrati',
    _$dailyAffiliationEntrati,
    key: r'DailyAffiliationEntrati',
  );
  static int? _$dailyAffiliationNecraloid(RawProfile v) =>
      v.dailyAffiliationNecraloid;
  static const Field<RawProfile, int> _f$dailyAffiliationNecraloid = Field(
    'dailyAffiliationNecraloid',
    _$dailyAffiliationNecraloid,
    key: r'DailyAffiliationNecraloid',
  );
  static int? _$dailyAffiliationZariman(RawProfile v) =>
      v.dailyAffiliationZariman;
  static const Field<RawProfile, int> _f$dailyAffiliationZariman = Field(
    'dailyAffiliationZariman',
    _$dailyAffiliationZariman,
    key: r'DailyAffiliationZariman',
  );
  static int? _$dailyAffiliationKahl(RawProfile v) => v.dailyAffiliationKahl;
  static const Field<RawProfile, int> _f$dailyAffiliationKahl = Field(
    'dailyAffiliationKahl',
    _$dailyAffiliationKahl,
    key: r'DailyAffiliationKahl',
  );
  static int? _$dailyAffiliationCavia(RawProfile v) => v.dailyAffiliationCavia;
  static const Field<RawProfile, int> _f$dailyAffiliationCavia = Field(
    'dailyAffiliationCavia',
    _$dailyAffiliationCavia,
    key: r'DailyAffiliationCavia',
  );
  static int? _$dailyAffiliationHex(RawProfile v) => v.dailyAffiliationHex;
  static const Field<RawProfile, int> _f$dailyAffiliationHex = Field(
    'dailyAffiliationHex',
    _$dailyAffiliationHex,
    key: r'DailyAffiliationHex',
  );
  static int _$dailyFocus(RawProfile v) => v.dailyFocus;
  static const Field<RawProfile, int> _f$dailyFocus = Field(
    'dailyFocus',
    _$dailyFocus,
    key: r'DailyFocus',
  );
  static bool _$unlockedOperator(RawProfile v) => v.unlockedOperator;
  static const Field<RawProfile, bool> _f$unlockedOperator = Field(
    'unlockedOperator',
    _$unlockedOperator,
    key: r'UnlockedOperator',
  );
  static bool _$unlockedAlignment(RawProfile v) => v.unlockedAlignment;
  static const Field<RawProfile, bool> _f$unlockedAlignment = Field(
    'unlockedAlignment',
    _$unlockedAlignment,
    key: r'UnlockedAlignment',
  );
  static RawOperatorAlignment _$alignment(RawProfile v) => v.alignment;
  static const Field<RawProfile, RawOperatorAlignment> _f$alignment = Field(
    'alignment',
    _$alignment,
    key: r'Alignment',
  );

  @override
  final MappableFields<RawProfile> fields = const {
    #accountId: _f$accountId,
    #displayName: _f$displayName,
    #platformNames: _f$platformNames,
    #playerLevel: _f$playerLevel,
    #loadoutPreset: _f$loadoutPreset,
    #loadoutInventory: _f$loadoutInventory,
    #playerSkills: _f$playerSkills,
    #guildId: _f$guildId,
    #deathMarks: _f$deathMarks,
    #harvestable: _f$harvestable,
    #deathSquadable: _f$deathSquadable,
    #created: _f$created,
    #dailyAffiliation: _f$dailyAffiliation,
    #dailyAffiliationPvp: _f$dailyAffiliationPvp,
    #dailyAffiliationLibrary: _f$dailyAffiliationLibrary,
    #dailyAffiliationCetus: _f$dailyAffiliationCetus,
    #dailyAffiliationQuills: _f$dailyAffiliationQuills,
    #dailyAffiliationSolaris: _f$dailyAffiliationSolaris,
    #dailyAffiliationVentKids: _f$dailyAffiliationVentKids,
    #dailyAffiliationVox: _f$dailyAffiliationVox,
    #dailyAffiliationEntrati: _f$dailyAffiliationEntrati,
    #dailyAffiliationNecraloid: _f$dailyAffiliationNecraloid,
    #dailyAffiliationZariman: _f$dailyAffiliationZariman,
    #dailyAffiliationKahl: _f$dailyAffiliationKahl,
    #dailyAffiliationCavia: _f$dailyAffiliationCavia,
    #dailyAffiliationHex: _f$dailyAffiliationHex,
    #dailyFocus: _f$dailyFocus,
    #unlockedOperator: _f$unlockedOperator,
    #unlockedAlignment: _f$unlockedAlignment,
    #alignment: _f$alignment,
  };
  @override
  final bool ignoreNull = true;

  static RawProfile _instantiate(DecodingData data) {
    return RawProfile(
      accountId: data.dec(_f$accountId),
      displayName: data.dec(_f$displayName),
      platformNames: data.dec(_f$platformNames),
      playerLevel: data.dec(_f$playerLevel),
      loadoutPreset: data.dec(_f$loadoutPreset),
      loadoutInventory: data.dec(_f$loadoutInventory),
      playerSkills: data.dec(_f$playerSkills),
      guildId: data.dec(_f$guildId),
      deathMarks: data.dec(_f$deathMarks),
      harvestable: data.dec(_f$harvestable),
      deathSquadable: data.dec(_f$deathSquadable),
      created: data.dec(_f$created),
      dailyAffiliation: data.dec(_f$dailyAffiliation),
      dailyAffiliationPvp: data.dec(_f$dailyAffiliationPvp),
      dailyAffiliationLibrary: data.dec(_f$dailyAffiliationLibrary),
      dailyAffiliationCetus: data.dec(_f$dailyAffiliationCetus),
      dailyAffiliationQuills: data.dec(_f$dailyAffiliationQuills),
      dailyAffiliationSolaris: data.dec(_f$dailyAffiliationSolaris),
      dailyAffiliationVentKids: data.dec(_f$dailyAffiliationVentKids),
      dailyAffiliationVox: data.dec(_f$dailyAffiliationVox),
      dailyAffiliationEntrati: data.dec(_f$dailyAffiliationEntrati),
      dailyAffiliationNecraloid: data.dec(_f$dailyAffiliationNecraloid),
      dailyAffiliationZariman: data.dec(_f$dailyAffiliationZariman),
      dailyAffiliationKahl: data.dec(_f$dailyAffiliationKahl),
      dailyAffiliationCavia: data.dec(_f$dailyAffiliationCavia),
      dailyAffiliationHex: data.dec(_f$dailyAffiliationHex),
      dailyFocus: data.dec(_f$dailyFocus),
      unlockedOperator: data.dec(_f$unlockedOperator),
      unlockedAlignment: data.dec(_f$unlockedAlignment),
      alignment: data.dec(_f$alignment),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawProfile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawProfile>(map);
  }

  static RawProfile fromJson(String json) {
    return ensureInitialized().decodeJson<RawProfile>(json);
  }
}

mixin RawProfileMappable {
  String toJson() {
    return RawProfileMapper.ensureInitialized().encodeJson<RawProfile>(
      this as RawProfile,
    );
  }

  Map<String, dynamic> toMap() {
    return RawProfileMapper.ensureInitialized().encodeMap<RawProfile>(
      this as RawProfile,
    );
  }

  RawProfileCopyWith<RawProfile, RawProfile, RawProfile> get copyWith =>
      _RawProfileCopyWithImpl<RawProfile, RawProfile>(
        this as RawProfile,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawProfileMapper.ensureInitialized().stringifyValue(
      this as RawProfile,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawProfileMapper.ensureInitialized().equalsValue(
      this as RawProfile,
      other,
    );
  }

  @override
  int get hashCode {
    return RawProfileMapper.ensureInitialized().hashValue(this as RawProfile);
  }
}

extension RawProfileValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawProfile, $Out> {
  RawProfileCopyWith<$R, RawProfile, $Out> get $asRawProfile =>
      $base.as((v, t, t2) => _RawProfileCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawProfileCopyWith<$R, $In extends RawProfile, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get accountId;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
  get platformNames;
  RawLoadoutPresetCopyWith<$R, RawLoadoutPreset, RawLoadoutPreset>
  get loadoutPreset;
  RawLoadoutCopyWith<$R, RawLoadout, RawLoadout> get loadoutInventory;
  RawIntrinsicsCopyWith<$R, RawIntrinsics, RawIntrinsics> get playerSkills;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get guildId;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get deathMarks;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get created;
  $R call({
    Map<String, dynamic>? accountId,
    String? displayName,
    List<String>? platformNames,
    int? playerLevel,
    RawLoadoutPreset? loadoutPreset,
    RawLoadout? loadoutInventory,
    RawIntrinsics? playerSkills,
    Map<String, dynamic>? guildId,
    List<String>? deathMarks,
    bool? harvestable,
    bool? deathSquadable,
    Map<String, dynamic>? created,
    int? dailyAffiliation,
    int? dailyAffiliationPvp,
    int? dailyAffiliationLibrary,
    int? dailyAffiliationCetus,
    int? dailyAffiliationQuills,
    int? dailyAffiliationSolaris,
    int? dailyAffiliationVentKids,
    int? dailyAffiliationVox,
    int? dailyAffiliationEntrati,
    int? dailyAffiliationNecraloid,
    int? dailyAffiliationZariman,
    int? dailyAffiliationKahl,
    int? dailyAffiliationCavia,
    int? dailyAffiliationHex,
    int? dailyFocus,
    bool? unlockedOperator,
    bool? unlockedAlignment,
    RawOperatorAlignment? alignment,
  });
  RawProfileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawProfileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawProfile, $Out>
    implements RawProfileCopyWith<$R, RawProfile, $Out> {
  _RawProfileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawProfile> $mapper =
      RawProfileMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get accountId => MapCopyWith(
    $value.accountId,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(accountId: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
  get platformNames => $value.platformNames != null
      ? ListCopyWith(
          $value.platformNames!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(platformNames: v),
        )
      : null;
  @override
  RawLoadoutPresetCopyWith<$R, RawLoadoutPreset, RawLoadoutPreset>
  get loadoutPreset =>
      $value.loadoutPreset.copyWith.$chain((v) => call(loadoutPreset: v));
  @override
  RawLoadoutCopyWith<$R, RawLoadout, RawLoadout> get loadoutInventory =>
      $value.loadoutInventory.copyWith.$chain((v) => call(loadoutInventory: v));
  @override
  RawIntrinsicsCopyWith<$R, RawIntrinsics, RawIntrinsics> get playerSkills =>
      $value.playerSkills.copyWith.$chain((v) => call(playerSkills: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get guildId => MapCopyWith(
    $value.guildId,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(guildId: v),
  );
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get deathMarks =>
      ListCopyWith(
        $value.deathMarks,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(deathMarks: v),
      );
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
  get created => MapCopyWith(
    $value.created,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(created: v),
  );
  @override
  $R call({
    Map<String, dynamic>? accountId,
    String? displayName,
    Object? platformNames = $none,
    int? playerLevel,
    RawLoadoutPreset? loadoutPreset,
    RawLoadout? loadoutInventory,
    RawIntrinsics? playerSkills,
    Map<String, dynamic>? guildId,
    List<String>? deathMarks,
    bool? harvestable,
    bool? deathSquadable,
    Map<String, dynamic>? created,
    int? dailyAffiliation,
    Object? dailyAffiliationPvp = $none,
    Object? dailyAffiliationLibrary = $none,
    Object? dailyAffiliationCetus = $none,
    Object? dailyAffiliationQuills = $none,
    Object? dailyAffiliationSolaris = $none,
    Object? dailyAffiliationVentKids = $none,
    Object? dailyAffiliationVox = $none,
    Object? dailyAffiliationEntrati = $none,
    Object? dailyAffiliationNecraloid = $none,
    Object? dailyAffiliationZariman = $none,
    Object? dailyAffiliationKahl = $none,
    Object? dailyAffiliationCavia = $none,
    Object? dailyAffiliationHex = $none,
    int? dailyFocus,
    bool? unlockedOperator,
    bool? unlockedAlignment,
    RawOperatorAlignment? alignment,
  }) => $apply(
    FieldCopyWithData({
      if (accountId != null) #accountId: accountId,
      if (displayName != null) #displayName: displayName,
      if (platformNames != $none) #platformNames: platformNames,
      if (playerLevel != null) #playerLevel: playerLevel,
      if (loadoutPreset != null) #loadoutPreset: loadoutPreset,
      if (loadoutInventory != null) #loadoutInventory: loadoutInventory,
      if (playerSkills != null) #playerSkills: playerSkills,
      if (guildId != null) #guildId: guildId,
      if (deathMarks != null) #deathMarks: deathMarks,
      if (harvestable != null) #harvestable: harvestable,
      if (deathSquadable != null) #deathSquadable: deathSquadable,
      if (created != null) #created: created,
      if (dailyAffiliation != null) #dailyAffiliation: dailyAffiliation,
      if (dailyAffiliationPvp != $none)
        #dailyAffiliationPvp: dailyAffiliationPvp,
      if (dailyAffiliationLibrary != $none)
        #dailyAffiliationLibrary: dailyAffiliationLibrary,
      if (dailyAffiliationCetus != $none)
        #dailyAffiliationCetus: dailyAffiliationCetus,
      if (dailyAffiliationQuills != $none)
        #dailyAffiliationQuills: dailyAffiliationQuills,
      if (dailyAffiliationSolaris != $none)
        #dailyAffiliationSolaris: dailyAffiliationSolaris,
      if (dailyAffiliationVentKids != $none)
        #dailyAffiliationVentKids: dailyAffiliationVentKids,
      if (dailyAffiliationVox != $none)
        #dailyAffiliationVox: dailyAffiliationVox,
      if (dailyAffiliationEntrati != $none)
        #dailyAffiliationEntrati: dailyAffiliationEntrati,
      if (dailyAffiliationNecraloid != $none)
        #dailyAffiliationNecraloid: dailyAffiliationNecraloid,
      if (dailyAffiliationZariman != $none)
        #dailyAffiliationZariman: dailyAffiliationZariman,
      if (dailyAffiliationKahl != $none)
        #dailyAffiliationKahl: dailyAffiliationKahl,
      if (dailyAffiliationCavia != $none)
        #dailyAffiliationCavia: dailyAffiliationCavia,
      if (dailyAffiliationHex != $none)
        #dailyAffiliationHex: dailyAffiliationHex,
      if (dailyFocus != null) #dailyFocus: dailyFocus,
      if (unlockedOperator != null) #unlockedOperator: unlockedOperator,
      if (unlockedAlignment != null) #unlockedAlignment: unlockedAlignment,
      if (alignment != null) #alignment: alignment,
    }),
  );
  @override
  RawProfile $make(CopyWithData data) => RawProfile(
    accountId: data.get(#accountId, or: $value.accountId),
    displayName: data.get(#displayName, or: $value.displayName),
    platformNames: data.get(#platformNames, or: $value.platformNames),
    playerLevel: data.get(#playerLevel, or: $value.playerLevel),
    loadoutPreset: data.get(#loadoutPreset, or: $value.loadoutPreset),
    loadoutInventory: data.get(#loadoutInventory, or: $value.loadoutInventory),
    playerSkills: data.get(#playerSkills, or: $value.playerSkills),
    guildId: data.get(#guildId, or: $value.guildId),
    deathMarks: data.get(#deathMarks, or: $value.deathMarks),
    harvestable: data.get(#harvestable, or: $value.harvestable),
    deathSquadable: data.get(#deathSquadable, or: $value.deathSquadable),
    created: data.get(#created, or: $value.created),
    dailyAffiliation: data.get(#dailyAffiliation, or: $value.dailyAffiliation),
    dailyAffiliationPvp: data.get(
      #dailyAffiliationPvp,
      or: $value.dailyAffiliationPvp,
    ),
    dailyAffiliationLibrary: data.get(
      #dailyAffiliationLibrary,
      or: $value.dailyAffiliationLibrary,
    ),
    dailyAffiliationCetus: data.get(
      #dailyAffiliationCetus,
      or: $value.dailyAffiliationCetus,
    ),
    dailyAffiliationQuills: data.get(
      #dailyAffiliationQuills,
      or: $value.dailyAffiliationQuills,
    ),
    dailyAffiliationSolaris: data.get(
      #dailyAffiliationSolaris,
      or: $value.dailyAffiliationSolaris,
    ),
    dailyAffiliationVentKids: data.get(
      #dailyAffiliationVentKids,
      or: $value.dailyAffiliationVentKids,
    ),
    dailyAffiliationVox: data.get(
      #dailyAffiliationVox,
      or: $value.dailyAffiliationVox,
    ),
    dailyAffiliationEntrati: data.get(
      #dailyAffiliationEntrati,
      or: $value.dailyAffiliationEntrati,
    ),
    dailyAffiliationNecraloid: data.get(
      #dailyAffiliationNecraloid,
      or: $value.dailyAffiliationNecraloid,
    ),
    dailyAffiliationZariman: data.get(
      #dailyAffiliationZariman,
      or: $value.dailyAffiliationZariman,
    ),
    dailyAffiliationKahl: data.get(
      #dailyAffiliationKahl,
      or: $value.dailyAffiliationKahl,
    ),
    dailyAffiliationCavia: data.get(
      #dailyAffiliationCavia,
      or: $value.dailyAffiliationCavia,
    ),
    dailyAffiliationHex: data.get(
      #dailyAffiliationHex,
      or: $value.dailyAffiliationHex,
    ),
    dailyFocus: data.get(#dailyFocus, or: $value.dailyFocus),
    unlockedOperator: data.get(#unlockedOperator, or: $value.unlockedOperator),
    unlockedAlignment: data.get(
      #unlockedAlignment,
      or: $value.unlockedAlignment,
    ),
    alignment: data.get(#alignment, or: $value.alignment),
  );

  @override
  RawProfileCopyWith<$R2, RawProfile, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawProfileCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawOperatorAlignmentMapper
    extends RecordMapperBase<RawOperatorAlignment> {
  static RawOperatorAlignmentMapper? _instance;
  RawOperatorAlignmentMapper._();

  static RawOperatorAlignmentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawOperatorAlignmentMapper._());
      MapperBase.addType(<A, B>(f) => f<({A alignment, B wisdom})>());
    }
    return _instance!;
  }

  static double _$wisdom(RawOperatorAlignment v) => v.wisdom;
  static const Field<RawOperatorAlignment, double> _f$wisdom = Field(
    'wisdom',
    _$wisdom,
    key: r'Wisdom',
  );
  static double _$alignment(RawOperatorAlignment v) => v.alignment;
  static const Field<RawOperatorAlignment, double> _f$alignment = Field(
    'alignment',
    _$alignment,
    key: r'Alignment',
  );

  @override
  final MappableFields<RawOperatorAlignment> fields = const {
    #wisdom: _f$wisdom,
    #alignment: _f$alignment,
  };

  @override
  Function get typeFactory =>
      (f) => f<RawOperatorAlignment>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static RawOperatorAlignment _instantiate(
    DecodingData<RawOperatorAlignment> data,
  ) {
    return (wisdom: data.dec(_f$wisdom), alignment: data.dec(_f$alignment));
  }

  @override
  final Function instantiate = _instantiate;

  static RawOperatorAlignment fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawOperatorAlignment>(map);
  }

  static RawOperatorAlignment fromJson(String json) {
    return ensureInitialized().decodeJson<RawOperatorAlignment>(json);
  }
}

extension RawOperatorAlignmentMappable on RawOperatorAlignment {
  Map<String, dynamic> toMap() {
    return RawOperatorAlignmentMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return RawOperatorAlignmentMapper.ensureInitialized().encodeJson(this);
  }

  RawOperatorAlignmentCopyWith<RawOperatorAlignment> get copyWith =>
      _RawOperatorAlignmentCopyWithImpl(this, $identity, $identity);
}

extension RawOperatorAlignmentValueCopy<$R>
    on ObjectCopyWith<$R, RawOperatorAlignment, RawOperatorAlignment> {
  RawOperatorAlignmentCopyWith<$R> get $asRawOperatorAlignment =>
      $base.as((v, t, t2) => _RawOperatorAlignmentCopyWithImpl(v, t, t2));
}

abstract class RawOperatorAlignmentCopyWith<$R>
    implements RecordCopyWith<$R, RawOperatorAlignment> {
  $R call({double? wisdom, double? alignment});
  RawOperatorAlignmentCopyWith<$R2> $chain<$R2>(
    Then<RawOperatorAlignment, $R2> t,
  );
}

class _RawOperatorAlignmentCopyWithImpl<$R>
    extends RecordCopyWithBase<$R, RawOperatorAlignment>
    implements RawOperatorAlignmentCopyWith<$R> {
  _RawOperatorAlignmentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<RawOperatorAlignment> $mapper =
      RawOperatorAlignmentMapper.ensureInitialized();
  @override
  $R call({double? wisdom, double? alignment}) => $apply(
    FieldCopyWithData({
      if (wisdom != null) #wisdom: wisdom,
      if (alignment != null) #alignment: alignment,
    }),
  );
  @override
  RawOperatorAlignment $make(CopyWithData data) => (
    wisdom: data.get(#wisdom, or: $value.wisdom),
    alignment: data.get(#alignment, or: $value.alignment),
  );

  @override
  RawOperatorAlignmentCopyWith<$R2> $chain<$R2>(
    Then<RawOperatorAlignment, $R2> t,
  ) => _RawOperatorAlignmentCopyWithImpl($value, $cast, t);
}

class DailyStandingMapper extends ClassMapperBase<DailyStanding> {
  DailyStandingMapper._();

  static DailyStandingMapper? _instance;
  static DailyStandingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DailyStandingMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DailyStanding';

  static int _$daily(DailyStanding v) => v.daily;
  static const Field<DailyStanding, int> _f$daily = Field('daily', _$daily);
  static int? _$conclave(DailyStanding v) => v.conclave;
  static const Field<DailyStanding, int> _f$conclave = Field(
    'conclave',
    _$conclave,
    opt: true,
  );
  static int? _$simaris(DailyStanding v) => v.simaris;
  static const Field<DailyStanding, int> _f$simaris = Field(
    'simaris',
    _$simaris,
    opt: true,
  );
  static int? _$ostron(DailyStanding v) => v.ostron;
  static const Field<DailyStanding, int> _f$ostron = Field(
    'ostron',
    _$ostron,
    opt: true,
  );
  static int? _$quills(DailyStanding v) => v.quills;
  static const Field<DailyStanding, int> _f$quills = Field(
    'quills',
    _$quills,
    opt: true,
  );
  static int? _$solaris(DailyStanding v) => v.solaris;
  static const Field<DailyStanding, int> _f$solaris = Field(
    'solaris',
    _$solaris,
    opt: true,
  );
  static int? _$ventKids(DailyStanding v) => v.ventKids;
  static const Field<DailyStanding, int> _f$ventKids = Field(
    'ventKids',
    _$ventKids,
    opt: true,
  );
  static int? _$voxSolaris(DailyStanding v) => v.voxSolaris;
  static const Field<DailyStanding, int> _f$voxSolaris = Field(
    'voxSolaris',
    _$voxSolaris,
    opt: true,
  );
  static int? _$entrati(DailyStanding v) => v.entrati;
  static const Field<DailyStanding, int> _f$entrati = Field(
    'entrati',
    _$entrati,
    opt: true,
  );
  static int? _$necraloid(DailyStanding v) => v.necraloid;
  static const Field<DailyStanding, int> _f$necraloid = Field(
    'necraloid',
    _$necraloid,
    opt: true,
  );
  static int? _$holdfasts(DailyStanding v) => v.holdfasts;
  static const Field<DailyStanding, int> _f$holdfasts = Field(
    'holdfasts',
    _$holdfasts,
    opt: true,
  );
  static int? _$kahl(DailyStanding v) => v.kahl;
  static const Field<DailyStanding, int> _f$kahl = Field(
    'kahl',
    _$kahl,
    opt: true,
  );
  static int? _$cavia(DailyStanding v) => v.cavia;
  static const Field<DailyStanding, int> _f$cavia = Field(
    'cavia',
    _$cavia,
    opt: true,
  );
  static int? _$hex(DailyStanding v) => v.hex;
  static const Field<DailyStanding, int> _f$hex = Field(
    'hex',
    _$hex,
    opt: true,
  );

  @override
  final MappableFields<DailyStanding> fields = const {
    #daily: _f$daily,
    #conclave: _f$conclave,
    #simaris: _f$simaris,
    #ostron: _f$ostron,
    #quills: _f$quills,
    #solaris: _f$solaris,
    #ventKids: _f$ventKids,
    #voxSolaris: _f$voxSolaris,
    #entrati: _f$entrati,
    #necraloid: _f$necraloid,
    #holdfasts: _f$holdfasts,
    #kahl: _f$kahl,
    #cavia: _f$cavia,
    #hex: _f$hex,
  };
  @override
  final bool ignoreNull = true;

  static DailyStanding _instantiate(DecodingData data) {
    return DailyStanding(
      daily: data.dec(_f$daily),
      conclave: data.dec(_f$conclave),
      simaris: data.dec(_f$simaris),
      ostron: data.dec(_f$ostron),
      quills: data.dec(_f$quills),
      solaris: data.dec(_f$solaris),
      ventKids: data.dec(_f$ventKids),
      voxSolaris: data.dec(_f$voxSolaris),
      entrati: data.dec(_f$entrati),
      necraloid: data.dec(_f$necraloid),
      holdfasts: data.dec(_f$holdfasts),
      kahl: data.dec(_f$kahl),
      cavia: data.dec(_f$cavia),
      hex: data.dec(_f$hex),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DailyStanding fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DailyStanding>(map);
  }

  static DailyStanding fromJson(String json) {
    return ensureInitialized().decodeJson<DailyStanding>(json);
  }
}

mixin DailyStandingMappable {
  String toJson() {
    return DailyStandingMapper.ensureInitialized().encodeJson<DailyStanding>(
      this as DailyStanding,
    );
  }

  Map<String, dynamic> toMap() {
    return DailyStandingMapper.ensureInitialized().encodeMap<DailyStanding>(
      this as DailyStanding,
    );
  }

  DailyStandingCopyWith<DailyStanding, DailyStanding, DailyStanding>
  get copyWith => _DailyStandingCopyWithImpl<DailyStanding, DailyStanding>(
    this as DailyStanding,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return DailyStandingMapper.ensureInitialized().stringifyValue(
      this as DailyStanding,
    );
  }

  @override
  bool operator ==(Object other) {
    return DailyStandingMapper.ensureInitialized().equalsValue(
      this as DailyStanding,
      other,
    );
  }

  @override
  int get hashCode {
    return DailyStandingMapper.ensureInitialized().hashValue(
      this as DailyStanding,
    );
  }
}

extension DailyStandingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DailyStanding, $Out> {
  DailyStandingCopyWith<$R, DailyStanding, $Out> get $asDailyStanding =>
      $base.as((v, t, t2) => _DailyStandingCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DailyStandingCopyWith<$R, $In extends DailyStanding, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? daily,
    int? conclave,
    int? simaris,
    int? ostron,
    int? quills,
    int? solaris,
    int? ventKids,
    int? voxSolaris,
    int? entrati,
    int? necraloid,
    int? holdfasts,
    int? kahl,
    int? cavia,
    int? hex,
  });
  DailyStandingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DailyStandingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DailyStanding, $Out>
    implements DailyStandingCopyWith<$R, DailyStanding, $Out> {
  _DailyStandingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DailyStanding> $mapper =
      DailyStandingMapper.ensureInitialized();
  @override
  $R call({
    int? daily,
    Object? conclave = $none,
    Object? simaris = $none,
    Object? ostron = $none,
    Object? quills = $none,
    Object? solaris = $none,
    Object? ventKids = $none,
    Object? voxSolaris = $none,
    Object? entrati = $none,
    Object? necraloid = $none,
    Object? holdfasts = $none,
    Object? kahl = $none,
    Object? cavia = $none,
    Object? hex = $none,
  }) => $apply(
    FieldCopyWithData({
      if (daily != null) #daily: daily,
      if (conclave != $none) #conclave: conclave,
      if (simaris != $none) #simaris: simaris,
      if (ostron != $none) #ostron: ostron,
      if (quills != $none) #quills: quills,
      if (solaris != $none) #solaris: solaris,
      if (ventKids != $none) #ventKids: ventKids,
      if (voxSolaris != $none) #voxSolaris: voxSolaris,
      if (entrati != $none) #entrati: entrati,
      if (necraloid != $none) #necraloid: necraloid,
      if (holdfasts != $none) #holdfasts: holdfasts,
      if (kahl != $none) #kahl: kahl,
      if (cavia != $none) #cavia: cavia,
      if (hex != $none) #hex: hex,
    }),
  );
  @override
  DailyStanding $make(CopyWithData data) => DailyStanding(
    daily: data.get(#daily, or: $value.daily),
    conclave: data.get(#conclave, or: $value.conclave),
    simaris: data.get(#simaris, or: $value.simaris),
    ostron: data.get(#ostron, or: $value.ostron),
    quills: data.get(#quills, or: $value.quills),
    solaris: data.get(#solaris, or: $value.solaris),
    ventKids: data.get(#ventKids, or: $value.ventKids),
    voxSolaris: data.get(#voxSolaris, or: $value.voxSolaris),
    entrati: data.get(#entrati, or: $value.entrati),
    necraloid: data.get(#necraloid, or: $value.necraloid),
    holdfasts: data.get(#holdfasts, or: $value.holdfasts),
    kahl: data.get(#kahl, or: $value.kahl),
    cavia: data.get(#cavia, or: $value.cavia),
    hex: data.get(#hex, or: $value.hex),
  );

  @override
  DailyStandingCopyWith<$R2, DailyStanding, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DailyStandingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ProfileMapper extends ClassMapperBase<Profile> {
  ProfileMapper._();

  static ProfileMapper? _instance;
  static ProfileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProfileMapper._());
      LoadoutPresetMapper.ensureInitialized();
      LoadoutMapper.ensureInitialized();
      IntrinsicsMapper.ensureInitialized();
      DailyStandingMapper.ensureInitialized();
      OperatorAlignmentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Profile';

  static String _$id(Profile v) => v.id;
  static const Field<Profile, String> _f$id = Field('id', _$id);
  static String _$username(Profile v) => v.username;
  static const Field<Profile, String> _f$username = Field(
    'username',
    _$username,
  );
  static List<String> _$platformUsernames(Profile v) => v.platformUsernames;
  static const Field<Profile, List<String>> _f$platformUsernames = Field(
    'platformUsernames',
    _$platformUsernames,
  );
  static int _$masteryRank(Profile v) => v.masteryRank;
  static const Field<Profile, int> _f$masteryRank = Field(
    'masteryRank',
    _$masteryRank,
  );
  static LoadoutPreset? _$preset(Profile v) => v.preset;
  static const Field<Profile, LoadoutPreset> _f$preset = Field(
    'preset',
    _$preset,
  );
  static Loadout _$loadout(Profile v) => v.loadout;
  static const Field<Profile, Loadout> _f$loadout = Field('loadout', _$loadout);
  static Intrinsics _$intrinsics(Profile v) => v.intrinsics;
  static const Field<Profile, Intrinsics> _f$intrinsics = Field(
    'intrinsics',
    _$intrinsics,
  );
  static bool _$isHarvestable(Profile v) => v.isHarvestable;
  static const Field<Profile, bool> _f$isHarvestable = Field(
    'isHarvestable',
    _$isHarvestable,
  );
  static bool _$isDeathSquadable(Profile v) => v.isDeathSquadable;
  static const Field<Profile, bool> _f$isDeathSquadable = Field(
    'isDeathSquadable',
    _$isDeathSquadable,
  );
  static DateTime _$createdOn(Profile v) => v.createdOn;
  static const Field<Profile, DateTime> _f$createdOn = Field(
    'createdOn',
    _$createdOn,
  );
  static DailyStanding _$dailyStanding(Profile v) => v.dailyStanding;
  static const Field<Profile, DailyStanding> _f$dailyStanding = Field(
    'dailyStanding',
    _$dailyStanding,
  );
  static int _$dailyFocus(Profile v) => v.dailyFocus;
  static const Field<Profile, int> _f$dailyFocus = Field(
    'dailyFocus',
    _$dailyFocus,
  );
  static OperatorAlignment _$alignment(Profile v) => v.alignment;
  static const Field<Profile, OperatorAlignment> _f$alignment = Field(
    'alignment',
    _$alignment,
  );
  static bool _$unlockedOperator(Profile v) => v.unlockedOperator;
  static const Field<Profile, bool> _f$unlockedOperator = Field(
    'unlockedOperator',
    _$unlockedOperator,
    opt: true,
    def: false,
  );
  static bool _$unlockedAlignment(Profile v) => v.unlockedAlignment;
  static const Field<Profile, bool> _f$unlockedAlignment = Field(
    'unlockedAlignment',
    _$unlockedAlignment,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<Profile> fields = const {
    #id: _f$id,
    #username: _f$username,
    #platformUsernames: _f$platformUsernames,
    #masteryRank: _f$masteryRank,
    #preset: _f$preset,
    #loadout: _f$loadout,
    #intrinsics: _f$intrinsics,
    #isHarvestable: _f$isHarvestable,
    #isDeathSquadable: _f$isDeathSquadable,
    #createdOn: _f$createdOn,
    #dailyStanding: _f$dailyStanding,
    #dailyFocus: _f$dailyFocus,
    #alignment: _f$alignment,
    #unlockedOperator: _f$unlockedOperator,
    #unlockedAlignment: _f$unlockedAlignment,
  };
  @override
  final bool ignoreNull = true;

  static Profile _instantiate(DecodingData data) {
    return Profile(
      id: data.dec(_f$id),
      username: data.dec(_f$username),
      platformUsernames: data.dec(_f$platformUsernames),
      masteryRank: data.dec(_f$masteryRank),
      preset: data.dec(_f$preset),
      loadout: data.dec(_f$loadout),
      intrinsics: data.dec(_f$intrinsics),
      isHarvestable: data.dec(_f$isHarvestable),
      isDeathSquadable: data.dec(_f$isDeathSquadable),
      createdOn: data.dec(_f$createdOn),
      dailyStanding: data.dec(_f$dailyStanding),
      dailyFocus: data.dec(_f$dailyFocus),
      alignment: data.dec(_f$alignment),
      unlockedOperator: data.dec(_f$unlockedOperator),
      unlockedAlignment: data.dec(_f$unlockedAlignment),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Profile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Profile>(map);
  }

  static Profile fromJson(String json) {
    return ensureInitialized().decodeJson<Profile>(json);
  }
}

mixin ProfileMappable {
  String toJson() {
    return ProfileMapper.ensureInitialized().encodeJson<Profile>(
      this as Profile,
    );
  }

  Map<String, dynamic> toMap() {
    return ProfileMapper.ensureInitialized().encodeMap<Profile>(
      this as Profile,
    );
  }

  ProfileCopyWith<Profile, Profile, Profile> get copyWith =>
      _ProfileCopyWithImpl<Profile, Profile>(
        this as Profile,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProfileMapper.ensureInitialized().stringifyValue(this as Profile);
  }

  @override
  bool operator ==(Object other) {
    return ProfileMapper.ensureInitialized().equalsValue(
      this as Profile,
      other,
    );
  }

  @override
  int get hashCode {
    return ProfileMapper.ensureInitialized().hashValue(this as Profile);
  }
}

extension ProfileValueCopy<$R, $Out> on ObjectCopyWith<$R, Profile, $Out> {
  ProfileCopyWith<$R, Profile, $Out> get $asProfile =>
      $base.as((v, t, t2) => _ProfileCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProfileCopyWith<$R, $In extends Profile, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get platformUsernames;
  LoadoutPresetCopyWith<$R, LoadoutPreset, LoadoutPreset>? get preset;
  LoadoutCopyWith<$R, Loadout, Loadout> get loadout;
  IntrinsicsCopyWith<$R, Intrinsics, Intrinsics> get intrinsics;
  DailyStandingCopyWith<$R, DailyStanding, DailyStanding> get dailyStanding;
  $R call({
    String? id,
    String? username,
    List<String>? platformUsernames,
    int? masteryRank,
    LoadoutPreset? preset,
    Loadout? loadout,
    Intrinsics? intrinsics,
    bool? isHarvestable,
    bool? isDeathSquadable,
    DateTime? createdOn,
    DailyStanding? dailyStanding,
    int? dailyFocus,
    OperatorAlignment? alignment,
    bool? unlockedOperator,
    bool? unlockedAlignment,
  });
  ProfileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProfileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Profile, $Out>
    implements ProfileCopyWith<$R, Profile, $Out> {
  _ProfileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Profile> $mapper =
      ProfileMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get platformUsernames => ListCopyWith(
    $value.platformUsernames,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(platformUsernames: v),
  );
  @override
  LoadoutPresetCopyWith<$R, LoadoutPreset, LoadoutPreset>? get preset =>
      $value.preset?.copyWith.$chain((v) => call(preset: v));
  @override
  LoadoutCopyWith<$R, Loadout, Loadout> get loadout =>
      $value.loadout.copyWith.$chain((v) => call(loadout: v));
  @override
  IntrinsicsCopyWith<$R, Intrinsics, Intrinsics> get intrinsics =>
      $value.intrinsics.copyWith.$chain((v) => call(intrinsics: v));
  @override
  DailyStandingCopyWith<$R, DailyStanding, DailyStanding> get dailyStanding =>
      $value.dailyStanding.copyWith.$chain((v) => call(dailyStanding: v));
  @override
  $R call({
    String? id,
    String? username,
    List<String>? platformUsernames,
    int? masteryRank,
    Object? preset = $none,
    Loadout? loadout,
    Intrinsics? intrinsics,
    bool? isHarvestable,
    bool? isDeathSquadable,
    DateTime? createdOn,
    DailyStanding? dailyStanding,
    int? dailyFocus,
    OperatorAlignment? alignment,
    bool? unlockedOperator,
    bool? unlockedAlignment,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (username != null) #username: username,
      if (platformUsernames != null) #platformUsernames: platformUsernames,
      if (masteryRank != null) #masteryRank: masteryRank,
      if (preset != $none) #preset: preset,
      if (loadout != null) #loadout: loadout,
      if (intrinsics != null) #intrinsics: intrinsics,
      if (isHarvestable != null) #isHarvestable: isHarvestable,
      if (isDeathSquadable != null) #isDeathSquadable: isDeathSquadable,
      if (createdOn != null) #createdOn: createdOn,
      if (dailyStanding != null) #dailyStanding: dailyStanding,
      if (dailyFocus != null) #dailyFocus: dailyFocus,
      if (alignment != null) #alignment: alignment,
      if (unlockedOperator != null) #unlockedOperator: unlockedOperator,
      if (unlockedAlignment != null) #unlockedAlignment: unlockedAlignment,
    }),
  );
  @override
  Profile $make(CopyWithData data) => Profile(
    id: data.get(#id, or: $value.id),
    username: data.get(#username, or: $value.username),
    platformUsernames: data.get(
      #platformUsernames,
      or: $value.platformUsernames,
    ),
    masteryRank: data.get(#masteryRank, or: $value.masteryRank),
    preset: data.get(#preset, or: $value.preset),
    loadout: data.get(#loadout, or: $value.loadout),
    intrinsics: data.get(#intrinsics, or: $value.intrinsics),
    isHarvestable: data.get(#isHarvestable, or: $value.isHarvestable),
    isDeathSquadable: data.get(#isDeathSquadable, or: $value.isDeathSquadable),
    createdOn: data.get(#createdOn, or: $value.createdOn),
    dailyStanding: data.get(#dailyStanding, or: $value.dailyStanding),
    dailyFocus: data.get(#dailyFocus, or: $value.dailyFocus),
    alignment: data.get(#alignment, or: $value.alignment),
    unlockedOperator: data.get(#unlockedOperator, or: $value.unlockedOperator),
    unlockedAlignment: data.get(
      #unlockedAlignment,
      or: $value.unlockedAlignment,
    ),
  );

  @override
  ProfileCopyWith<$R2, Profile, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProfileCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OperatorAlignmentMapper extends RecordMapperBase<OperatorAlignment> {
  static OperatorAlignmentMapper? _instance;
  OperatorAlignmentMapper._();

  static OperatorAlignmentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OperatorAlignmentMapper._());
      MapperBase.addType(<A, B>(f) => f<({A alignment, B wisdom})>());
    }
    return _instance!;
  }

  static double _$wisdom(OperatorAlignment v) => v.wisdom;
  static const Field<OperatorAlignment, double> _f$wisdom = Field(
    'wisdom',
    _$wisdom,
  );
  static double _$alignment(OperatorAlignment v) => v.alignment;
  static const Field<OperatorAlignment, double> _f$alignment = Field(
    'alignment',
    _$alignment,
  );

  @override
  final MappableFields<OperatorAlignment> fields = const {
    #wisdom: _f$wisdom,
    #alignment: _f$alignment,
  };

  @override
  Function get typeFactory =>
      (f) => f<OperatorAlignment>();

  @override
  List<Type> apply(MappingContext context) {
    return [];
  }

  static OperatorAlignment _instantiate(DecodingData<OperatorAlignment> data) {
    return (wisdom: data.dec(_f$wisdom), alignment: data.dec(_f$alignment));
  }

  @override
  final Function instantiate = _instantiate;

  static OperatorAlignment fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OperatorAlignment>(map);
  }

  static OperatorAlignment fromJson(String json) {
    return ensureInitialized().decodeJson<OperatorAlignment>(json);
  }
}

extension OperatorAlignmentMappable on OperatorAlignment {
  Map<String, dynamic> toMap() {
    return OperatorAlignmentMapper.ensureInitialized().encodeMap(this);
  }

  String toJson() {
    return OperatorAlignmentMapper.ensureInitialized().encodeJson(this);
  }

  OperatorAlignmentCopyWith<OperatorAlignment> get copyWith =>
      _OperatorAlignmentCopyWithImpl(this, $identity, $identity);
}

extension OperatorAlignmentValueCopy<$R>
    on ObjectCopyWith<$R, OperatorAlignment, OperatorAlignment> {
  OperatorAlignmentCopyWith<$R> get $asOperatorAlignment =>
      $base.as((v, t, t2) => _OperatorAlignmentCopyWithImpl(v, t, t2));
}

abstract class OperatorAlignmentCopyWith<$R>
    implements RecordCopyWith<$R, OperatorAlignment> {
  $R call({double? wisdom, double? alignment});
  OperatorAlignmentCopyWith<$R2> $chain<$R2>(Then<OperatorAlignment, $R2> t);
}

class _OperatorAlignmentCopyWithImpl<$R>
    extends RecordCopyWithBase<$R, OperatorAlignment>
    implements OperatorAlignmentCopyWith<$R> {
  _OperatorAlignmentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final RecordMapperBase<OperatorAlignment> $mapper =
      OperatorAlignmentMapper.ensureInitialized();
  @override
  $R call({double? wisdom, double? alignment}) => $apply(
    FieldCopyWithData({
      if (wisdom != null) #wisdom: wisdom,
      if (alignment != null) #alignment: alignment,
    }),
  );
  @override
  OperatorAlignment $make(CopyWithData data) => (
    wisdom: data.get(#wisdom, or: $value.wisdom),
    alignment: data.get(#alignment, or: $value.alignment),
  );

  @override
  OperatorAlignmentCopyWith<$R2> $chain<$R2>(Then<OperatorAlignment, $R2> t) =>
      _OperatorAlignmentCopyWithImpl($value, $cast, t);
}

