import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';
import 'package:warframe_items/src/configs/category_types.dart';
import 'package:warframe_items/src/configs/configs.dart';
import 'package:warframe_items/src/models/models.dart';
import 'package:warframe_items/src/utils/category_utils.dart';

extension MapTransformers on Map<String, dynamic> {
  void sanitize() {
    if (this['rewardName'] != null) this['uniqueName'] = this['rewardName'];

    if (this['name'] == null) {
      this['name'] = (this['uniqueName'] as String).split('/').last;
    }

    const props = ['type', 'trigger', 'noise', 'rarity', 'faction'];
    for (final prop in props) {
      if (this[prop] != null) {
        this[prop] = toBeginningOfSentenceCase(this[prop] as String);
      }
    }

    final name = this['name'] as String;
    if (name.toLowerCase().contains(RegExp('requiem|relic'))) {
      this['name'] = toBeginningOfSentenceCase(name);
    }

    if (name.contains(RegExp(r'<ARCHWING>|Tenno\/Archwing|HeavyWeapons'))) {
      this['name'] = name.replaceAll('<ARCHWING>', '').trim();
      this['isArchwing'] = true;
    }

    if (name.contains('Mk1')) this['name'] = name.replaceAll('Mk1', 'MK1');

    if (this['type'] == 'Relic') {
      // TODO(orn): do relic grade in name
    }

    final abilities = this['abilities'] as List<dynamic>?;
    if (abilities != null) {
      this['abilities'] = List<Map<String, dynamic>>.from(abilities).map(
        (a) => {
          'uniqueName': a['abilityUniqueName'],
          'name': toBeginningOfSentenceCase(a['abilityName'] as String),
          'description': a['description'],
        },
      );
    }

    final description = this['description'];
    if (description != null && description is List) {
      this['description'] = description.join();
    }

    remove('codexSecret');
    if (this['type'] != 'enemy') remove('longDescription');
    remove('parentName');
    remove('relicRewards'); // Will be added using the official drop data
    remove('subtype');
  }

  void addType() {
    const typeKey = 'type';
    final type = ItemType.findType(this['uniqueName'] as String);

    if (type != null) {
      this[typeKey] = type.value;
      if (type.append) this[typeKey] = '${this[typeKey]}${this['name']}';
      return;
    }

    if ((this['description'] as String?)?.contains('This resource') ?? false) {
      this[typeKey] = 'Resource'; // TODO(orn): use ItemType here
    } else if (this['faction'] != null) {
      this[typeKey] = remove('faction');
    } else if (this['productCategory'] != null) {
      this[typeKey] = this['productCategory'];
    } else {
      this[typeKey] = ItemType.misc.value;
    }
  }

  void addDamage() {
    final damagePerShot = this['damagePerShot'] as List<int>?;
    if (damagePerShot == null) return;
    if (!damagePerShot.any((d) => d > 0)) return;

    this['damage'] = {
      'total': this['totalDamage'],
      for (final type in DamageType.values) type.key: damagePerShot[type.index],
    };
  }

