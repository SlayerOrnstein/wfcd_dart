import 'package:warframe_items/src/models/raws/schema.dart';

class ResourceSchema extends Schema {
  ResourceSchema({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.codexSecret,
    super.parentName,
    super.excludeFromCodex,
    this.showInInventory,
  });

  final bool? showInInventory;
}
