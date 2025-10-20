abstract class Schema {
  Schema({
    required this.uniqueName,
    required this.name,
    required this.description,
    required this.codexSecret,
    this.excludeFromCodex,
    this.parentName,
    this.productCategory,
  });

  final String uniqueName;
  final String name;
  final String? description;
  final bool codexSecret;
  final bool? excludeFromCodex;
  final String? parentName;
  final String? productCategory;
}
