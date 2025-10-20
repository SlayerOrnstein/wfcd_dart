// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'item.dart';

class ItemObjectMapper extends ClassMapperBase<ItemObject> {
  ItemObjectMapper._();

  static ItemObjectMapper? _instance;
  static ItemObjectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemObjectMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ItemObject';

  static String _$uniqueName(ItemObject v) => v.uniqueName;
  static const Field<ItemObject, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$name(ItemObject v) => v.name;
  static const Field<ItemObject, String> _f$name = Field('name', _$name);
  static String _$description(ItemObject v) => v.description;
  static const Field<ItemObject, String> _f$description = Field(
    'description',
    _$description,
  );
  static String _$imagePath(ItemObject v) => v.imagePath;
  static const Field<ItemObject, String> _f$imagePath = Field(
    'imagePath',
    _$imagePath,
  );
  static String _$type(ItemObject v) => v.type;
  static const Field<ItemObject, String> _f$type = Field('type', _$type);
  static String _$category(ItemObject v) => v.category;
  static const Field<ItemObject, String> _f$category = Field(
    'category',
    _$category,
  );
  static String? _$productCategory(ItemObject v) => v.productCategory;
  static const Field<ItemObject, String> _f$productCategory = Field(
    'productCategory',
    _$productCategory,
  );
  static bool _$isHiddenInCodex(ItemObject v) => v.isHiddenInCodex;
  static const Field<ItemObject, bool> _f$isHiddenInCodex = Field(
    'isHiddenInCodex',
    _$isHiddenInCodex,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<ItemObject> fields = const {
    #uniqueName: _f$uniqueName,
    #name: _f$name,
    #description: _f$description,
    #imagePath: _f$imagePath,
    #type: _f$type,
    #category: _f$category,
    #productCategory: _f$productCategory,
    #isHiddenInCodex: _f$isHiddenInCodex,
  };

  static ItemObject _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('ItemObject');
  }

  @override
  final Function instantiate = _instantiate;

  static ItemObject fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemObject>(map);
  }

  static ItemObject fromJson(String json) {
    return ensureInitialized().decodeJson<ItemObject>(json);
  }
}

mixin ItemObjectMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ItemObjectCopyWith<ItemObject, ItemObject, ItemObject> get copyWith;
}

abstract class ItemObjectCopyWith<$R, $In extends ItemObject, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
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
  ItemObjectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

