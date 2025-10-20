enum ItemType {
  /// Melee Mods
  meleeMod('Melee Mod', [
    'ShrineMaidenNaginataAugmen',
    '/PvPMods/Melee',
    '/DualSource/Melee',
    '/Mods/Melee',
    'Sets/.*/Melee',
  ]),

  /// Primary mods
  primaryMod('Primary Mod', [
    'ShrineMaidenGunbrellaAugment',
    '/Mods?/Rifle',
    '/PvPMods/Rifle',
    '/DualSource/Rifle',
    'Sets/.*/Primary',
  ]),

  /// Arch-Gun
  archGun('Arch-Gun', ['/Archwing/Primary', '/HeavyWeapons']),

  /// Arch-Melee mod
  archMeleeMod('Arch-Melee Mod', ['/Mods/Archwing/Melee']),

  /// Arch-Gun mod
  archGunMod('Arch-Gun Mod', [
    '/?Mods/Archwing/Rifle',
    '/Mods/Archwing/Shotgun',
    '/Mods/Archwing/Secondary',
  ]),

  /// Arch-Mele
  archMelee('Arch-Melee', ['/Archwing/Melee']),

  /// Sigil
  sigil('Sigil', ['/Sigils']),

  /// Skin
  skin('Skin', ['/Skins']),

  /// Skins
  skins('Skins', [r'/Skin$']),

  /// Archwing mods
  archwingMod('Archwing Mod', [
    'Powersuits/Archwing/.*Augment',
    r'/Mods/Archwing(?!/\w+)',
  ]),

  /// Archwing
  archwing('Archwing', ['/Archwing/']),

  /// Warframe mods
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

  /// Misc item
  misc('Misc', ['/WarframeRecipes', '/MiscItems']),

  /// Relic
  relic('Relic', ['/Projections']),

  /// Gear
  gear('Gear', ['/Restorative']),

  /// Key
  key('Keys', ['/Keys']),

  /// Ship Decoration
  shipDeco('Ship Decoration', [
    '/Game/QuartersWallpapers',
    '/ShipDecos',
    'ActionFigureDioramas',
    'PoseSets',
    'Tenno/Props',
  ]),

  resource('Resource', []);

  // ignore: unused_element_parameter will use this at somepoint so shut it
  const ItemType(this.value, this.patterns, {this.append = false});

  /// Type name
  final String value;

  /// type regex/string patterns
  final List<String> patterns;

  /// Whether or not the type is meant to be appended with name
  final bool append;

  static ItemType? findType(String uniqueName) {
    try {
      return ItemType.values.firstWhere(
        (type) => type.patterns.any((p) => RegExp(p).hasMatch(uniqueName)),
      );
    } on Exception {
      return null;
    }
  }
}
