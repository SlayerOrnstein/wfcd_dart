// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'worldstate.dart';

class RawWorldstateMapper extends ClassMapperBase<RawWorldstate> {
  RawWorldstateMapper._();

  static RawWorldstateMapper? _instance;
  static RawWorldstateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawWorldstateMapper._());
      RawEventMapper.ensureInitialized();
      RawGoalMapper.ensureInitialized();
      RawAlertMapper.ensureInitialized();
      RawSortieMapper.ensureInitialized();
      RawSyndicateMapper.ensureInitialized();
      RawActiveMissionMapper.ensureInitialized();
      RawGlobalUpgradeMapper.ensureInitialized();
      RawFlashSaleMapper.ensureInitialized();
      RawInGameMarketMapper.ensureInitialized();
      RawInvasionMapper.ensureInitialized();
      RawTraderMapper.ensureInitialized();
      RawDailyDealMapper.ensureInitialized();
      RawCircuitChoiceMapper.ensureInitialized();
      RawSeasonInfoMapper.ensureInitialized();
      RawCalendarMapper.ensureInitialized();
      RawConquestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawWorldstate';

  static int _$time(RawWorldstate v) => v.time;
  static const Field<RawWorldstate, int> _f$time = Field(
    'time',
    _$time,
    key: r'Time',
  );
  static List<RawEvent> _$events(RawWorldstate v) => v.events;
  static const Field<RawWorldstate, List<RawEvent>> _f$events = Field(
    'events',
    _$events,
    key: r'Events',
  );
  static List<RawGoal> _$goals(RawWorldstate v) => v.goals;
  static const Field<RawWorldstate, List<RawGoal>> _f$goals = Field(
    'goals',
    _$goals,
    key: r'Goals',
  );
  static List<RawAlert> _$alerts(RawWorldstate v) => v.alerts;
  static const Field<RawWorldstate, List<RawAlert>> _f$alerts = Field(
    'alerts',
    _$alerts,
    key: r'Alerts',
  );
  static List<RawSortie> _$sorties(RawWorldstate v) => v.sorties;
  static const Field<RawWorldstate, List<RawSortie>> _f$sorties = Field(
    'sorties',
    _$sorties,
    key: r'Sorties',
  );
  static List<RawSortie> _$liteSorties(RawWorldstate v) => v.liteSorties;
  static const Field<RawWorldstate, List<RawSortie>> _f$liteSorties = Field(
    'liteSorties',
    _$liteSorties,
    key: r'LiteSorties',
  );
  static List<RawSyndicate> _$syndicateMissions(RawWorldstate v) =>
      v.syndicateMissions;
  static const Field<RawWorldstate, List<RawSyndicate>> _f$syndicateMissions =
      Field(
        'syndicateMissions',
        _$syndicateMissions,
        key: r'SyndicateMissions',
      );
  static List<RawActiveMission> _$activeMissions(RawWorldstate v) =>
      v.activeMissions;
  static const Field<RawWorldstate, List<RawActiveMission>> _f$activeMissions =
      Field('activeMissions', _$activeMissions, key: r'ActiveMissions');
  static List<RawGlobalUpgrade> _$globalUpgrades(RawWorldstate v) =>
      v.globalUpgrades;
  static const Field<RawWorldstate, List<RawGlobalUpgrade>> _f$globalUpgrades =
      Field('globalUpgrades', _$globalUpgrades, key: r'GlobalUpgrades');
  static List<RawFlashSale> _$flashSales(RawWorldstate v) => v.flashSales;
  static const Field<RawWorldstate, List<RawFlashSale>> _f$flashSales = Field(
    'flashSales',
    _$flashSales,
    key: r'FlashSales',
  );
  static RawInGameMarket _$inGameMarket(RawWorldstate v) => v.inGameMarket;
  static const Field<RawWorldstate, RawInGameMarket> _f$inGameMarket = Field(
    'inGameMarket',
    _$inGameMarket,
    key: r'InGameMarket',
  );
  static List<RawInvasion> _$invasions(RawWorldstate v) => v.invasions;
  static const Field<RawWorldstate, List<RawInvasion>> _f$invasions = Field(
    'invasions',
    _$invasions,
    key: r'Invasions',
  );
  static List<RawTrader> _$voidTraders(RawWorldstate v) => v.voidTraders;
  static const Field<RawWorldstate, List<RawTrader>> _f$voidTraders = Field(
    'voidTraders',
    _$voidTraders,
    key: r'VoidTraders',
  );
  static List<RawTrader> _$primeVaultTraders(RawWorldstate v) =>
      v.primeVaultTraders;
  static const Field<RawWorldstate, List<RawTrader>> _f$primeVaultTraders =
      Field(
        'primeVaultTraders',
        _$primeVaultTraders,
        key: r'PrimeVaultTraders',
      );
  static List<RawDailyDeal> _$dailyDeals(RawWorldstate v) => v.dailyDeals;
  static const Field<RawWorldstate, List<RawDailyDeal>> _f$dailyDeals = Field(
    'dailyDeals',
    _$dailyDeals,
    key: r'DailyDeals',
  );
  static List<RawActiveMission> _$voidStorms(RawWorldstate v) => v.voidStorms;
  static const Field<RawWorldstate, List<RawActiveMission>> _f$voidStorms =
      Field('voidStorms', _$voidStorms, key: r'VoidStorms');
  static List<num> _$projectPct(RawWorldstate v) => v.projectPct;
  static const Field<RawWorldstate, List<num>> _f$projectPct = Field(
    'projectPct',
    _$projectPct,
    key: r'ProjectPct',
  );
  static List<RawCircuitChoice> _$endlessXpChoices(RawWorldstate v) =>
      v.endlessXpChoices;
  static const Field<RawWorldstate, List<RawCircuitChoice>>
  _f$endlessXpChoices = Field(
    'endlessXpChoices',
    _$endlessXpChoices,
    key: r'EndlessXpChoices',
  );
  static RawSeasonInfo _$seasonInfo(RawWorldstate v) => v.seasonInfo;
  static const Field<RawWorldstate, RawSeasonInfo> _f$seasonInfo = Field(
    'seasonInfo',
    _$seasonInfo,
    key: r'SeasonInfo',
  );
  static List<RawCalendar> _$knownCalendarSeasons(RawWorldstate v) =>
      v.knownCalendarSeasons;
  static const Field<RawWorldstate, List<RawCalendar>> _f$knownCalendarSeasons =
      Field(
        'knownCalendarSeasons',
        _$knownCalendarSeasons,
        key: r'KnownCalendarSeasons',
      );
  static List<RawConquest> _$conquests(RawWorldstate v) => v.conquests;
  static const Field<RawWorldstate, List<RawConquest>> _f$conquests = Field(
    'conquests',
    _$conquests,
    key: r'Conquests',
  );

  @override
  final MappableFields<RawWorldstate> fields = const {
    #time: _f$time,
    #events: _f$events,
    #goals: _f$goals,
    #alerts: _f$alerts,
    #sorties: _f$sorties,
    #liteSorties: _f$liteSorties,
    #syndicateMissions: _f$syndicateMissions,
    #activeMissions: _f$activeMissions,
    #globalUpgrades: _f$globalUpgrades,
    #flashSales: _f$flashSales,
    #inGameMarket: _f$inGameMarket,
    #invasions: _f$invasions,
    #voidTraders: _f$voidTraders,
    #primeVaultTraders: _f$primeVaultTraders,
    #dailyDeals: _f$dailyDeals,
    #voidStorms: _f$voidStorms,
    #projectPct: _f$projectPct,
    #endlessXpChoices: _f$endlessXpChoices,
    #seasonInfo: _f$seasonInfo,
    #knownCalendarSeasons: _f$knownCalendarSeasons,
    #conquests: _f$conquests,
  };
  @override
  final bool ignoreNull = true;

  static RawWorldstate _instantiate(DecodingData data) {
    return RawWorldstate(
      time: data.dec(_f$time),
      events: data.dec(_f$events),
      goals: data.dec(_f$goals),
      alerts: data.dec(_f$alerts),
      sorties: data.dec(_f$sorties),
      liteSorties: data.dec(_f$liteSorties),
      syndicateMissions: data.dec(_f$syndicateMissions),
      activeMissions: data.dec(_f$activeMissions),
      globalUpgrades: data.dec(_f$globalUpgrades),
      flashSales: data.dec(_f$flashSales),
      inGameMarket: data.dec(_f$inGameMarket),
      invasions: data.dec(_f$invasions),
      voidTraders: data.dec(_f$voidTraders),
      primeVaultTraders: data.dec(_f$primeVaultTraders),
      dailyDeals: data.dec(_f$dailyDeals),
      voidStorms: data.dec(_f$voidStorms),
      projectPct: data.dec(_f$projectPct),
      endlessXpChoices: data.dec(_f$endlessXpChoices),
      seasonInfo: data.dec(_f$seasonInfo),
      knownCalendarSeasons: data.dec(_f$knownCalendarSeasons),
      conquests: data.dec(_f$conquests),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawWorldstate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawWorldstate>(map);
  }

  static RawWorldstate fromJson(String json) {
    return ensureInitialized().decodeJson<RawWorldstate>(json);
  }
}

