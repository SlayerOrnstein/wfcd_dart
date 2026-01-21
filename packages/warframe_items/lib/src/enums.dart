enum Category {
  /// Sigils
  sigils('Sigils'),

  /// Skins (cosmetic customizations)
  skins('Skins'),

  /// Glyphs
  glyphs('Glyphs'),

  /// Miscellaneous items
  misc('Misc'),

  /// Gear (consumables and utilities)
  gear('Gear'),

  /// Quests
  quests('Quests'),

  /// Relics (void relics)
  relics('Relics'),

  /// Arcanes
  arcanes('Arcanes'),

  /// Sentinels (companion robots)
  sentinels('Sentinels'),

  /// Pets (companions)
  pets('Pets'),

  /// Pet (single pet, different from collection?)
  pet('Pet'),

  /// Mods (modifications/upgrades)
  mods('Mods'),

  /// Archwing (space combat gear)
  archwing('Archwing'),

  /// Warframes (playable frames)
  warframes('Warframes'),

  /// Arch-Gun (archwing primary weapons)
  archGun('Arch-Gun'),

  /// Arch-Melee (archwing melee weapons)
  archMelee('Arch-Melee'),

  /// Melee weapons
  melee('Melee'),

  /// Secondary weapons (pistols)
  secondary('Secondary'),

  /// Primary weapons (rifles, shotguns)
  primary('Primary'),

  /// Railjack components/weapons
  railjack('Railjack'),

  /// Resources (crafting materials)
  resources('Resources'),

  /// Fish (captured fish)
  fish('Fish'),

  /// Enemy
  enemy('Enemy'),

  /// Node (star chart nodes)
  node('Node'),

  /// Necramech suit
  necramech('Necramech'),

  /// Exalted Weapon
  exalted('Exalted')
  ;

  const Category(this.value);

  /// Category display name
  final String value;
}

enum DamageTypes {
  impact(0),
  slash(1),
  puncture(2),
  heat(3),
  cold(4),
  electricity(5),
  toxin(6),
  blast(7),
  radiation(8),
  gas(9),
  magnetic(10),
  viral(11),
  corrosive(12),
  voidDamage(13),
  tau(14),
  cinematic(15),
  shieldDrain(16),
  healthDrain(17),
  energyDrain(18),
  trueType(19)
  ;

  const DamageTypes(this.position);

  final int position;

  String get key {
    return switch (this) {
      DamageTypes.voidDamage => 'void',
      DamageTypes.trueType => 'true',
      _ => name,
    };
  }
}

enum ExportTypes {
  customs('ExportCustoms'),
  weapons('ExportWeapons'),
  warframes('ExportWarframes'),
  upgrades('ExportUpgrades'),
  sortieRewards('ExportSortieRewards'),
  relics('ExportRelicArcane'),
  resources('ExportResources'),
  sentinels('ExportSentinels'),
  flavour('ExportFlavour'),
  regions('ExportRegions'),
  manifest('ExportManifest'),
  drones('ExportDrones'),
  keys('ExportKeys'),
  gear('ExportGear'),
  recipes('ExportRecipes')
  ;

  const ExportTypes(this.rootKey);

  final String rootKey;
}

enum ItemTypes {
  /// Melee Mod
  meleeMod('Melee Mod', [
    'ShrineMaidenNaginataAugment',
    '/PvPMods/Melee',
    '/DualSource/Melee',
    '/Mods/Melee',
    'Sets/.*/Melee',
    '/Melee',
    r'SwordsWeapon$',
    'Grineer/Melee',
  ]),

  /// Primary Mod
  primaryMod('Primary Mod', [
    'ShrineMaidenGunbrellaAugment',
    '/Mod/Rifle',
    '/Mods/Rifle',
    '/PvPMods/Rifle',
    '/DualSource/Rifle',
    'Sets/.*/Primary',
  ]),

