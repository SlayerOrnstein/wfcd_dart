// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cosmetic.dart';

class CosmeticMapper extends ClassMapperBase<Cosmetic> {
  CosmeticMapper._();

  static CosmeticMapper? _instance;
  static CosmeticMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CosmeticMapper._());
      ItemObjectMapper.ensureInitialized();
      SkinMapper.ensureInitialized();
      SigilMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Cosmetic';

  static String _$uniqueName(Cosmetic v) => v.uniqueName;
  static const Field<Cosmetic, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(Cosmetic v) => v.name;
  static const Field<Cosmetic, String> _f$name = Field('name', _$name);
  static String _$description(Cosmetic v) => v.description;
  static const Field<Cosmetic, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$imagePath(Cosmetic v) => v.imagePath;
  static const Field<Cosmetic, String> _f$imagePath = Field(
    'imagePath',
    _$imagePath,
  );
  static String _$type(Cosmetic v) => v.type;
  static const Field<Cosmetic, String> _f$type = Field('type', _$type);
  static String _$category(Cosmetic v) => v.category;
  static const Field<Cosmetic, String> _f$category = Field(
    'category',
    _$category,
  );
  static String? _$productCategory(Cosmetic v) => v.productCategory;
  static const Field<Cosmetic, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
  );
  static bool _$isHiddenInCodex(Cosmetic v) => v.isHiddenInCodex;
  static const Field<Cosmetic, bool> _f$isHiddenInCodex = Field(
    'isHiddenInCodex',
    _$isHiddenInCodex,
  );

  @override
  final MappableFields<Cosmetic> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #imagePath: _f$imagePath,
    #type: _f$type,
    #category: _f$category,
    #productCategory: _f$productCategory,
    #isHiddenInCodex: _f$isHiddenInCodex,
  };

  static Cosmetic _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('Cosmetic');
  }

  @override
  final Function instantiate = _instantiate;

  static Cosmetic fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Cosmetic>(map);
  }

  static Cosmetic fromJson(String json) {
    return ensureInitialized().decodeJson<Cosmetic>(json);
  }
}

mixin CosmeticMappable {
  String toJson();
  Map<String, dynamic> toMap();
  CosmeticCopyWith<Cosmetic, Cosmetic, Cosmetic> get copyWith;
}

abstract class CosmeticCopyWith<$R, $In extends Cosmetic, $Out>
    implements ItemObjectCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    String? imagePath,
    String? type,
    String? category,
    String? productCategory,
    bool? isHiddenInCodex,
  });
  CosmeticCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class SkinMapper extends SubClassMapperBase<Skin> {
  SkinMapper._();

  static SkinMapper? _instance;
  static SkinMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SkinMapper._());
      CosmeticMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Skin';

  static String _$uniqueName(Skin v) => v.uniqueName;
  static const Field<Skin, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(Skin v) => v.name;
  static const Field<Skin, String> _f$name = Field('name', _$name);
  static String _$description(Skin v) => v.description;
  static const Field<Skin, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$imagePath(Skin v) => v.imagePath;
  static const Field<Skin, String> _f$imagePath = Field(
    'imagePath',
    _$imagePath,
  );
  static String _$type(Skin v) => v.type;
  static const Field<Skin, String> _f$type = Field('type', _$type);
  static String _$category(Skin v) => v.category;
  static const Field<Skin, String> _f$category = Field('category', _$category);
  static String? _$productCategory(Skin v) => v.productCategory;
  static const Field<Skin, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
  );
  static bool _$isHiddenInCodex(Skin v) => v.isHiddenInCodex;
  static const Field<Skin, bool> _f$isHiddenInCodex = Field(
    'isHiddenInCodex',
    _$isHiddenInCodex,
  );

  @override
  final MappableFields<Skin> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #imagePath: _f$imagePath,
    #type: _f$type,
    #category: _f$category,
    #productCategory: _f$productCategory,
    #isHiddenInCodex: _f$isHiddenInCodex,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = Skin.checkType;
  @override
  late final ClassMapperBase superMapper = CosmeticMapper.ensureInitialized();

  static Skin _instantiate(DecodingData data) {
    return Skin(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      imagePath: data.dec(_f$imagePath),
      type: data.dec(_f$type),
      category: data.dec(_f$category),
      productCategory: data.dec(_f$productCategory),
      isHiddenInCodex: data.dec(_f$isHiddenInCodex),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Skin fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Skin>(map);
  }

  static Skin fromJson(String json) {
    return ensureInitialized().decodeJson<Skin>(json);
  }
}

mixin SkinMappable {
  String toJson() {
    return SkinMapper.ensureInitialized().encodeJson<Skin>(this as Skin);
  }

  Map<String, dynamic> toMap() {
    return SkinMapper.ensureInitialized().encodeMap<Skin>(this as Skin);
  }

  SkinCopyWith<Skin, Skin, Skin> get copyWith =>
      _SkinCopyWithImpl<Skin, Skin>(this as Skin, $identity, $identity);
  @override
  String toString() {
    return SkinMapper.ensureInitialized().stringifyValue(this as Skin);
  }

  @override
  bool operator ==(Object other) {
    return SkinMapper.ensureInitialized().equalsValue(this as Skin, other);
  }

  @override
  int get hashCode {
    return SkinMapper.ensureInitialized().hashValue(this as Skin);
  }
}

