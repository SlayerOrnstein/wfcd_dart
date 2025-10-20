enum DamageType {
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
  trueType(19);

  const DamageType(this.position);

  final int position;

  String get key {
    return switch (this) {
      DamageType.voidDamage => 'void',
      DamageType.trueType => 'true',
      _ => name,
    };
  }
}
