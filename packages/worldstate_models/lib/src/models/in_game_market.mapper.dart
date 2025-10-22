// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'in_game_market.dart';

class RawInGameMarketMapper extends ClassMapperBase<RawInGameMarket> {
  RawInGameMarketMapper._();

  static RawInGameMarketMapper? _instance;
  static RawInGameMarketMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawInGameMarketMapper._());
      RawLandingPageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawInGameMarket';

  static RawLandingPage _$landingPage(RawInGameMarket v) => v.landingPage;
  static const Field<RawInGameMarket, RawLandingPage> _f$landingPage = Field(
    'landingPage',
    _$landingPage,
    key: r'LandingPage',
  );

  @override
  final MappableFields<RawInGameMarket> fields = const {
    #landingPage: _f$landingPage,
  };
  @override
  final bool ignoreNull = true;

  static RawInGameMarket _instantiate(DecodingData data) {
    return RawInGameMarket(landingPage: data.dec(_f$landingPage));
  }

  @override
  final Function instantiate = _instantiate;

  static RawInGameMarket fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawInGameMarket>(map);
  }

  static RawInGameMarket fromJson(String json) {
    return ensureInitialized().decodeJson<RawInGameMarket>(json);
  }
}

mixin RawInGameMarketMappable {
  String toJson() {
    return RawInGameMarketMapper.ensureInitialized()
        .encodeJson<RawInGameMarket>(this as RawInGameMarket);
  }

  Map<String, dynamic> toMap() {
    return RawInGameMarketMapper.ensureInitialized().encodeMap<RawInGameMarket>(
      this as RawInGameMarket,
    );
  }

  RawInGameMarketCopyWith<RawInGameMarket, RawInGameMarket, RawInGameMarket>
  get copyWith =>
      _RawInGameMarketCopyWithImpl<RawInGameMarket, RawInGameMarket>(
        this as RawInGameMarket,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawInGameMarketMapper.ensureInitialized().stringifyValue(
      this as RawInGameMarket,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawInGameMarketMapper.ensureInitialized().equalsValue(
      this as RawInGameMarket,
      other,
    );
  }

  @override
  int get hashCode {
    return RawInGameMarketMapper.ensureInitialized().hashValue(
      this as RawInGameMarket,
    );
  }
}

extension RawInGameMarketValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawInGameMarket, $Out> {
  RawInGameMarketCopyWith<$R, RawInGameMarket, $Out> get $asRawInGameMarket =>
      $base.as((v, t, t2) => _RawInGameMarketCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawInGameMarketCopyWith<$R, $In extends RawInGameMarket, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RawLandingPageCopyWith<$R, RawLandingPage, RawLandingPage> get landingPage;
  $R call({RawLandingPage? landingPage});
  RawInGameMarketCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawInGameMarketCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawInGameMarket, $Out>
    implements RawInGameMarketCopyWith<$R, RawInGameMarket, $Out> {
  _RawInGameMarketCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawInGameMarket> $mapper =
      RawInGameMarketMapper.ensureInitialized();
  @override
  RawLandingPageCopyWith<$R, RawLandingPage, RawLandingPage> get landingPage =>
      $value.landingPage.copyWith.$chain((v) => call(landingPage: v));
  @override
  $R call({RawLandingPage? landingPage}) => $apply(
    FieldCopyWithData({if (landingPage != null) #landingPage: landingPage}),
  );
  @override
  RawInGameMarket $make(CopyWithData data) => RawInGameMarket(
    landingPage: data.get(#landingPage, or: $value.landingPage),
  );

  @override
  RawInGameMarketCopyWith<$R2, RawInGameMarket, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawInGameMarketCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawLandingPageMapper extends ClassMapperBase<RawLandingPage> {
  RawLandingPageMapper._();

  static RawLandingPageMapper? _instance;
  static RawLandingPageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawLandingPageMapper._());
      RawCategoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RawLandingPage';

  static List<RawCategory> _$categories(RawLandingPage v) => v.categories;
  static const Field<RawLandingPage, List<RawCategory>> _f$categories = Field(
    'categories',
    _$categories,
    key: r'Categories',
  );

  @override
  final MappableFields<RawLandingPage> fields = const {
    #categories: _f$categories,
  };
  @override
  final bool ignoreNull = true;

  static RawLandingPage _instantiate(DecodingData data) {
    return RawLandingPage(categories: data.dec(_f$categories));
  }

  @override
  final Function instantiate = _instantiate;

  static RawLandingPage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawLandingPage>(map);
  }

  static RawLandingPage fromJson(String json) {
    return ensureInitialized().decodeJson<RawLandingPage>(json);
  }
}

mixin RawLandingPageMappable {
  String toJson() {
    return RawLandingPageMapper.ensureInitialized().encodeJson<RawLandingPage>(
      this as RawLandingPage,
    );
  }

  Map<String, dynamic> toMap() {
    return RawLandingPageMapper.ensureInitialized().encodeMap<RawLandingPage>(
      this as RawLandingPage,
    );
  }

  RawLandingPageCopyWith<RawLandingPage, RawLandingPage, RawLandingPage>
  get copyWith => _RawLandingPageCopyWithImpl<RawLandingPage, RawLandingPage>(
    this as RawLandingPage,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RawLandingPageMapper.ensureInitialized().stringifyValue(
      this as RawLandingPage,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawLandingPageMapper.ensureInitialized().equalsValue(
      this as RawLandingPage,
      other,
    );
  }

  @override
  int get hashCode {
    return RawLandingPageMapper.ensureInitialized().hashValue(
      this as RawLandingPage,
    );
  }
}

extension RawLandingPageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawLandingPage, $Out> {
  RawLandingPageCopyWith<$R, RawLandingPage, $Out> get $asRawLandingPage =>
      $base.as((v, t, t2) => _RawLandingPageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawLandingPageCopyWith<$R, $In extends RawLandingPage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    RawCategory,
    RawCategoryCopyWith<$R, RawCategory, RawCategory>
  >
  get categories;
  $R call({List<RawCategory>? categories});
  RawLandingPageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RawLandingPageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawLandingPage, $Out>
    implements RawLandingPageCopyWith<$R, RawLandingPage, $Out> {
  _RawLandingPageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawLandingPage> $mapper =
      RawLandingPageMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    RawCategory,
    RawCategoryCopyWith<$R, RawCategory, RawCategory>
  >
  get categories => ListCopyWith(
    $value.categories,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(categories: v),
  );
  @override
  $R call({List<RawCategory>? categories}) => $apply(
    FieldCopyWithData({if (categories != null) #categories: categories}),
  );
  @override
  RawLandingPage $make(CopyWithData data) =>
      RawLandingPage(categories: data.get(#categories, or: $value.categories));

  @override
  RawLandingPageCopyWith<$R2, RawLandingPage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawLandingPageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RawCategoryMapper extends ClassMapperBase<RawCategory> {
  RawCategoryMapper._();

  static RawCategoryMapper? _instance;
  static RawCategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RawCategoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RawCategory';

  static String _$categoryName(RawCategory v) => v.categoryName;
  static const Field<RawCategory, String> _f$categoryName = Field(
    'categoryName',
    _$categoryName,
    key: r'CategoryName',
  );
  static String _$name(RawCategory v) => v.name;
  static const Field<RawCategory, String> _f$name = Field(
    'name',
    _$name,
    key: r'Name',
  );
  static String _$icon(RawCategory v) => v.icon;
  static const Field<RawCategory, String> _f$icon = Field(
    'icon',
    _$icon,
    key: r'Icon',
  );
  static bool? _$addToMenu(RawCategory v) => v.addToMenu;
  static const Field<RawCategory, bool> _f$addToMenu = Field(
    'addToMenu',
    _$addToMenu,
    key: r'AddToMenu',
  );
  static List<String> _$items(RawCategory v) => v.items;
  static const Field<RawCategory, List<String>> _f$items = Field(
    'items',
    _$items,
    key: r'Items',
  );

  @override
  final MappableFields<RawCategory> fields = const {
    #categoryName: _f$categoryName,
    #name: _f$name,
    #icon: _f$icon,
    #addToMenu: _f$addToMenu,
    #items: _f$items,
  };
  @override
  final bool ignoreNull = true;

  static RawCategory _instantiate(DecodingData data) {
    return RawCategory(
      categoryName: data.dec(_f$categoryName),
      name: data.dec(_f$name),
      icon: data.dec(_f$icon),
      addToMenu: data.dec(_f$addToMenu),
      items: data.dec(_f$items),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RawCategory fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RawCategory>(map);
  }

  static RawCategory fromJson(String json) {
    return ensureInitialized().decodeJson<RawCategory>(json);
  }
}

mixin RawCategoryMappable {
  String toJson() {
    return RawCategoryMapper.ensureInitialized().encodeJson<RawCategory>(
      this as RawCategory,
    );
  }

  Map<String, dynamic> toMap() {
    return RawCategoryMapper.ensureInitialized().encodeMap<RawCategory>(
      this as RawCategory,
    );
  }

  RawCategoryCopyWith<RawCategory, RawCategory, RawCategory> get copyWith =>
      _RawCategoryCopyWithImpl<RawCategory, RawCategory>(
        this as RawCategory,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RawCategoryMapper.ensureInitialized().stringifyValue(
      this as RawCategory,
    );
  }

  @override
  bool operator ==(Object other) {
    return RawCategoryMapper.ensureInitialized().equalsValue(
      this as RawCategory,
      other,
    );
  }

  @override
  int get hashCode {
    return RawCategoryMapper.ensureInitialized().hashValue(this as RawCategory);
  }
}

extension RawCategoryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RawCategory, $Out> {
  RawCategoryCopyWith<$R, RawCategory, $Out> get $asRawCategory =>
      $base.as((v, t, t2) => _RawCategoryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RawCategoryCopyWith<$R, $In extends RawCategory, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get items;
  $R call({
    String? categoryName,
    String? name,
    String? icon,
    bool? addToMenu,
    List<String>? items,
  });
  RawCategoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RawCategoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RawCategory, $Out>
    implements RawCategoryCopyWith<$R, RawCategory, $Out> {
  _RawCategoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RawCategory> $mapper =
      RawCategoryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get items =>
      ListCopyWith(
        $value.items,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(items: v),
      );
  @override
  $R call({
    String? categoryName,
    String? name,
    String? icon,
    Object? addToMenu = $none,
    List<String>? items,
  }) => $apply(
    FieldCopyWithData({
      if (categoryName != null) #categoryName: categoryName,
      if (name != null) #name: name,
      if (icon != null) #icon: icon,
      if (addToMenu != $none) #addToMenu: addToMenu,
      if (items != null) #items: items,
    }),
  );
  @override
  RawCategory $make(CopyWithData data) => RawCategory(
    categoryName: data.get(#categoryName, or: $value.categoryName),
    name: data.get(#name, or: $value.name),
    icon: data.get(#icon, or: $value.icon),
    addToMenu: data.get(#addToMenu, or: $value.addToMenu),
    items: data.get(#items, or: $value.items),
  );

  @override
  RawCategoryCopyWith<$R2, RawCategory, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RawCategoryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class InGameMarketMapper extends ClassMapperBase<InGameMarket> {
  InGameMarketMapper._();

  static InGameMarketMapper? _instance;
  static InGameMarketMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InGameMarketMapper._());
      _t$_R0Mapper.ensureInitialized();
      CategoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InGameMarket';

  static _t$_R0<List<Category>> _$landingPage(InGameMarket v) => v.landingPage;
  static const Field<InGameMarket, _t$_R0<List<Category>>> _f$landingPage =
      Field('landingPage', _$landingPage);

  @override
  final MappableFields<InGameMarket> fields = const {
    #landingPage: _f$landingPage,
  };
  @override
  final bool ignoreNull = true;

  static InGameMarket _instantiate(DecodingData data) {
    return InGameMarket(landingPage: data.dec(_f$landingPage));
  }

  @override
  final Function instantiate = _instantiate;

  static InGameMarket fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InGameMarket>(map);
  }

  static InGameMarket fromJson(String json) {
    return ensureInitialized().decodeJson<InGameMarket>(json);
  }
}

mixin InGameMarketMappable {
  String toJson() {
    return InGameMarketMapper.ensureInitialized().encodeJson<InGameMarket>(
      this as InGameMarket,
    );
  }

  Map<String, dynamic> toMap() {
    return InGameMarketMapper.ensureInitialized().encodeMap<InGameMarket>(
      this as InGameMarket,
    );
  }

  InGameMarketCopyWith<InGameMarket, InGameMarket, InGameMarket> get copyWith =>
      _InGameMarketCopyWithImpl<InGameMarket, InGameMarket>(
        this as InGameMarket,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return InGameMarketMapper.ensureInitialized().stringifyValue(
      this as InGameMarket,
    );
  }

  @override
  bool operator ==(Object other) {
    return InGameMarketMapper.ensureInitialized().equalsValue(
      this as InGameMarket,
      other,
    );
  }

  @override
  int get hashCode {
    return InGameMarketMapper.ensureInitialized().hashValue(
      this as InGameMarket,
    );
  }
}

extension InGameMarketValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InGameMarket, $Out> {
  InGameMarketCopyWith<$R, InGameMarket, $Out> get $asInGameMarket =>
      $base.as((v, t, t2) => _InGameMarketCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InGameMarketCopyWith<$R, $In extends InGameMarket, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({_t$_R0<List<Category>>? landingPage});
  InGameMarketCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InGameMarketCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InGameMarket, $Out>
    implements InGameMarketCopyWith<$R, InGameMarket, $Out> {
  _InGameMarketCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InGameMarket> $mapper =
      InGameMarketMapper.ensureInitialized();
  @override
  $R call({_t$_R0<List<Category>>? landingPage}) => $apply(
    FieldCopyWithData({if (landingPage != null) #landingPage: landingPage}),
  );
  @override
  InGameMarket $make(CopyWithData data) =>
      InGameMarket(landingPage: data.get(#landingPage, or: $value.landingPage));

  @override
  InGameMarketCopyWith<$R2, InGameMarket, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _InGameMarketCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CategoryMapper extends ClassMapperBase<Category> {
  CategoryMapper._();

  static CategoryMapper? _instance;
  static CategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CategoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Category';

  static String _$category(Category v) => v.category;
  static const Field<Category, String> _f$category = Field(
    'category',
    _$category,
  );
  static String _$name(Category v) => v.name;
  static const Field<Category, String> _f$name = Field('name', _$name);
  static String _$icon(Category v) => v.icon;
  static const Field<Category, String> _f$icon = Field('icon', _$icon);
  static bool _$addToMenu(Category v) => v.addToMenu;
  static const Field<Category, bool> _f$addToMenu = Field(
    'addToMenu',
    _$addToMenu,
  );
  static List<String> _$items(Category v) => v.items;
  static const Field<Category, List<String>> _f$items = Field('items', _$items);

  @override
  final MappableFields<Category> fields = const {
    #category: _f$category,
    #name: _f$name,
    #icon: _f$icon,
    #addToMenu: _f$addToMenu,
    #items: _f$items,
  };
  @override
  final bool ignoreNull = true;

  static Category _instantiate(DecodingData data) {
    return Category(
      category: data.dec(_f$category),
      name: data.dec(_f$name),
      icon: data.dec(_f$icon),
      addToMenu: data.dec(_f$addToMenu),
      items: data.dec(_f$items),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Category fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Category>(map);
  }

  static Category fromJson(String json) {
    return ensureInitialized().decodeJson<Category>(json);
  }
}

mixin CategoryMappable {
  String toJson() {
    return CategoryMapper.ensureInitialized().encodeJson<Category>(
      this as Category,
    );
  }

  Map<String, dynamic> toMap() {
    return CategoryMapper.ensureInitialized().encodeMap<Category>(
      this as Category,
    );
  }

  CategoryCopyWith<Category, Category, Category> get copyWith =>
      _CategoryCopyWithImpl<Category, Category>(
        this as Category,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CategoryMapper.ensureInitialized().stringifyValue(this as Category);
  }

  @override
  bool operator ==(Object other) {
    return CategoryMapper.ensureInitialized().equalsValue(
      this as Category,
      other,
    );
  }

  @override
  int get hashCode {
    return CategoryMapper.ensureInitialized().hashValue(this as Category);
  }
}

extension CategoryValueCopy<$R, $Out> on ObjectCopyWith<$R, Category, $Out> {
  CategoryCopyWith<$R, Category, $Out> get $asCategory =>
      $base.as((v, t, t2) => _CategoryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CategoryCopyWith<$R, $In extends Category, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get items;
  $R call({
    String? category,
    String? name,
    String? icon,
    bool? addToMenu,
    List<String>? items,
  });
  CategoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CategoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Category, $Out>
    implements CategoryCopyWith<$R, Category, $Out> {
  _CategoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Category> $mapper =
      CategoryMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get items =>
      ListCopyWith(
        $value.items,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(items: v),
      );
  @override
  $R call({
    String? category,
    String? name,
    String? icon,
    bool? addToMenu,
    List<String>? items,
  }) => $apply(
    FieldCopyWithData({
      if (category != null) #category: category,
      if (name != null) #name: name,
      if (icon != null) #icon: icon,
      if (addToMenu != null) #addToMenu: addToMenu,
      if (items != null) #items: items,
    }),
  );
  @override
  Category $make(CopyWithData data) => Category(
    category: data.get(#category, or: $value.category),
    name: data.get(#name, or: $value.name),
    icon: data.get(#icon, or: $value.icon),
    addToMenu: data.get(#addToMenu, or: $value.addToMenu),
    items: data.get(#items, or: $value.items),
  );

  @override
  CategoryCopyWith<$R2, Category, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CategoryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

typedef _t$_R0<A> = ({A categories});

class _t$_R0Mapper extends RecordMapperBase<_t$_R0> {
  static _t$_R0Mapper? _instance;
  _t$_R0Mapper._();

  static _t$_R0Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = _t$_R0Mapper._());
      MapperBase.addType(<A>(f) => f<({A categories})>());
    }
    return _instance!;
  }

  static dynamic _$categories(_t$_R0 v) => v.categories;
  static dynamic _arg$categories<A>(f) => f<A>();
  static const Field<_t$_R0, dynamic> _f$categories = Field(
    'categories',
    _$categories,
    arg: _arg$categories,
  );

  @override
  final MappableFields<_t$_R0> fields = const {#categories: _f$categories};

  @override
  Function get typeFactory =>
      <A>(f) => f<_t$_R0<A>>();

  static _t$_R0<A> _instantiate<A>(DecodingData<_t$_R0> data) {
    return (categories: data.dec(_f$categories));
  }

  @override
  final Function instantiate = _instantiate;

  static _t$_R0<A> fromMap<A>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<_t$_R0<A>>(map);
  }

  static _t$_R0<A> fromJson<A>(String json) {
    return ensureInitialized().decodeJson<_t$_R0<A>>(json);
  }
}

