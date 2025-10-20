// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'recipe_schema.dart';

class RecipeSchemaMapper extends ClassMapperBase<RecipeSchema> {
  RecipeSchemaMapper._();

  static RecipeSchemaMapper? _instance;
  static RecipeSchemaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RecipeSchemaMapper._());
      IngredientMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RecipeSchema';

  static String _$uniqueName(RecipeSchema v) => v.uniqueName;
  static const Field<RecipeSchema, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$resultType(RecipeSchema v) => v.resultType;
  static const Field<RecipeSchema, String> _f$resultType = Field(
    'resultType',
    _$resultType,
  );
  static int _$buildPrice(RecipeSchema v) => v.buildPrice;
  static const Field<RecipeSchema, int> _f$buildPrice = Field(
    'buildPrice',
    _$buildPrice,
  );
  static int _$buildTime(RecipeSchema v) => v.buildTime;
  static const Field<RecipeSchema, int> _f$buildTime = Field(
    'buildTime',
    _$buildTime,
  );
  static int _$skipBuildTimePrice(RecipeSchema v) => v.skipBuildTimePrice;
  static const Field<RecipeSchema, int> _f$skipBuildTimePrice = Field(
    'skipBuildTimePrice',
    _$skipBuildTimePrice,
  );
  static bool _$consumeOnUse(RecipeSchema v) => v.consumeOnUse;
  static const Field<RecipeSchema, bool> _f$consumeOnUse = Field(
    'consumeOnUse',
    _$consumeOnUse,
  );
  static int _$number(RecipeSchema v) => v.number;
  static const Field<RecipeSchema, int> _f$number = Field(
    'number',
    _$number,
    key: r'num',
  );
  static bool _$codexSecret(RecipeSchema v) => v.codexSecret;
  static const Field<RecipeSchema, bool> _f$codexSecret = Field(
    'codexSecret',
    _$codexSecret,
  );
  static int _$primeSellingPrice(RecipeSchema v) => v.primeSellingPrice;
  static const Field<RecipeSchema, int> _f$primeSellingPrice = Field(
    'primeSellingPrice',
    _$primeSellingPrice,
  );
  static List<Ingredient> _$ingredients(RecipeSchema v) => v.ingredients;
  static const Field<RecipeSchema, List<Ingredient>> _f$ingredients = Field(
    'ingredients',
    _$ingredients,
  );
  static List<Ingredient> _$secretIngredients(RecipeSchema v) =>
      v.secretIngredients;
  static const Field<RecipeSchema, List<Ingredient>> _f$secretIngredients =
      Field('secretIngredients', _$secretIngredients);

  @override
  final MappableFields<RecipeSchema> fields = const {
    #uniqueName: _f$uniqueName,
    #resultType: _f$resultType,
    #buildPrice: _f$buildPrice,
    #buildTime: _f$buildTime,
    #skipBuildTimePrice: _f$skipBuildTimePrice,
    #consumeOnUse: _f$consumeOnUse,
    #number: _f$number,
    #codexSecret: _f$codexSecret,
    #primeSellingPrice: _f$primeSellingPrice,
    #ingredients: _f$ingredients,
    #secretIngredients: _f$secretIngredients,
  };

  static RecipeSchema _instantiate(DecodingData data) {
    return RecipeSchema(
      uniqueName: data.dec(_f$uniqueName),
      resultType: data.dec(_f$resultType),
      buildPrice: data.dec(_f$buildPrice),
      buildTime: data.dec(_f$buildTime),
      skipBuildTimePrice: data.dec(_f$skipBuildTimePrice),
      consumeOnUse: data.dec(_f$consumeOnUse),
      number: data.dec(_f$number),
      codexSecret: data.dec(_f$codexSecret),
      primeSellingPrice: data.dec(_f$primeSellingPrice),
      ingredients: data.dec(_f$ingredients),
      secretIngredients: data.dec(_f$secretIngredients),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RecipeSchema fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RecipeSchema>(map);
  }

  static RecipeSchema fromJson(String json) {
    return ensureInitialized().decodeJson<RecipeSchema>(json);
  }
}

