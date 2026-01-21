import 'package:warframe_items/src/enums.dart';
import 'package:warframe_items/src/item_context.dart';

Map<String, dynamic> addTypes(ItemContext context) {
  final copy = {...context.item};
  if (copy['parent'] != null || !copy.containsKey('uniqueName')) return copy;

  final type = ItemTypes.findType(copy['uniqueName'] as String);
  copy['type'] = type.getDisplayName(copy['type'] as String?);

  return copy;
}