  void addImageName(List<Texture> manifest) {
    const imageNameKey = 'imageName';
    final uniqueName = this['uniqueName'] as String;

    final name = this['name'] as String;
    if (name == 'Arcane') {
      this[imageNameKey] = 'arcane.png';
      return;
    }

    if (name == 'Blueprint') {
      this[imageNameKey] = 'blueprint.png';
      return;
    }

    final image = manifest.firstWhereOrNull((t) => t.uniqueName == uniqueName);
    if (image == null) return;

    final hash = sha256.convert(utf8.encode(uniqueName)).toString();
    String encode(String name) {
      return name
          .replaceAll('/', '')
          .replaceAll(RegExp('[ /*]'), '-')
          .replaceAll(RegExp(r'[:<>[\]?!"]'), '')
          .toLowerCase();
    }

    var imageName = encode(name);

    final parent = this['parent'] as String?;
    if (parent != null) {
      imageName = imageName.replaceAll('${encode(parent)}-', '');

      if (RegExp(r'prime$').hasMatch(imageName)) {
        imageName = imageName.replaceAll(RegExp(r'-prime$'), '');
      }

      this[imageNameKey] = '$imageName.${image.ext}';
      return;
    }

    // Railjack turrets all share the same generic image so remove the
    // model name.
    final productCategory = this['productCategory'] as String?;
    if (productCategory == 'CrewShipWeapon') {
      final turretRegEx = RegExp('(lavan|vidar|zetki)-|(-mk-i+)');

      imageName = imageName.replaceAll(turretRegEx, '');
      imageName += '.${image.ext}';

      this[imageNameKey] = imageName;
      return;
    }

    // Some items have the same name - so add a partial hash as an identifier
    // but avoid making component images different
    //
    // Regex avoids Warframe componenets and Necramech weapons and suit
    final pattern = RegExp(r'Recipes|(Resources\/Mechs)');
    if (this['type'] != 'Relic' && !pattern.hasMatch(uniqueName)) {
      imageName += '-${hash.substring(0, 10)}';
    }

    this[imageNameKey] = '$imageName.${image.ext}';
    return;
  }

  // TODO(orn): implement category type enum
  void addCategory(ExportCategory category) {
    const categoryKey = 'category';
    if (this['parent'] != null) return;

    final name = this['name'] as String;
    final type = this['type'] as String;

    switch (category) {
      case ExportCategory.customs:
        if (type == ItemType.sigil.value) {
          this[categoryKey] = CategoryType.sigils.value;
        } else {
          this[categoryKey] = CategoryType.skins.value;
        }

      case ExportCategory.drones:
        this[categoryKey] = CategoryType.misc.value;

      case ExportCategory.flavour:
        if (name.contains('Sigil')) {
          this[categoryKey] = CategoryType.sigils.value;
        } else if (name.contains('Glyph')) {
          this[categoryKey] = CategoryType.glyphs.value;
        } else {
          this[categoryKey] = CategoryType.skins.value;
        }

      case ExportCategory.fusionBundles:
      case ExportCategory.gear:
        this[categoryKey] = CategoryType.gear.value;

      case ExportCategory.keys:
        if (name.contains('Derelict')) {
          this[categoryKey] = CategoryType.relics.value;
        } else {
          this[categoryKey] = CategoryType.quests.value;
        }

      case ExportCategory.recipes:
      case ExportCategory.regions:
      case ExportCategory.relicArcane:
        if (type != 'Relic') {
          this[categoryKey] = CategoryType.arcanes.value;
        } else {
          this[categoryKey] = CategoryType.relics.value;
        }

      case ExportCategory.resources:
        handResourceCategory(this, categoryKey);

      case ExportCategory.sentinels:
        if (type == 'Sentinel') {
          this[categoryKey] = CategoryType.sentinels.value;
        } else {
          this[categoryKey] = CategoryType.pets.value;
        }

      case ExportCategory.sortieRewards:
      case ExportCategory.upgrades:
        this[categoryKey] = 'Mods';
        if ((this['uniqueName'] as String).contains('AugmentCard')) {
          this['isAugment'] = true;
        }

      case ExportCategory.warframes:
        if (remove('isArchwing') as bool) {
          this[categoryKey] = CategoryType.archwing.value;
        } else {
          this[categoryKey] = CategoryType.warframes.value;
        }

      case ExportCategory.weapons:
        handleWeaponCategory(this, categoryKey);

      case _:
        this[categoryKey] = CategoryType.misc;
    }

    if (this[categoryKey] == null) {
      this[categoryKey] = CategoryType.misc;

      if (this['systemName'] != null) {
        this[categoryKey] = CategoryType.node.value;
      }

      if (this['type'] == 'Conservation Tag') {
        this[categoryKey] = CategoryType.resources.value;
      }
    }
  }

  void addIsPrime() {
    final uname = (this['uniqueName'] as String).split('/').last;
    final category = CategoryType.findCategory(this['category'] as String);

    switch (category) {
      case _:
        break;
    }
  }
}
