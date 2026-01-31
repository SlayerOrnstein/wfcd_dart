import 'package:dart_mappable/dart_mappable.dart';
import 'package:profile_models/src/utils/utils.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

part 'loadout_preset.mapper.dart';

@MappableClass()
class RawSlotPreset with RawSlotPresetMappable {
  RawSlotPreset({required this.itemId, required this.mod, required this.cus, required this.hide});

  @MappableField(key: 'ItemId')
  final JsonObject itemId;
  final int mod;
  final int cus;
  final bool? hide;
}

@MappableClass()
class RawLoadoutPreset with RawLoadoutPresetMappable {
  RawLoadoutPreset({
    required this.focusSchool,
    required this.presetIcon,
    required this.favorite,
    required this.n,
    required this.s,
    required this.l,
    required this.p,
    required this.h,
    required this.m,
    required this.a,
    required this.b,
  });

  @MappableField(key: 'FocusSchool')
  final String? focusSchool;

  @MappableField(key: 'PresetIcon')
  final String presetIcon;

  @MappableField(key: 'Favorite')
  final bool favorite;

  final String n;
  final RawSlotPreset s;
  final RawSlotPreset? l;
  final RawSlotPreset? p;
  final RawSlotPreset? h;
  final RawSlotPreset? m;
  final RawSlotPreset? a;
  final RawSlotPreset? b;

  LoadoutPreset toLoadoutPreset() => LoadoutPreset.fromRaw(this);
}

@MappableClass()
class SlotPreset with SlotPresetMappable {
  SlotPreset({required this.id, required this.modPreset, required this.appearancePreset, this.isHidden = false});

  factory SlotPreset.fromRaw(RawSlotPreset raw) {
    String toPreseChar(int code) => String.fromCharCode(64 + (code + 1));

    return SlotPreset(
      id: parseId(raw.itemId),
      modPreset: toPreseChar(raw.mod),
      appearancePreset: toPreseChar(raw.cus),
      isHidden: raw.hide ?? false,
    );
  }

  final String id;
  final String modPreset;
  final String appearancePreset;
  final bool isHidden;
}

@MappableClass()
class LoadoutPreset with LoadoutPresetMappable {
  LoadoutPreset({
    required this.focusSchool,
    required this.icon,
    required this.name,
    required this.warframe,
    required this.primary,
    required this.secondary,
    required this.heavy,
    required this.melee,
    required this.exaltedA,
    required this.exaltedB,
    this.isFavorite = false,
  });

  factory LoadoutPreset.fromRaw(RawLoadoutPreset raw) {
    return LoadoutPreset(
      focusSchool: raw.focusSchool != null ? Polarities.translatePolarity(raw.focusSchool!) : null,
      icon: raw.presetIcon,
      isFavorite: raw.favorite,
      name: raw.n,
      warframe: SlotPreset.fromRaw(raw.s),
      primary: raw.l != null ? SlotPreset.fromRaw(raw.l!) : null,
      secondary: raw.p != null ? SlotPreset.fromRaw(raw.p!) : null,
      heavy: raw.h != null ? SlotPreset.fromRaw(raw.h!) : null,
      melee: raw.m != null ? SlotPreset.fromRaw(raw.m!) : null,
      exaltedA: raw.a != null ? SlotPreset.fromRaw(raw.a!) : null,
      exaltedB: raw.b != null ? SlotPreset.fromRaw(raw.b!) : null,
    );
  }

  final String? focusSchool;
  final String icon;
  final bool isFavorite;
  final String name;
  final SlotPreset warframe;
  final SlotPreset? primary;
  final SlotPreset? secondary;
  final SlotPreset? heavy;
  final SlotPreset? melee;
  final SlotPreset? exaltedA;
  final SlotPreset? exaltedB;
}
