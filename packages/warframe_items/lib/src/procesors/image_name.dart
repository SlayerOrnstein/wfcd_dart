import 'package:collection/collection.dart';
import 'package:legalize/legalize.dart';
import 'package:warframe_items/src/item_context.dart';
import 'package:warframe_items/src/utils/hash.dart';
import 'package:warframe_items/warframe_items.dart';

String _encode(String input) => legalizeFilenameUniversal(input).replaceAll(' ', '-'); // Replace rest with dash

Map<String, dynamic> addImageName(ItemContext context) {
  const imageNameKey = 'imageName';

  final image = context.textures.firstWhereOrNull((m) => m.uniqueName == context.item.uniqueName);
  if (image == null) return context.item;

  final copy = {...context.item};
  final imageStub = image['textureLocation'] as String;
  final ext = imageStub.split('.').last.replaceAll(RegExp(r'\?!.*|!.*$'), '');
  final hashFragment = hash(copy.uniqueName).substring(0, 10);
  final type = copy['type'] as String?;

  // Turn any separators into dashes and remove characters that would break
  // the filesystem.
  copy.putIfAbsent(imageNameKey, () => _encode(copy.name));

  // Enforce arcane and blueprint image name
  if (type == 'Arcane') {
    copy.update(imageNameKey, (_) => 'arcane.$ext');
    return copy;
  }

  if (copy.name == 'Blueprint') {
    copy.update(imageNameKey, (_) => 'blueprint.$ext');
    return copy;
  }

  // Components usually have the same generic images, so we should remove the
  // parent name here. Note that there's a difference between prime/non-prime
  // components, so we'll keep the prime in the name.
  if (copy['parent'] != null) {
    final parent = copy['parent'] as String;
    copy.update(imageNameKey, (imageName) => (imageName as String).replaceAll('${_encode(parent)}-', ''));
    if (copy.name.contains('Prime')) {
      copy.update(imageNameKey, (imageName) => 'prime-$imageName');

      // Older primes can use the full parent name instead of just the base. i.e Lex Prime
      final endsInPrime = (copy[imageNameKey] as String).contains(RegExp(r'prime$'));
      if (endsInPrime) {
        copy.update(imageNameKey, (imageName) => (imageName as String).replaceAll(RegExp(r'prime$'), ''));
      }
    }
  }

  // Relics share the same image regardless of the actual name this will force all images to use the same base image.
  // The resulting format looks like `axi-intact`, `axi-radiant`
  if (type == 'Relic') {
    return copy
      ..update(imageNameKey, (imageName) => (imageName as String).replaceAll(RegExp('-(.*?)-'), '-'))
      ..update(imageNameKey, (imageName) => '$imageName.$ext');
  }

  // Removes a railjacks house and version number (i.e Lavan Talyn MK III -> Talyn)
  if (copy['productCategory'] == 'CrewShipWeapons') {
    return copy
      ..update(
        imageNameKey,
        (imageName) => (imageName as String).replaceAll(RegExp('(lavan|vidar|zetki)-|(-mk-i+)'), ''),
      )
      ..update(imageNameKey, (imageName) => '$imageName.$ext');
  }

  // Some items have the same name - so add a partial hash as an identifier
  // but avoid making component images different
  //
  // Regex avoids Warframe componenets and Necramech weapons and suit
  if (!copy.uniqueName.contains(RegExp(r'Recipes|(Resources\/Mechs)'))) {
    copy.update(imageNameKey, (imageName) => '$imageName-$hashFragment');
  }

  if (copy['abilities'] != null) {
    copy.update(
      'abilities',
      (abilities) =>
          (abilities as List<Map<String, dynamic>>).map((a) => addImageName(context.copyWith(item: a))).toList(),
    );
  }

  return copy..update(imageNameKey, (imageName) => '$imageName.$ext');
}