mixin RecipeSchemaMappable {
  String toJson() {
    return RecipeSchemaMapper.ensureInitialized().encodeJson<RecipeSchema>(
      this as RecipeSchema,
    );
  }

  Map<String, dynamic> toMap() {
    return RecipeSchemaMapper.ensureInitialized().encodeMap<RecipeSchema>(
      this as RecipeSchema,
    );
  }

  RecipeSchemaCopyWith<RecipeSchema, RecipeSchema, RecipeSchema> get copyWith =>
      _RecipeSchemaCopyWithImpl<RecipeSchema, RecipeSchema>(
        this as RecipeSchema,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RecipeSchemaMapper.ensureInitialized().stringifyValue(
      this as RecipeSchema,
    );
  }

  @override
  bool operator ==(Object other) {
    return RecipeSchemaMapper.ensureInitialized().equalsValue(
      this as RecipeSchema,
      other,
    );
  }

  @override
  int get hashCode {
    return RecipeSchemaMapper.ensureInitialized().hashValue(
      this as RecipeSchema,
    );
  }
}

extension RecipeSchemaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RecipeSchema, $Out> {
  RecipeSchemaCopyWith<$R, RecipeSchema, $Out> get $asRecipeSchema =>
      $base.as((v, t, t2) => _RecipeSchemaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RecipeSchemaCopyWith<$R, $In extends RecipeSchema, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Ingredient, IngredientCopyWith<$R, Ingredient, Ingredient>>
  get ingredients;
  ListCopyWith<$R, Ingredient, IngredientCopyWith<$R, Ingredient, Ingredient>>
  get secretIngredients;
  $R call({
    String? uniqueName,
    String? resultType,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    bool? consumeOnUse,
    int? number,
    bool? codexSecret,
    int? primeSellingPrice,
    List<Ingredient>? ingredients,
    List<Ingredient>? secretIngredients,
  });
  RecipeSchemaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RecipeSchemaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RecipeSchema, $Out>
    implements RecipeSchemaCopyWith<$R, RecipeSchema, $Out> {
  _RecipeSchemaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RecipeSchema> $mapper =
      RecipeSchemaMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Ingredient, IngredientCopyWith<$R, Ingredient, Ingredient>>
  get ingredients => ListCopyWith(
    $value.ingredients,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(ingredients: v),
  );
  @override
  ListCopyWith<$R, Ingredient, IngredientCopyWith<$R, Ingredient, Ingredient>>
  get secretIngredients => ListCopyWith(
    $value.secretIngredients,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(secretIngredients: v),
  );
  @override
  $R call({
    String? uniqueName,
    String? resultType,
    int? buildPrice,
    int? buildTime,
    int? skipBuildTimePrice,
    bool? consumeOnUse,
    int? number,
    bool? codexSecret,
    int? primeSellingPrice,
    List<Ingredient>? ingredients,
    List<Ingredient>? secretIngredients,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (resultType != null) #resultType: resultType,
      if (buildPrice != null) #buildPrice: buildPrice,
      if (buildTime != null) #buildTime: buildTime,
      if (skipBuildTimePrice != null) #skipBuildTimePrice: skipBuildTimePrice,
      if (consumeOnUse != null) #consumeOnUse: consumeOnUse,
      if (number != null) #number: number,
      if (codexSecret != null) #codexSecret: codexSecret,
      if (primeSellingPrice != null) #primeSellingPrice: primeSellingPrice,
      if (ingredients != null) #ingredients: ingredients,
      if (secretIngredients != null) #secretIngredients: secretIngredients,
    }),
  );
  @override
  RecipeSchema $make(CopyWithData data) => RecipeSchema(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    resultType: data.get(#resultType, or: $value.resultType),
    buildPrice: data.get(#buildPrice, or: $value.buildPrice),
    buildTime: data.get(#buildTime, or: $value.buildTime),
    skipBuildTimePrice: data.get(
      #skipBuildTimePrice,
      or: $value.skipBuildTimePrice,
    ),
    consumeOnUse: data.get(#consumeOnUse, or: $value.consumeOnUse),
    number: data.get(#number, or: $value.number),
    codexSecret: data.get(#codexSecret, or: $value.codexSecret),
    primeSellingPrice: data.get(
      #primeSellingPrice,
      or: $value.primeSellingPrice,
    ),
    ingredients: data.get(#ingredients, or: $value.ingredients),
    secretIngredients: data.get(
      #secretIngredients,
      or: $value.secretIngredients,
    ),
  );

  @override
  RecipeSchemaCopyWith<$R2, RecipeSchema, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RecipeSchemaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class IngredientMapper extends ClassMapperBase<Ingredient> {
  IngredientMapper._();

  static IngredientMapper? _instance;
  static IngredientMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IngredientMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Ingredient';

  static String _$itemType(Ingredient v) => v.itemType;
  static const Field<Ingredient, String> _f$itemType = Field(
    'itemType',
    _$itemType,
    key: r'ItemType',
  );
  static int _$itemCount(Ingredient v) => v.itemCount;
  static const Field<Ingredient, int> _f$itemCount = Field(
    'itemCount',
    _$itemCount,
    key: r'ItemCount',
  );
  static String? _$productCategory(Ingredient v) => v.productCategory;
  static const Field<Ingredient, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
    key: r'ProductCategory',
  );

  @override
  final MappableFields<Ingredient> fields = const {
    #itemType: _f$itemType,
    #itemCount: _f$itemCount,
    #productCategory: _f$productCategory,
  };

  static Ingredient _instantiate(DecodingData data) {
    return Ingredient(
      itemType: data.dec(_f$itemType),
      itemCount: data.dec(_f$itemCount),
      productCategory: data.dec(_f$productCategory),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Ingredient fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Ingredient>(map);
  }

  static Ingredient fromJson(String json) {
    return ensureInitialized().decodeJson<Ingredient>(json);
  }
}

mixin IngredientMappable {
  String toJson() {
    return IngredientMapper.ensureInitialized().encodeJson<Ingredient>(
      this as Ingredient,
    );
  }

  Map<String, dynamic> toMap() {
    return IngredientMapper.ensureInitialized().encodeMap<Ingredient>(
      this as Ingredient,
    );
  }

  IngredientCopyWith<Ingredient, Ingredient, Ingredient> get copyWith =>
      _IngredientCopyWithImpl<Ingredient, Ingredient>(
        this as Ingredient,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return IngredientMapper.ensureInitialized().stringifyValue(
      this as Ingredient,
    );
  }

  @override
  bool operator ==(Object other) {
    return IngredientMapper.ensureInitialized().equalsValue(
      this as Ingredient,
      other,
    );
  }

  @override
  int get hashCode {
    return IngredientMapper.ensureInitialized().hashValue(this as Ingredient);
  }
}

extension IngredientValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Ingredient, $Out> {
  IngredientCopyWith<$R, Ingredient, $Out> get $asIngredient =>
      $base.as((v, t, t2) => _IngredientCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class IngredientCopyWith<$R, $In extends Ingredient, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? itemType, int? itemCount, String? productCategory});
  IngredientCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IngredientCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Ingredient, $Out>
    implements IngredientCopyWith<$R, Ingredient, $Out> {
  _IngredientCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Ingredient> $mapper =
      IngredientMapper.ensureInitialized();
  @override
  $R call({
    String? itemType,
    int? itemCount,
    Object? productCategory = $none,
  }) => $apply(
    FieldCopyWithData({
      if (itemType != null) #itemType: itemType,
      if (itemCount != null) #itemCount: itemCount,
      if (productCategory != $none) #productCategory: productCategory,
    }),
  );
  @override
  Ingredient $make(CopyWithData data) => Ingredient(
    itemType: data.get(#itemType, or: $value.itemType),
    itemCount: data.get(#itemCount, or: $value.itemCount),
    productCategory: data.get(#productCategory, or: $value.productCategory),
  );

  @override
  IngredientCopyWith<$R2, Ingredient, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _IngredientCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