mixin RawWorldstateMappable {
  String toJson() {
    return RawWorldstateMapper.ensureInitialized().encodeJson<RawWorldstate>(
      this as RawWorldstate,
    );
  }

  Map<String, dynamic> toMap() {
    return RawWorldstateMapper.ensureInitialized().encodeMap<RawWorldstate>(
      this as RawWorldstate,
    );
  }

  RawWorldstateCopyWith<RawWorldstate, RawWorldstate, RawWorldstate>
  get copyWith => _RawWorldstateCopyWithImpl<RawWorldstate, RawWorldstate>(
    this as RawWorldstate,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawWorldstateMapper.ensureInitialized().stringifyValue(
      this as RawWorldstate,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawWorldstateMapper.ensureInitialized().equalsValue(
      this as RawWorldstate,
      other,
    );
  }

  @override
  int get hashCode {
    return RawWorldstateMapper.ensureInitialized().hashValue(
      this as RawWorldstate,
    );
  }
}

extension RawWorldstateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawWorldstate, $Out> {
  RawWorldstateCopyWith<$R, RawWorldstate, $Out> get $asRawWorldstate =>
      $base.as((v, t, t2) => _RawWorldstateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawWorldstateCopyWith<$R, $In extends RawWorldstate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, RawEvent, RawEventCopyWith<$R, RawEvent, RawEvent>>
  get events;
  ListCopyWith<$R, RawGoal, RawGoalCopyWith<$R, RawGoal, RawGoal>> get goals;
  ListCopyWith<$R, RawAlert, RawAlertCopyWith<$R, RawAlert, RawAlert>>
  get alerts;
  ListCopyWith<$R, RawSortie, RawSortieCopyWith<$R, RawSortie, RawSortie>>
  get sorties;
  ListCopyWith<$R, RawSortie, RawSortieCopyWith<$R, RawSortie, RawSortie>>
  get liteSorties;
  ListCopyWith<
    $R,
    RawSyndicate,
    RawSyndicateCopyWith<$R, RawSyndicate, RawSyndicate>
  >
  get syndicateMissions;
  ListCopyWith<
    $R,
    RawActiveMission,
    RawActiveMissionCopyWith<$R, RawActiveMission, RawActiveMission>
  >
  get activeMissions;
  ListCopyWith<
    $R,
    RawGlobalUpgrade,
    RawGlobalUpgradeCopyWith<$R, RawGlobalUpgrade, RawGlobalUpgrade>
  >
  get globalUpgrades;
  ListCopyWith<
    $R,
    RawFlashSale,
    RawFlashSaleCopyWith<$R, RawFlashSale, RawFlashSale>
  >
  get flashSales;
  RawInGameMarketCopyWith<$R, RawInGameMarket, RawInGameMarket>
  get inGameMarket;
  ListCopyWith<
    $R,
    RawInvasion,
    RawInvasionCopyWith<$R, RawInvasion, RawInvasion>
  >
  get invasions;
  ListCopyWith<$R, RawTrader, RawTraderCopyWith<$R, RawTrader, RawTrader>>
  get voidTraders;
  ListCopyWith<$R, RawTrader, RawTraderCopyWith<$R, RawTrader, RawTrader>>
  get primeVaultTraders;
  ListCopyWith<
    $R,
    RawDailyDeal,
    RawDailyDealCopyWith<$R, RawDailyDeal, RawDailyDeal>
  >
  get dailyDeals;
  ListCopyWith<
    $R,
    RawActiveMission,
    RawActiveMissionCopyWith<$R, RawActiveMission, RawActiveMission>
  >
  get voidStorms;
  ListCopyWith<$R, num, ObjectCopyWith<$R, num, num>> get projectPct;
  ListCopyWith<
    $R,
    RawCircuitChoice,
    RawCircuitChoiceCopyWith<$R, RawCircuitChoice, RawCircuitChoice>
  >
  get endlessXpChoices;
  RawSeasonInfoCopyWith<$R, RawSeasonInfo, RawSeasonInfo> get seasonInfo;
  ListCopyWith<
    $R,
    RawCalendar,
    RawCalendarCopyWith<$R, RawCalendar, RawCalendar>
  >
  get knownCalendarSeasons;
  ListCopyWith<
    $R,
    RawConquest,
    RawConquestCopyWith<$R, RawConquest, RawConquest>
  >
  get conquests;
  $R call({
    int? time,
    List<RawEvent>? events,
    List<RawGoal>? goals,
    List<RawAlert>? alerts,
    List<RawSortie>? sorties,
    List<RawSortie>? liteSorties,
    List<RawSyndicate>? syndicateMissions,
    List<RawActiveMission>? activeMissions,
    List<RawGlobalUpgrade>? globalUpgrades,
    List<RawFlashSale>? flashSales,
    RawInGameMarket? inGameMarket,
    List<RawInvasion>? invasions,
    List<RawTrader>? voidTraders,
    List<RawTrader>? primeVaultTraders,
    List<RawDailyDeal>? dailyDeals,
    List<RawActiveMission>? voidStorms,
    List<num>? projectPct,
    List<RawCircuitChoice>? endlessXpChoices,
    RawSeasonInfo? seasonInfo,
    List<RawCalendar>? knownCalendarSeasons,
    List<RawConquest>? conquests,
  });
  RawWorldstateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawWorldstateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawWorldstate, $Out>
    implements RawWorldstateCopyWith<$R, RawWorldstate, $Out> {
  _RawWorldstateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawWorldstate> $mapper =
      RawWorldstateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, RawEvent, RawEventCopyWith<$R, RawEvent, RawEvent>>
  get events => ListCopyWith(
    $value.events,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(events: v),
  );
  @override
  ListCopyWith<$R, RawGoal, RawGoalCopyWith<$R, RawGoal, RawGoal>> get goals =>
      ListCopyWith(
        $value.goals,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(goals: v),
      );
  @override
  ListCopyWith<$R, RawAlert, RawAlertCopyWith<$R, RawAlert, RawAlert>>
  get alerts => ListCopyWith(
    $value.alerts,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(alerts: v),
  );
  @override
  ListCopyWith<$R, RawSortie, RawSortieCopyWith<$R, RawSortie, RawSortie>>
  get sorties => ListCopyWith(
    $value.sorties,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(sorties: v),
  );
  @override
  ListCopyWith<$R, RawSortie, RawSortieCopyWith<$R, RawSortie, RawSortie>>
  get liteSorties => ListCopyWith(
    $value.liteSorties,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(liteSorties: v),
  );
  @override
  ListCopyWith<
    $R,
    RawSyndicate,
    RawSyndicateCopyWith<$R, RawSyndicate, RawSyndicate>
  >
  get syndicateMissions => ListCopyWith(
    $value.syndicateMissions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(syndicateMissions: v),
  );
  @override
  ListCopyWith<
    $R,
    RawActiveMission,
    RawActiveMissionCopyWith<$R, RawActiveMission, RawActiveMission>
  >
  get activeMissions => ListCopyWith(
    $value.activeMissions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(activeMissions: v),
  );
  @override
  ListCopyWith<
    $R,
    RawGlobalUpgrade,
    RawGlobalUpgradeCopyWith<$R, RawGlobalUpgrade, RawGlobalUpgrade>
  >
  get globalUpgrades => ListCopyWith(
    $value.globalUpgrades,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(globalUpgrades: v),
  );
  @override
  ListCopyWith<
    $R,
    RawFlashSale,
    RawFlashSaleCopyWith<$R, RawFlashSale, RawFlashSale>
  >
  get flashSales => ListCopyWith(
    $value.flashSales,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(flashSales: v),
  );
  @override
  RawInGameMarketCopyWith<$R, RawInGameMarket, RawInGameMarket>
  get inGameMarket =>
      $value.inGameMarket.copyWith.$chain((v) => call(inGameMarket: v));
  @override
  ListCopyWith<
    $R,
    RawInvasion,
    RawInvasionCopyWith<$R, RawInvasion, RawInvasion>
  >
  get invasions => ListCopyWith(
    $value.invasions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(invasions: v),
  );
  @override
  ListCopyWith<$R, RawTrader, RawTraderCopyWith<$R, RawTrader, RawTrader>>
  get voidTraders => ListCopyWith(
    $value.voidTraders,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(voidTraders: v),
  );
  @override
  ListCopyWith<$R, RawTrader, RawTraderCopyWith<$R, RawTrader, RawTrader>>
  get primeVaultTraders => ListCopyWith(
    $value.primeVaultTraders,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(primeVaultTraders: v),
  );
  @override
  ListCopyWith<
    $R,
    RawDailyDeal,
    RawDailyDealCopyWith<$R, RawDailyDeal, RawDailyDeal>
  >
  get dailyDeals => ListCopyWith(
    $value.dailyDeals,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(dailyDeals: v),
  );
  @override
  ListCopyWith<
    $R,
    RawActiveMission,
    RawActiveMissionCopyWith<$R, RawActiveMission, RawActiveMission>
  >
  get voidStorms => ListCopyWith(
    $value.voidStorms,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(voidStorms: v),
  );
  @override
  ListCopyWith<$R, num, ObjectCopyWith<$R, num, num>> get projectPct =>
      ListCopyWith(
        $value.projectPct,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(projectPct: v),
      );
  @override
  ListCopyWith<
    $R,
    RawCircuitChoice,
    RawCircuitChoiceCopyWith<$R, RawCircuitChoice, RawCircuitChoice>
  >
  get endlessXpChoices => ListCopyWith(
    $value.endlessXpChoices,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(endlessXpChoices: v),
  );
  @override
  RawSeasonInfoCopyWith<$R, RawSeasonInfo, RawSeasonInfo> get seasonInfo =>
      $value.seasonInfo.copyWith.$chain((v) => call(seasonInfo: v));
  @override
  ListCopyWith<
    $R,
    RawCalendar,
    RawCalendarCopyWith<$R, RawCalendar, RawCalendar>
  >
  get knownCalendarSeasons => ListCopyWith(
    $value.knownCalendarSeasons,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(knownCalendarSeasons: v),
  );
  @override
  ListCopyWith<
    $R,
    RawConquest,
    RawConquestCopyWith<$R, RawConquest, RawConquest>
  >
  get conquests => ListCopyWith(
    $value.conquests,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(conquests: v),
  );
  @override
  $R call({
    int? time,
    List<RawEvent>? events,
    List<RawGoal>? goals,
    List<RawAlert>? alerts,
    List<RawSortie>? sorties,
    List<RawSortie>? liteSorties,
    List<RawSyndicate>? syndicateMissions,
    List<RawActiveMission>? activeMissions,
    List<RawGlobalUpgrade>? globalUpgrades,
    List<RawFlashSale>? flashSales,
    RawInGameMarket? inGameMarket,
    List<RawInvasion>? invasions,
    List<RawTrader>? voidTraders,
    List<RawTrader>? primeVaultTraders,
    List<RawDailyDeal>? dailyDeals,
    List<RawActiveMission>? voidStorms,
    List<num>? projectPct,
    List<RawCircuitChoice>? endlessXpChoices,
    RawSeasonInfo? seasonInfo,
    List<RawCalendar>? knownCalendarSeasons,
    List<RawConquest>? conquests,
  }) => $apply(
    FieldCopyWithData({
      if (time != null) #time: time,
      if (events != null) #events: events,
      if (goals != null) #goals: goals,
      if (alerts != null) #alerts: alerts,
      if (sorties != null) #sorties: sorties,
      if (liteSorties != null) #liteSorties: liteSorties,
      if (syndicateMissions != null) #syndicateMissions: syndicateMissions,
      if (activeMissions != null) #activeMissions: activeMissions,
      if (globalUpgrades != null) #globalUpgrades: globalUpgrades,
      if (flashSales != null) #flashSales: flashSales,
      if (inGameMarket != null) #inGameMarket: inGameMarket,
      if (invasions != null) #invasions: invasions,
      if (voidTraders != null) #voidTraders: voidTraders,
      if (primeVaultTraders != null) #primeVaultTraders: primeVaultTraders,
      if (dailyDeals != null) #dailyDeals: dailyDeals,
      if (voidStorms != null) #voidStorms: voidStorms,
      if (projectPct != null) #projectPct: projectPct,
      if (endlessXpChoices != null) #endlessXpChoices: endlessXpChoices,
      if (seasonInfo != null) #seasonInfo: seasonInfo,
      if (knownCalendarSeasons != null)
        #knownCalendarSeasons: knownCalendarSeasons,
      if (conquests != null) #conquests: conquests,
    }),
  );
  @override
  RawWorldstate $make(CopyWithData data) => RawWorldstate(
    time: data.get(#time, or: $value.time),
    events: data.get(#events, or: $value.events),
    goals: data.get(#goals, or: $value.goals),
    alerts: data.get(#alerts, or: $value.alerts),
    sorties: data.get(#sorties, or: $value.sorties),
    liteSorties: data.get(#liteSorties, or: $value.liteSorties),
    syndicateMissions: data.get(
      #syndicateMissions,
      or: $value.syndicateMissions,
    ),
    activeMissions: data.get(#activeMissions, or: $value.activeMissions),
    globalUpgrades: data.get(#globalUpgrades, or: $value.globalUpgrades),
    flashSales: data.get(#flashSales, or: $value.flashSales),
    inGameMarket: data.get(#inGameMarket, or: $value.inGameMarket),
    invasions: data.get(#invasions, or: $value.invasions),
    voidTraders: data.get(#voidTraders, or: $value.voidTraders),
    primeVaultTraders: data.get(
      #primeVaultTraders,
      or: $value.primeVaultTraders,
    ),
    dailyDeals: data.get(#dailyDeals, or: $value.dailyDeals),
    voidStorms: data.get(#voidStorms, or: $value.voidStorms),
    projectPct: data.get(#projectPct, or: $value.projectPct),
    endlessXpChoices: data.get(#endlessXpChoices, or: $value.endlessXpChoices),
    seasonInfo: data.get(#seasonInfo, or: $value.seasonInfo),
    knownCalendarSeasons: data.get(
      #knownCalendarSeasons,
      or: $value.knownCalendarSeasons,
    ),
    conquests: data.get(#conquests, or: $value.conquests),
  );

  @override
  RawWorldstateCopyWith<$R2, RawWorldstate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawWorldstateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class WorldstateMapper extends ClassMapperBase<Worldstate> {
  WorldstateMapper._();

  static WorldstateMapper? _instance;
  static WorldstateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WorldstateMapper._());
      NewsMapper.ensureInitialized();
      WorldEventMapper.ensureInitialized();
      AlertMapper.ensureInitialized();
      SortieMapper.ensureInitialized();
      SyndicateMissionMapper.ensureInitialized();
      VoidFissureMapper.ensureInitialized();
      GlobalUpgradeMapper.ensureInitialized();
      FlashSaleMapper.ensureInitialized();
      InGameMarketMapper.ensureInitialized();
      InvasionMapper.ensureInitialized();
      TraderMapper.ensureInitialized();
      DailyDealMapper.ensureInitialized();
      ConstructionProgressMapper.ensureInitialized();
      DuviriCycleMapper.ensureInitialized();
      NightwaveMapper.ensureInitialized();
      CalendarMapper.ensureInitialized();
      ArchimedeaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Worldstate';

  static DateTime _$timestamp(Worldstate v) => v.timestamp;
  static const Field<Worldstate, DateTime> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
  );
  static List<News> _$news(Worldstate v) => v.news;
  static const Field<Worldstate, List<News>> _f$news = Field('news', _$news);
  static List<WorldEvent> _$events(Worldstate v) => v.events;
  static const Field<Worldstate, List<WorldEvent>> _f$events = Field(
    'events',
    _$events,
  );
  static List<Alert> _$alerts(Worldstate v) => v.alerts;
  static const Field<Worldstate, List<Alert>> _f$alerts = Field(
    'alerts',
    _$alerts,
  );
  static Sortie _$sorite(Worldstate v) => v.sorite;
  static const Field<Worldstate, Sortie> _f$sorite = Field('sorite', _$sorite);
  static Sortie _$archonHunt(Worldstate v) => v.archonHunt;
  static const Field<Worldstate, Sortie> _f$archonHunt = Field(
    'archonHunt',
    _$archonHunt,
  );
  static List<SyndicateMission> _$syndicateMissions(Worldstate v) =>
      v.syndicateMissions;
  static const Field<Worldstate, List<SyndicateMission>> _f$syndicateMissions =
      Field('syndicateMissions', _$syndicateMissions);
  static List<VoidFissure> _$fissures(Worldstate v) => v.fissures;
  static const Field<Worldstate, List<VoidFissure>> _f$fissures = Field(
    'fissures',
    _$fissures,
  );
  static List<GlobalUpgrade> _$globalUpgrades(Worldstate v) => v.globalUpgrades;
  static const Field<Worldstate, List<GlobalUpgrade>> _f$globalUpgrades = Field(
    'globalUpgrades',
    _$globalUpgrades,
  );
  static List<FlashSale> _$flashSales(Worldstate v) => v.flashSales;
  static const Field<Worldstate, List<FlashSale>> _f$flashSales = Field(
    'flashSales',
    _$flashSales,
  );
  static InGameMarket _$inGameMarket(Worldstate v) => v.inGameMarket;
  static const Field<Worldstate, InGameMarket> _f$inGameMarket = Field(
    'inGameMarket',
    _$inGameMarket,
  );
  static List<Invasion> _$invasions(Worldstate v) => v.invasions;
  static const Field<Worldstate, List<Invasion>> _f$invasions = Field(
    'invasions',
    _$invasions,
  );
  static List<Trader> _$voidTraders(Worldstate v) => v.voidTraders;
  static const Field<Worldstate, List<Trader>> _f$voidTraders = Field(
    'voidTraders',
    _$voidTraders,
  );
  static Trader _$vaultTrader(Worldstate v) => v.vaultTrader;
  static const Field<Worldstate, Trader> _f$vaultTrader = Field(
    'vaultTrader',
    _$vaultTrader,
  );
  static List<DailyDeal> _$dailyDeals(Worldstate v) => v.dailyDeals;
  static const Field<Worldstate, List<DailyDeal>> _f$dailyDeals = Field(
    'dailyDeals',
    _$dailyDeals,
  );
  static ConstructionProgress _$constructionProgress(Worldstate v) =>
      v.constructionProgress;
  static const Field<Worldstate, ConstructionProgress> _f$constructionProgress =
      Field('constructionProgress', _$constructionProgress);
  static DuviriCycle _$duviriCycle(Worldstate v) => v.duviriCycle;
  static const Field<Worldstate, DuviriCycle> _f$duviriCycle = Field(
    'duviriCycle',
    _$duviriCycle,
  );
  static Nightwave? _$nightwave(Worldstate v) => v.nightwave;
  static const Field<Worldstate, Nightwave> _f$nightwave = Field(
    'nightwave',
    _$nightwave,
  );
  static Calendar _$calendar(Worldstate v) => v.calendar;
  static const Field<Worldstate, Calendar> _f$calendar = Field(
    'calendar',
    _$calendar,
  );
  static List<Archimedea> _$archimedeas(Worldstate v) => v.archimedeas;
  static const Field<Worldstate, List<Archimedea>> _f$archimedeas = Field(
    'archimedeas',
    _$archimedeas,
  );

  @override
  final MappableFields<Worldstate> fields = const {
    #timestamp: _f$timestamp,
    #news: _f$news,
    #events: _f$events,
    #alerts: _f$alerts,
    #sorite: _f$sorite,
    #archonHunt: _f$archonHunt,
    #syndicateMissions: _f$syndicateMissions,
    #fissures: _f$fissures,
    #globalUpgrades: _f$globalUpgrades,
    #flashSales: _f$flashSales,
    #inGameMarket: _f$inGameMarket,
    #invasions: _f$invasions,
    #voidTraders: _f$voidTraders,
    #vaultTrader: _f$vaultTrader,
    #dailyDeals: _f$dailyDeals,
    #constructionProgress: _f$constructionProgress,
    #duviriCycle: _f$duviriCycle,
    #nightwave: _f$nightwave,
    #calendar: _f$calendar,
    #archimedeas: _f$archimedeas,
  };
  @override
  final bool ignoreNull = true;

  static Worldstate _instantiate(DecodingData data) {
    return Worldstate(
      timestamp: data.dec(_f$timestamp),
      news: data.dec(_f$news),
      events: data.dec(_f$events),
      alerts: data.dec(_f$alerts),
      sorite: data.dec(_f$sorite),
      archonHunt: data.dec(_f$archonHunt),
      syndicateMissions: data.dec(_f$syndicateMissions),
      fissures: data.dec(_f$fissures),
      globalUpgrades: data.dec(_f$globalUpgrades),
      flashSales: data.dec(_f$flashSales),
      inGameMarket: data.dec(_f$inGameMarket),
      invasions: data.dec(_f$invasions),
      voidTraders: data.dec(_f$voidTraders),
      vaultTrader: data.dec(_f$vaultTrader),
      dailyDeals: data.dec(_f$dailyDeals),
      constructionProgress: data.dec(_f$constructionProgress),
      duviriCycle: data.dec(_f$duviriCycle),
      nightwave: data.dec(_f$nightwave),
      calendar: data.dec(_f$calendar),
      archimedeas: data.dec(_f$archimedeas),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Worldstate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Worldstate>(map);
  }

  static Worldstate fromJson(String json) {
    return ensureInitialized().decodeJson<Worldstate>(json);
  }
}

mixin WorldstateMappable {
  String toJson() {
    return WorldstateMapper.ensureInitialized().encodeJson<Worldstate>(
      this as Worldstate,
    );
  }

  Map<String, dynamic> toMap() {
    return WorldstateMapper.ensureInitialized().encodeMap<Worldstate>(
      this as Worldstate,
    );
  }

  WorldstateCopyWith<Worldstate, Worldstate, Worldstate> get copyWith =>
      _WorldstateCopyWithImpl<Worldstate, Worldstate>(
        this as Worldstate,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WorldstateMapper.ensureInitialized().stringifyValue(
      this as Worldstate,
    );
  }

  @override
  bool operator ==(Object other) {
    return WorldstateMapper.ensureInitialized().equalsValue(
      this as Worldstate,
      other,
    );
  }

  @override
  int get hashCode {
    return WorldstateMapper.ensureInitialized().hashValue(this as Worldstate);
  }
}

extension WorldstateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Worldstate, $Out> {
  WorldstateCopyWith<$R, Worldstate, $Out> get $asWorldstate =>
      $base.as((v, t, t2) => _WorldstateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WorldstateCopyWith<$R, $In extends Worldstate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, News, NewsCopyWith<$R, News, News>> get news;
  ListCopyWith<$R, WorldEvent, WorldEventCopyWith<$R, WorldEvent, WorldEvent>>
  get events;
  ListCopyWith<$R, Alert, AlertCopyWith<$R, Alert, Alert>> get alerts;
  SortieCopyWith<$R, Sortie, Sortie> get sorite;
  SortieCopyWith<$R, Sortie, Sortie> get archonHunt;
  ListCopyWith<
    $R,
    SyndicateMission,
    SyndicateMissionCopyWith<$R, SyndicateMission, SyndicateMission>
  >
  get syndicateMissions;
  ListCopyWith<
    $R,
    VoidFissure,
    VoidFissureCopyWith<$R, VoidFissure, VoidFissure>
  >
  get fissures;
  ListCopyWith<
    $R,
    GlobalUpgrade,
    GlobalUpgradeCopyWith<$R, GlobalUpgrade, GlobalUpgrade>
  >
  get globalUpgrades;
  ListCopyWith<$R, FlashSale, FlashSaleCopyWith<$R, FlashSale, FlashSale>>
  get flashSales;
  InGameMarketCopyWith<$R, InGameMarket, InGameMarket> get inGameMarket;
  ListCopyWith<$R, Invasion, InvasionCopyWith<$R, Invasion, Invasion>>
  get invasions;
  ListCopyWith<$R, Trader, TraderCopyWith<$R, Trader, Trader>> get voidTraders;
  TraderCopyWith<$R, Trader, Trader> get vaultTrader;
  ListCopyWith<$R, DailyDeal, DailyDealCopyWith<$R, DailyDeal, DailyDeal>>
  get dailyDeals;
  ConstructionProgressCopyWith<$R, ConstructionProgress, ConstructionProgress>
  get constructionProgress;
  DuviriCycleCopyWith<$R, DuviriCycle, DuviriCycle> get duviriCycle;
  NightwaveCopyWith<$R, Nightwave, Nightwave>? get nightwave;
  CalendarCopyWith<$R, Calendar, Calendar> get calendar;
  ListCopyWith<$R, Archimedea, ArchimedeaCopyWith<$R, Archimedea, Archimedea>>
  get archimedeas;
  $R call({
    DateTime? timestamp,
    List<News>? news,
    List<WorldEvent>? events,
    List<Alert>? alerts,
    Sortie? sorite,
    Sortie? archonHunt,
    List<SyndicateMission>? syndicateMissions,
    List<VoidFissure>? fissures,
    List<GlobalUpgrade>? globalUpgrades,
    List<FlashSale>? flashSales,
    InGameMarket? inGameMarket,
    List<Invasion>? invasions,
    List<Trader>? voidTraders,
    Trader? vaultTrader,
    List<DailyDeal>? dailyDeals,
    ConstructionProgress? constructionProgress,
    DuviriCycle? duviriCycle,
    Nightwave? nightwave,
    Calendar? calendar,
    List<Archimedea>? archimedeas,
  });
  WorldstateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WorldstateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Worldstate, $Out>
    implements WorldstateCopyWith<$R, Worldstate, $Out> {
  _WorldstateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Worldstate> $mapper =
      WorldstateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, News, NewsCopyWith<$R, News, News>> get news => ListCopyWith(
    $value.news,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(news: v),
  );
  @override
  ListCopyWith<$R, WorldEvent, WorldEventCopyWith<$R, WorldEvent, WorldEvent>>
  get events => ListCopyWith(
    $value.events,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(events: v),
  );
  @override
  ListCopyWith<$R, Alert, AlertCopyWith<$R, Alert, Alert>> get alerts =>
      ListCopyWith(
        $value.alerts,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(alerts: v),
      );
  @override
  SortieCopyWith<$R, Sortie, Sortie> get sorite =>
      $value.sorite.copyWith.$chain((v) => call(sorite: v));
  @override
  SortieCopyWith<$R, Sortie, Sortie> get archonHunt =>
      $value.archonHunt.copyWith.$chain((v) => call(archonHunt: v));
  @override
  ListCopyWith<
    $R,
    SyndicateMission,
    SyndicateMissionCopyWith<$R, SyndicateMission, SyndicateMission>
  >
  get syndicateMissions => ListCopyWith(
    $value.syndicateMissions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(syndicateMissions: v),
  );
  @override
  ListCopyWith<
    $R,
    VoidFissure,
    VoidFissureCopyWith<$R, VoidFissure, VoidFissure>
  >
  get fissures => ListCopyWith(
    $value.fissures,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(fissures: v),
  );
  @override
  ListCopyWith<
    $R,
    GlobalUpgrade,
    GlobalUpgradeCopyWith<$R, GlobalUpgrade, GlobalUpgrade>
  >
  get globalUpgrades => ListCopyWith(
    $value.globalUpgrades,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(globalUpgrades: v),
  );
  @override
  ListCopyWith<$R, FlashSale, FlashSaleCopyWith<$R, FlashSale, FlashSale>>
  get flashSales => ListCopyWith(
    $value.flashSales,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(flashSales: v),
  );
  @override
  InGameMarketCopyWith<$R, InGameMarket, InGameMarket> get inGameMarket =>
      $value.inGameMarket.copyWith.$chain((v) => call(inGameMarket: v));
  @override
  ListCopyWith<$R, Invasion, InvasionCopyWith<$R, Invasion, Invasion>>
  get invasions => ListCopyWith(
    $value.invasions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(invasions: v),
  );
  @override
  ListCopyWith<$R, Trader, TraderCopyWith<$R, Trader, Trader>>
  get voidTraders => ListCopyWith(
    $value.voidTraders,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(voidTraders: v),
  );
  @override
  TraderCopyWith<$R, Trader, Trader> get vaultTrader =>
      $value.vaultTrader.copyWith.$chain((v) => call(vaultTrader: v));
  @override
  ListCopyWith<$R, DailyDeal, DailyDealCopyWith<$R, DailyDeal, DailyDeal>>
  get dailyDeals => ListCopyWith(
    $value.dailyDeals,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(dailyDeals: v),
  );
  @override
  ConstructionProgressCopyWith<$R, ConstructionProgress, ConstructionProgress>
  get constructionProgress => $value.constructionProgress.copyWith.$chain(
    (v) => call(constructionProgress: v),
  );
  @override
  DuviriCycleCopyWith<$R, DuviriCycle, DuviriCycle> get duviriCycle =>
      $value.duviriCycle.copyWith.$chain((v) => call(duviriCycle: v));
  @override
  NightwaveCopyWith<$R, Nightwave, Nightwave>? get nightwave =>
      $value.nightwave?.copyWith.$chain((v) => call(nightwave: v));
  @override
  CalendarCopyWith<$R, Calendar, Calendar> get calendar =>
      $value.calendar.copyWith.$chain((v) => call(calendar: v));
  @override
  ListCopyWith<$R, Archimedea, ArchimedeaCopyWith<$R, Archimedea, Archimedea>>
  get archimedeas => ListCopyWith(
    $value.archimedeas,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(archimedeas: v),
  );
  @override
  $R call({
    DateTime? timestamp,
    List<News>? news,
    List<WorldEvent>? events,
    List<Alert>? alerts,
    Sortie? sorite,
    Sortie? archonHunt,
    List<SyndicateMission>? syndicateMissions,
    List<VoidFissure>? fissures,
    List<GlobalUpgrade>? globalUpgrades,
    List<FlashSale>? flashSales,
    InGameMarket? inGameMarket,
    List<Invasion>? invasions,
    List<Trader>? voidTraders,
    Trader? vaultTrader,
    List<DailyDeal>? dailyDeals,
    ConstructionProgress? constructionProgress,
    DuviriCycle? duviriCycle,
    Object? nightwave = $none,
    Calendar? calendar,
    List<Archimedea>? archimedeas,
  }) => $apply(
    FieldCopyWithData({
      if (timestamp != null) #timestamp: timestamp,
      if (news != null) #news: news,
      if (events != null) #events: events,
      if (alerts != null) #alerts: alerts,
      if (sorite != null) #sorite: sorite,
      if (archonHunt != null) #archonHunt: archonHunt,
      if (syndicateMissions != null) #syndicateMissions: syndicateMissions,
      if (fissures != null) #fissures: fissures,
      if (globalUpgrades != null) #globalUpgrades: globalUpgrades,
      if (flashSales != null) #flashSales: flashSales,
      if (inGameMarket != null) #inGameMarket: inGameMarket,
      if (invasions != null) #invasions: invasions,
      if (voidTraders != null) #voidTraders: voidTraders,
      if (vaultTrader != null) #vaultTrader: vaultTrader,
      if (dailyDeals != null) #dailyDeals: dailyDeals,
      if (constructionProgress != null)
        #constructionProgress: constructionProgress,
      if (duviriCycle != null) #duviriCycle: duviriCycle,
      if (nightwave != $none) #nightwave: nightwave,
      if (calendar != null) #calendar: calendar,
      if (archimedeas != null) #archimedeas: archimedeas,
    }),
  );
  @override
  Worldstate $make(CopyWithData data) => Worldstate(
    timestamp: data.get(#timestamp, or: $value.timestamp),
    news: data.get(#news, or: $value.news),
    events: data.get(#events, or: $value.events),
    alerts: data.get(#alerts, or: $value.alerts),
    sorite: data.get(#sorite, or: $value.sorite),
    archonHunt: data.get(#archonHunt, or: $value.archonHunt),
    syndicateMissions: data.get(
      #syndicateMissions,
      or: $value.syndicateMissions,
    ),
    fissures: data.get(#fissures, or: $value.fissures),
    globalUpgrades: data.get(#globalUpgrades, or: $value.globalUpgrades),
    flashSales: data.get(#flashSales, or: $value.flashSales),
    inGameMarket: data.get(#inGameMarket, or: $value.inGameMarket),
    invasions: data.get(#invasions, or: $value.invasions),
    voidTraders: data.get(#voidTraders, or: $value.voidTraders),
    vaultTrader: data.get(#vaultTrader, or: $value.vaultTrader),
    dailyDeals: data.get(#dailyDeals, or: $value.dailyDeals),
    constructionProgress: data.get(
      #constructionProgress,
      or: $value.constructionProgress,
    ),
    duviriCycle: data.get(#duviriCycle, or: $value.duviriCycle),
    nightwave: data.get(#nightwave, or: $value.nightwave),
    calendar: data.get(#calendar, or: $value.calendar),
    archimedeas: data.get(#archimedeas, or: $value.archimedeas),
  );

  @override
  WorldstateCopyWith<$R2, Worldstate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WorldstateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

typedef _t$_R1<A> = ({A categories});

class _t$_R1Mapper extends RecordMapperBase<_t$_R1> {
  static _t$_R1Mapper? _instance;
  _t$_R1Mapper._();

  static _t$_R1Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R1Mapper._());
      MapperBase.addType(<A>(f) => f<({A categories})>());
    }
    return _instance!;
  }

  static dynamic _$categories(_t$_R1 v) => v.categories;
  static dynamic _arg$categories<A>(f) => f<A>();
  static const Field<_t$_R1, dynamic> _f$categories = Field(
    'categories',
    _$categories,
    arg: _arg$categories,
  );

  @override
  final MappableFields<_t$_R1> fields = const {#categories: _f$categories};

  @override
  Function get typeFactory =>
      <A>(f) => f<_t$_R1<A>>();

  static _t$_R1<A> _instantiate<A>(DecodingData<_t$_R1> data) {
    return (categories: data.dec(_f$categories));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R1<A> fromMap<A>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R1<A>>(map);
  }

  static _t$_R1<A> fromJson<A>(String json) {
    return ensureInitialized().decodeJson<_t$_R1<A>>(json);
  }
}

typedef _t$_R3<A, B, C> = ({A description, B isElite, C title});

class _t$_R3Mapper extends RecordMapperBase<_t$_R3> {
  static _t$_R3Mapper? _instance;
  _t$_R3Mapper._();

  static _t$_R3Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R3Mapper._());
      MapperBase.addType(
        <A, B, C>(f) => f<({A description, B isElite, C title})>(),
      );
    }
    return _instance!;
  }

  static dynamic _$description(_t$_R3 v) => v.description;
  static dynamic _arg$description<A, B, C>(f) => f<A>();
  static const Field<_t$_R3, dynamic> _f$description = Field(
    'description',
    _$description,
    arg: _arg$description,
  );
  static dynamic _$isElite(_t$_R3 v) => v.isElite;
  static dynamic _arg$isElite<A, B, C>(f) => f<B>();
  static const Field<_t$_R3, dynamic> _f$isElite = Field(
    'isElite',
    _$isElite,
    arg: _arg$isElite,
  );
  static dynamic _$title(_t$_R3 v) => v.title;
  static dynamic _arg$title<A, B, C>(f) => f<C>();
  static const Field<_t$_R3, dynamic> _f$title = Field(
    'title',
    _$title,
    arg: _arg$title,
  );

  @override
  final MappableFields<_t$_R3> fields = const {
    #description: _f$description,
    #isElite: _f$isElite,
    #title: _f$title,
  };

  @override
  Function get typeFactory =>
      <A, B, C>(f) => f<_t$_R3<A, B, C>>();

  static _t$_R3<A, B, C> _instantiate<A, B, C>(DecodingData<_t$_R3> data) {
    return (
      description: data.dec(_f$description),
      isElite: data.dec(_f$isElite),
      title: data.dec(_f$title),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R3<A, B, C> fromMap<A, B, C>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R3<A, B, C>>(map);
  }

  static _t$_R3<A, B, C> fromJson<A, B, C>(String json) {
    return ensureInitialized().decodeJson<_t$_R3<A, B, C>>(json);
  }
}

typedef _t$_R2<A, B> = ({A description, B title});

class _t$_R2Mapper extends RecordMapperBase<_t$_R2> {
  static _t$_R2Mapper? _instance;
  _t$_R2Mapper._();

  static _t$_R2Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R2Mapper._());
      MapperBase.addType(<A, B>(f) => f<({A description, B title})>());
    }
    return _instance!;
  }

  static dynamic _$description(_t$_R2 v) => v.description;
  static dynamic _arg$description<A, B>(f) => f<A>();
  static const Field<_t$_R2, dynamic> _f$description = Field(
    'description',
    _$description,
    arg: _arg$description,
  );
  static dynamic _$title(_t$_R2 v) => v.title;
  static dynamic _arg$title<A, B>(f) => f<B>();
  static const Field<_t$_R2, dynamic> _f$title = Field(
    'title',
    _$title,
    arg: _arg$title,
  );

  @override
  final MappableFields<_t$_R2> fields = const {
    #description: _f$description,
    #title: _f$title,
  };

  @override
  Function get typeFactory =>
      <A, B>(f) => f<_t$_R2<A, B>>();

  static _t$_R2<A, B> _instantiate<A, B>(DecodingData<_t$_R2> data) {
    return (description: data.dec(_f$description), title: data.dec(_f$title));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R2<A, B> fromMap<A, B>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R2<A, B>>(map);
  }

  static _t$_R2<A, B> fromJson<A, B>(String json) {
    return ensureInitialized().decodeJson<_t$_R2<A, B>>(json);
  }
}

typedef _t$_R0<A, B> = ({A description, B type});

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A, B>(f) => f<({A description, B type})>());
    }
    return _instance!;
  }

  static dynamic _$description(_t$_R0 v) => v.description;
  static dynamic _arg$description<A, B>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$description = Field(
    'description',
    _$description,
    arg: _arg$description,
  );
  static dynamic _$type(_t$_R0 v) => v.type;
  static dynamic _arg$type<A, B>(f) => f<B>();
  static const Field<_t$_R0, dynamic> _f$type = Field(
    'type',
    _$type,
    arg: _arg$type,
  );

  @override
  final MappableFields<_t$_R0> fields = const {
    #description: _f$description,
    #type: _f$type,
  };

  @override
  Function get typeFactory =>
      <A, B>(f) => f<_t$_R0<A, B>>();

  static _t$_R0<A, B> _instantiate<A, B>(DecodingData<_t$_R0> data) {
    return (description: data.dec(_f$description), type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A, B> fromMap<A, B>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A, B>>(map);
  }

  static _t$_R0<A, B> fromJson<A, B>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A, B>>(json);
  }
}