  /// Secondary Mod
  secondaryMod('Secondary Mod', [
    '/Mods/Pistol',
    '/PvPMods/Pistol',
    '/DualSource/Pistol',
    'PistolMod',
    'Mods/.*/Pistol',
    'Sets/.*/Pistol',
    'Sets/.*/Secondary',
    'Mods/.*PistolAugmentMod',
  ]),

  /// Shotgun Mod
  shotgunMod('Shotgun Mod', [
    '/Mods/Shotgun',
    '/PvPMods/Shotgun',
    '/DualSource/Shotgun',
  ]),

  /// Stance Mod
  stanceMod('Stance Mod', [
    '/PvPMods/Stances',
    '/Melee/MeleeTrees',
    'Mods/.*/Stances',
  ]),

  /// Arch-Gun
  archGun('Arch-Gun', [
    '/Archwing/Primary',
    '/HeavyWeapons',
  ]),

  /// Arch-Melee Mod
  archMeleeMod('Arch-Melee Mod', ['/Mods/Archwing/Melee']),

  /// Arch-Gun Mod
  archGunMod('Arch-Gun Mod', [
    '/Mods/Archwing/Rifle',
    '/Mods/Archwing/Shotgun',
    '/Mods/Archwing/Secondary',
    'Mods/Archwing/Rifle',
  ]),

  /// Arch-Melee
  archMelee('Arch-Melee', ['/Archwing/Melee']),

  /// Sigil
  sigil('Sigil', ['/Sigils']),

  /// Skin
  skin('Skin', [
    '/Skins',
    'Customization',
    '/CatbrowTail',
    '/CatbrowHead',
  ]),

  /// Skins
  skins('Skins', [
    r'Skin$',
    'CatbrowPet/Heads',
    'InfestedKavatPet/Heads',
    'InfestedKavatPet/Tails',
    'InfestedPredatorPet/Heads',
  ]),

  /// Archwing Mod
  archwingMod('Archwing Mod', [
    'Powersuits/Archwing/.*Augment',
    '/Mods/Archwing',
  ]),

  /// Archwing
  archwing('Archwing', ['/Archwing/']),

  /// Warframe Mod
  warframeMod('Warframe Mod', [
    'Powersuits/.*Augment',
    'AugmentCard',
    '/Lotus/Powersuits/.*Mod',
    '/PvPMods/Warframe',
    '/DualSource/Warframe',
    '/Mods/Warframe',
    '/Mods/Aura',
    'Mods/Nemesis',
    'Sets/.*/Warframe',
  ]),

  /// Exalted Weapon
  exaltedWeapon('Exalted Weapon', [
    'Exalted.*Weapon',
    'Powersuits/.*/?.*Weapon',
    '/Exalted',
    '/Lotus/Powersuits/.*Exalted',
    'NechroTech/Ability',
  ]),

  /// Warframe
  warframe('Warframe', ['/Powersuits']),

  /// Misc
  misc('Misc', [
    '/WarframeRecipes',
    '/Quest',
    '/MiscItems',
  ]),

  /// Relic
  relic('Relic', ['/Projections']),

  /// Gear
  gear('Gear', [
    '/Restorative',
    '/Lotus/Upgrades/Stickers',
  ]),

  /// Key
  key('Key', ['/Keys']),

  /// Ship Decoration
  shipDecoration('Ship Decoration', [
    '/Game/QuartersWallpapers',
    '/ShipDecos',
    'ActionFigureDioramas',
    'PoseSets',
    'Tenno/Props',
  ]),

  /// Ship Segment
  shipSegment('Ship Segment', ['/ShipFeatureItems']),

  /// Orbiter
  orbiter('Orbiter', ['/Ships']),

  /// Extractor
  extractor('Extractor', ['/Ship']),

  /// Conservation Prey
  conservationPrey('Conservation Prey', [
    'Deimos/Wounded',
    'NeutralCreatures/Conservation',
  ]),

  /// Pet Parts
  petParts('Pet Parts', [
    'Deimos/.*Mutagen',
    '/CreaturePetParts',
  ]),

