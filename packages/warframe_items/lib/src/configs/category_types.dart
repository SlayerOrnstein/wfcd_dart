enum CategoryType {
  sigils('Sigils'),
  skins('Skins'),
  misc('Misc'),
  glyphs('Glyphs'),
  gear('Gear'),
  relics('Relics'),
  quests('Quests'),
  arcanes('Arcanes'),
  pets('Pets'),
  mods('Mods'),
  archwing('Archwing'),
  warframes('Warframes'),
  archGun('Arch-Gun'),
  archMelee('Arch-Melee'),
  melee('Melee'),
  secondary('Secondary'),
  primary('Primary'),
  railjack('Railjack'),
  sentinels('Sentinels'),
  resources('Resources'),
  fish('Fish'),
  node('Node');

  const CategoryType(this.value);

  final String value;

  static CategoryType findCategory(String category) {
    return CategoryType.values.firstWhere(
      (c) => c.value == category.toLowerCase(),
      orElse: () => CategoryType.misc,
    );
  }
}
