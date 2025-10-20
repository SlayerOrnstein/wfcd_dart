import 'package:warframe_items/src/configs/category_types.dart';
import 'package:warframe_items/src/configs/configs.dart';
import 'package:warframe_items/src/models/models.dart';

abstract class ItemBuilder<T extends Schema, I extends ItemObject> {
  ItemBuilder({required this.raw});

  final T raw;

  ItemType get type;

  CategoryType get category;

  I build(String imagePath);
}