  /// Pets
  pets('Pets', [
    'KubrowPetPowerSuit',
    'CatbrowPetPowerSuit',
    '/MoaPetHead',
    '/Pets/CreaturePets',
    '/ZanukaPetPartHead',
    'Deimos/WoundedInfested',
  ]),

  /// Specter
  specter('Specter', ['/SpectreArmies']),

  /// Rifle
  rifle('Rifle', [
    'SentRifle',
    '/LongGuns',
    'Rifle',
    'ClanTech/.*Weapon',
    'Primary',
    'Weapon',
  ]),

  /// Eidolon Shard
  eidolonShard('Eidolon Shard', ['/SentientShards']),

  /// Fish Part
  fishPart('Fish Part', [
    '/FishParts',
    'Resource/Fish',
  ]),

  /// Fish Bait
  fishBait('Fish Bait', [
    'FishBait/Infested',
    'Deimos/InfestedWyrmBlood',
  ]),

  /// Fish
  fish('Fish', ['/Fish']),

  /// Alloy
  alloy('Alloy', [
    'AlloyAItem',
    'AlloyBItem',
  ]),

  /// Cut Gem
  cutGem('Cut Gem', ['CutItem']),

  /// Gem
  gem('Gem', ['/Gems']),

  /// Plant
  plant('Plant', ['/Plants']),

  /// Medallion
  medallion('Medallion', ['/SyndicateDogTags']),

  /// Focus Lens
  focusLens('Focus Lens', [
    'Upgrades/Focus/.*Lens',
    '/Focus/',
    '/FocusLens',
  ]),

  /// Focus Way
  focusWay('Focus Way', ['Upgrades/Focus']),

  /// Companion Mod
  companionMod('Companion Mod', [
    '/Pets/MoaPets/MoaPetPrecept/',
    '/Pets/CreaturePets/CreaturePrecepts/',
    '/Pets/.*Precepts/',
    '/Mods/Sentinel',
    '/Sentinels/SentinelPrecepts',
    'Sets/.*/Kavat',
    'Sets/.*/Companion.*Mod',
    'Sets/.*/Sentinel',
    'Sets/.*/Helminth',
    '/ZanukaPets/ZanukaPetPrecepts',
    'Kubrow.*Mod',
  ]),

  /// Parazon Mod
  parazonMod('Parazon Mod', ['/Mods/DataSpike']),

  /// K-Drive Mod
  kDriveMod('K-Drive Mod', ['/Mods/Hoverboard']),

  /// Companion Weapon
  companionWeapon('Companion Weapon', [
    '/SentinelWeapons',
    'SentinelWeapon',
    'MoaPetComponents/.*Weapon',
    'ZanukaPetMeleeWeapon',
  ]),

  /// Sentinel
  sentinel('Sentinel', [
    '/Sentinels',
    'SentinelWeapons',
  ]),

  /// Throwing
  throwing('Throwing', ['/ThrowingWeapons']),

  /// Peculiar Mod
  peculiarMod('Peculiar Mod', ['CosmeticEnhancers/Peculiars']),

  /// Arcane
  arcane('Arcane', [
    'CosmeticEnhancers',
    'CosmeticEnhancer',
  ]),

  /// Shotgun Riven Mod
  shotgunRivenMod('Shotgun Riven Mod', [
    'RawShotgunRandomMod',
    'LotusShotgunRandom',
    'Mods/Randomized/LotusModularShotgun',
  ]),

  /// Shotgun
  shotgun('Shotgun', [
    '/Shotgun',
    'Shotgun',
    '/LongGuns/PrimeStrun',
  ]),

  /// Pistol
  pistol('Pistol', [
    '/Pistols',
    '/ShortGuns',
    'Pistol',
    'Secondary',
  ]),

  /// Dual Pistols
  dualPistols('Dual Pistols', [
    'Akimbo',
    '/PrimeAk',
    '/AkPrime',
    'Uzi',
    'Harlequin',
  ]),

  /// Zaw Component
  zawComponent('Zaw Component', ['/ModularMelee']),

  /// Amp
  amp('Amp', ['/OperatorAmplifiers']),

