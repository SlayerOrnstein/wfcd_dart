import 'package:dart_mappable/dart_mappable.dart';

part 'recipe_schema.mapper.dart';

@MappableClass()
class RecipeSchema with RecipeSchemaMappable {
  RecipeSchema({
    required this.uniqueName,
    required this.resultType,
    required this.buildPrice,
    required this.buildTime,
    required this.skipBuildTimePrice,
    required this.consumeOnUse,
    required this.number,
    required this.codexSecret,
    required this.primeSellingPrice,
    required this.ingredients,
    required this.secretIngredients,
  });

  factory RecipeSchema.fromJson(String json) => RecipeSchemaMapper.fromJson(json);

  factory RecipeSchema.fromMap(Map<String, dynamic> map) => RecipeSchemaMapper.fromMap(map);

  final String uniqueName;
  final String resultType;
  final int buildPrice;
  final int buildTime;
  final int skipBuildTimePrice;
  final bool consumeOnUse;

  @MappableField(key: 'num')
  final int number;

  final bool codexSecret;
  final int primeSellingPrice;
  final List<Ingredient> ingredients;
  final List<Ingredient> secretIngredients;
}

@MappableClass()
class Ingredient with IngredientMappable {
  Ingredient({
    required this.itemType,
    required this.itemCount,
    required this.productCategory,
  });

  factory Ingredient.fromJson(String json) => IngredientMapper.fromJson(json);

  factory Ingredient.fromMap(Map<String, dynamic> map) => IngredientMapper.fromMap(map);

  @MappableField(key: 'ItemType')
  final String itemType;

  @MappableField(key: 'ItemCount')
  final int itemCount;

  @MappableField(key: 'ProductCategory')
  final String? productCategory;
}