extension SkinValueCopy<$R, $Out> on ObjectCopyWith<$R, Skin, $Out> {
  SkinCopyWith<$R, Skin, $Out> get $asSkin =>
      $base.as((v, t, t2) => _SkinCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SkinCopyWith<$R, $In extends Skin, $Out>
    implements CosmeticCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    String? imagePath,
    String? type,
    String? category,
    String? productCategory,
    bool? isHiddenInCodex,
  });
  SkinCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SkinCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Skin, $Out>
    implements SkinCopyWith<$R, Skin, $Out> {
  _SkinCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Skin> $mapper = SkinMapper.ensureInitialized();
  @override
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    String? imagePath,
    String? type,
    String? category,
    Object? productCategory = $none,
    bool? isHiddenInCodex,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != null) #description: description,
      if (imagePath != null) #imagePath: imagePath,
      if (type != null) #type: type,
      if (category != null) #category: category,
      if (productCategory != $none) #productCategory: productCategory,
      if (isHiddenInCodex != null) #isHiddenInCodex: isHiddenInCodex,
    }),
  );
  @override
  Skin $make(CopyWithData data) => Skin(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    imagePath: data.get(#imagePath, or: $value.imagePath),
    type: data.get(#type, or: $value.type),
    category: data.get(#category, or: $value.category),
    productCategory: data.get(#productCategory, or: $value.productCategory),
    isHiddenInCodex: data.get(#isHiddenInCodex, or: $value.isHiddenInCodex),
  );

  @override
  SkinCopyWith<$R2, Skin, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SkinCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SigilMapper extends ClassMapperBase<Sigil> {
  SigilMapper._();

  static SigilMapper? _instance;
  static SigilMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SigilMapper._());
      CosmeticMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Sigil';

  static String _$uniqueName(Sigil v) => v.uniqueName;
  static const Field<Sigil, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(Sigil v) => v.name;
  static const Field<Sigil, String> _f$name = Field('name', _$name);
  static String _$description(Sigil v) => v.description;
  static const Field<Sigil, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$imagePath(Sigil v) => v.imagePath;
  static const Field<Sigil, String> _f$imagePath = Field(
    'imagePath',
    _$imagePath,
  );
  static String _$type(Sigil v) => v.type;
  static const Field<Sigil, String> _f$type = Field('type', _$type);
  static String _$category(Sigil v) => v.category;
  static const Field<Sigil, String> _f$category = Field('category', _$category);
  static String? _$productCategory(Sigil v) => v.productCategory;
  static const Field<Sigil, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
  );
  static bool _$isHiddenInCodex(Sigil v) => v.isHiddenInCodex;
  static const Field<Sigil, bool> _f$isHiddenInCodex = Field(
    'isHiddenInCodex',
    _$isHiddenInCodex,
  );

  @override
  final MappableFields<Sigil> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #imagePath: _f$imagePath,
    #type: _f$type,
    #category: _f$category,
    #productCategory: _f$productCategory,
    #isHiddenInCodex: _f$isHiddenInCodex,
  };

  static Sigil _instantiate(DecodingData data) {
    return Sigil(
      uniqueName: data.dec(_f$uniqueName),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      imagePath: data.dec(_f$imagePath),
      type: data.dec(_f$type),
      category: data.dec(_f$category),
      productCategory: data.dec(_f$productCategory),
      isHiddenInCodex: data.dec(_f$isHiddenInCodex),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Sigil fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Sigil>(map);
  }

  static Sigil fromJson(String json) {
    return ensureInitialized().decodeJson<Sigil>(json);
  }
}

mixin SigilMappable {
  String toJson() {
    return SigilMapper.ensureInitialized().encodeJson<Sigil>(this as Sigil);
  }

  Map<String, dynamic> toMap() {
    return SigilMapper.ensureInitialized().encodeMap<Sigil>(this as Sigil);
  }

  SigilCopyWith<Sigil, Sigil, Sigil> get copyWith =>
      _SigilCopyWithImpl<Sigil, Sigil>(this as Sigil, $identity, $identity);
  @override
  String toString() {
    return SigilMapper.ensureInitialized().stringifyValue(this as Sigil);
  }

  @override
  bool operator ==(Object other) {
    return SigilMapper.ensureInitialized().equalsValue(this as Sigil, other);
  }

  @override
  int get hashCode {
    return SigilMapper.ensureInitialized().hashValue(this as Sigil);
  }
}

extension SigilValueCopy<$R, $Out> on ObjectCopyWith<$R, Sigil, $Out> {
  SigilCopyWith<$R, Sigil, $Out> get $asSigil =>
      $base.as((v, t, t2) => _SigilCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SigilCopyWith<$R, $In extends Sigil, $Out>
    implements CosmeticCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    String? imagePath,
    String? type,
    String? category,
    String? productCategory,
    bool? isHiddenInCodex,
  });
  SigilCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SigilCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Sigil, $Out>
    implements SigilCopyWith<$R, Sigil, $Out> {
  _SigilCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Sigil> $mapper = SigilMapper.ensureInitialized();
  @override
  $R call({
    String? uniqueName,
    String? name,
    String? description,
    String? imagePath,
    String? type,
    String? category,
    Object? productCategory = $none,
    bool? isHiddenInCodex,
  }) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (name != null) #name: name,
      if (description != null) #description: description,
      if (imagePath != null) #imagePath: imagePath,
      if (type != null) #type: type,
      if (category != null) #category: category,
      if (productCategory != $none) #productCategory: productCategory,
      if (isHiddenInCodex != null) #isHiddenInCodex: isHiddenInCodex,
    }),
  );
  @override
  Sigil $make(CopyWithData data) => Sigil(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
    imagePath: data.get(#imagePath, or: $value.imagePath),
    type: data.get(#type, or: $value.type),
    category: data.get(#category, or: $value.category),
    productCategory: data.get(#productCategory, or: $value.productCategory),
    isHiddenInCodex: data.get(#isHiddenInCodex, or: $value.isHiddenInCodex),
  );

  @override
  SigilCopyWith<$R2, Sigil, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SigilCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