  /// Kitgun Component
  kitgunComponent('Kitgun Component', [
    '/InfModular',
    '/SUModularSecondary',
    '/SUModularPrimarySet1',
  ]),

  /// Glyph
  glyph('Glyph', ['/AvatarImages']),

  /// Node
  node('Node', ['SolNode', 'ClanNode', 'SettlementNode', 'CrewBattle']),

  /// Grineer Settlement Node
  grineerSettlementNode('Grineer Settlement Node', ['SettlementNode']),

  /// Fur Color
  furColor('Fur Color', ['Colors']),

  /// K-Drive Component
  kDriveComponent('K-Drive Component', ['/HoverboardParts']),

  /// Conservation Tag
  conservationTag('Conservation Tag', ['/AnimalTag']),

  /// Companion Weapon Riven Mod
  companionWeaponRivenMod('Companion Weapon Riven Mod', [
    'RawSentinelWeaponRandomMod',
  ]),

  /// Arch-Gun Riven Mod
  archGunRivenMod('Arch-Gun Riven Mod', [
    'RawArchgunRandomMod',
    'LotusArchgunRandomMod',
  ]),

  /// Rifle Riven Mod
  rifleRivenMod('Rifle Riven Mod', [
    'RawPrimaryRandomMod',
    'RawRifleRandomMod',
    'LotusRifleRandomMod',
  ]),

  /// Pistol Riven Mod
  pistolRivenMod('Pistol Riven Mod', [
    'RawPistolRandomMod',
    'RawSecondaryRandomMod',
    'LotusPistolRandomMod',
  ]),

  /// Melee Riven Mod
  meleeRivenMod('Melee Riven Mod', [
    'RawMeleeRandomMod',
    'MeleeWeaponRandomMod',
  ]),

  /// Zaw Riven Mod
  zawRivenMod('Zaw Riven Mod', [
    'RawModularMeleeRandomMod',
    'LotusModularMeleeRandomMod',
  ]),

  /// Kitgun Riven Mod
  kitgunRivenMod('Kitgun Riven Mod', [
    'RawModularPistolRandomMod',
    'LotusModularPistolRandomMod',
    'Mods/Randomized/LotusModularPistol',
    'Mods/Randomized/LotusModularRifle',
  ]),

  /// Riven Mod
  rivenMod('Riven Mod', ['/Mods/Randomized'], append: true),

  /// Syandana
  syandana('Syandana', ['Scarves']),

  /// Color Palette
  colorPalette('Color Palette', [
    'SuitCustomizations/NinjaColourPickerItem',
    'StoreItems/SuitCustomizations/ColourPicker',
    'StoreItems/SuitCustomizations',
  ]),

  /// Fur Pattern
  furPattern('Fur Pattern', [
    'KubrowPet/Patterns',
    'CatbrowPet/Patterns',
    '/InfestedKavatPet/Patterns/',
    'InfestedPredatorPet/Patterns',
  ]),

  /// Ayatan Star
  ayatanStar('Ayatan Star', ['FusexOrnament']),

  /// Ayatan Sculpture
  ayatanSculpture('Ayatan Sculpture', ['/FusionTreasures/']),

  /// Arcade Minigame Unlock
  arcadeMinigame('Arcade Minigame Unlock', ['ArcadeItem']),

  /// Pet Resource
  petResource('Pet Resource', [
    'MoaPetPayload',
    'MoaPetEngine',
    'MoaPetLeg',
    'KubrowPetFood',
    'BlankTraitPrint',
    'EggHatcher',
    'CatbrowGeneticSignature',
    'Eggs/KubrowEgg',
    'ZanukaPets/ZanukaPetParts',
  ]),

  /// Pet Collar
  petCollar('Pet Collar', ['PetCollar']),

  /// Emotes
  emotes('Emotes', ['/Items/Emotes/']),

  /// Theme Background
  themeBackground('Theme Background', ['Graphics/CustomUI/Backgrounds']),

  /// Theme Sound
  themeSound('Theme Sound', ['Graphics/CustomUI/Sounds']),

  /// Themes
  themes('Themes', ['Graphics/CustomUI']),

  /// Note Packs
  notePacks('Note Packs', ['NotePacks']),

  /// Simulacrum
  simulacrum('Simulacrum', ['Items/DangerRoom']),

  /// Railjack Mod
  railjackMod('Railjack Mod', [
    'CrewShip/CrewShipInnate',
    'InnateDamageRandomMod',
  ]),

  /// Captura
  captura('Captura', [
    'Items/PhotoBooth',
    'Items/Photobooth',
  ]),

  /// Necramech Mod
  necramechMod('Necramech Mod', ['/Mods/Necromech']),

  /// Plexus Mod
  plexusMod('Plexus Mod', [
    'Railjack/Abilities',
    'Mods/Railjack',
  ]),

  /// Transmutation Mod
  transmutationMod('Transmutation Mod', ['/Mods/TransmuteCores']),

  /// Equipment Adapter
  equipmentAdapter('Equipment Adapter', [
    '/MiscItems/Forma',
    'IncarnonAdapters',
    'WeaponAdapter',
    'Unlocker',
  ]),

  /// Posture Mod
  postureMod('Posture Mod', ['BeastWeapons/Stances']),

  /// Railjack Turret
  railjackTurret('Railjack Turret', ['Weapons/CrewShip']),

  /// Tome
  tome('Tome', ['Tenno/Grimoire']),

  /// Boosters
  boosters('Boosters', ['/Boosters/']),

  /// Currency
  currency('Currency', [
    'Events/OperationsCredits',
    'Items/PrimeBucks',
    'PrimeBucks',
  ]),

  /// Mod (generic, append to existing name)
  mod('Mod', [
    '/Mods/Syndicate',
    'Mods/Sets/.*',
    'Sets/',
    'Mods/OrokinChallenge',
    r'.*AugmentMod$',
    'Upgrades/Mods/.*Mod',
    '/Lotus/Upgrades/.*',
  ], append: true),

  /// Resource
  resource('Resource', [
    '/Research',
    '/Items/RelayRebuild/Phase',
    'Items/Deimos/EntratiFragment',
    'Nemesis/KuvaLich/CapturedLichToken',
    '/Solaris/DebtToken',
    '/Tokens/GreedTokens',
    'Nightwave/CephalonFissureTimePointItem',
    '/Resources',
    '/Resource',
    'Essence',
    'Element',
    'FusionBundles/',
    'RailjackMiscItems',
    'RelayRebuild/PhaseOneClanItem',
    'Events/RelayReconstruction',
    'Items/RelayReconstruction',
    'LichToken',
    'Items/Deimos/Seriglass',
    'Upgrades/Mods/Fusers',
    r'Part$',
  ])
  ;

  const ItemTypes(this.value, this.patterns, {this.append = false});

  /// Type name
  final String value;

  /// Type regex/string patterns
  final List<String> patterns;

  /// Whether or not the type is meant to be appended with name
  final bool append;

  /// Find the matching item type for a uniqueName
  static ItemTypes findType(String uniqueName) {
    return ItemTypes.values.firstWhere(
      (type) => type.patterns.any((p) => RegExp(p).hasMatch(uniqueName)),
      orElse: () => ItemTypes.misc,
    );
  }

  /// Get display name, appending if necessary
  String getDisplayName(String? baseName) {
    if (append && baseName != null) {
      return '$baseName $value';
    }
    return value;
  }
}

enum Languages {
  en('en'),
  de('de'),
  es('es'),
  fr('fr'),
  it('it'),
  ja('ja'),
  ko('ko'),
  pl('pl'),
  pt('pt'),
  ru('ru'),
  tc('tc'),
  th('th'),
  tr('tr'),
  uk('uk'),
  zh('zh')
  ;

  const Languages(this.code);

  final String code;
}

enum RelicGrades {
  intact('Bronze'),
  exceptional('Silver'),
  flawless('Gold'),
  radiant('Platinum')
  ;

  const RelicGrades(this.id);

  final String id;
}
