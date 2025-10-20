// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'texture.dart';

class TextureMapper extends ClassMapperBase<Texture> {
  TextureMapper._();

  static TextureMapper? _instance;
  static TextureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextureMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Texture';

  static String _$uniqueName(Texture v) => v.uniqueName;
  static const Field<Texture, String> _f$uniqueName = Field(
    'uniqueName',
    _$uniqueName,
  );
  static String _$textureLocation(Texture v) => v.textureLocation;
  static const Field<Texture, String> _f$textureLocation = Field(
    'textureLocation',
    _$textureLocation,
  );
  static String _$ext(Texture v) => v.ext;
  static const Field<Texture, String> _f$ext = Field(
    'ext',
    _$ext,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<Texture> fields = const {
    #uniqueName: _f$uniqueName,
    #textureLocation: _f$textureLocation,
    #ext: _f$ext,
  };

  static Texture _instantiate(DecodingData data) {
    return Texture(
      uniqueName: data.dec(_f$uniqueName),
      textureLocation: data.dec(_f$textureLocation),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Texture fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Texture>(map);
  }

  static Texture fromJson(String json) {
    return ensureInitialized().decodeJson<Texture>(json);
  }
}

mixin TextureMappable {
  String toJson() {
    return TextureMapper.ensureInitialized().encodeJson<Texture>(
      this as Texture,
    );
  }

  Map<String, dynamic> toMap() {
    return TextureMapper.ensureInitialized().encodeMap<Texture>(
      this as Texture,
    );
  }

  TextureCopyWith<Texture, Texture, Texture> get copyWith =>
      _TextureCopyWithImpl<Texture, Texture>(
        this as Texture,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TextureMapper.ensureInitialized().stringifyValue(this as Texture);
  }

  @override
  bool operator ==(Object other) {
    return TextureMapper.ensureInitialized().equalsValue(
      this as Texture,
      other,
    );
  }

  @override
  int get hashCode {
    return TextureMapper.ensureInitialized().hashValue(this as Texture);
  }
}

extension TextureValueCopy<$R, $Out> on ObjectCopyWith<$R, Texture, $Out> {
  TextureCopyWith<$R, Texture, $Out> get $asTexture =>
      $base.as((v, t, t2) => _TextureCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TextureCopyWith<$R, $In extends Texture, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? uniqueName, String? textureLocation});
  TextureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TextureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Texture, $Out>
    implements TextureCopyWith<$R, Texture, $Out> {
  _TextureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Texture> $mapper =
      TextureMapper.ensureInitialized();
  @override
  $R call({String? uniqueName, String? textureLocation}) => $apply(
    FieldCopyWithData({
      if (uniqueName != null) #uniqueName: uniqueName,
      if (textureLocation != null) #textureLocation: textureLocation,
    }),
  );
  @override
  Texture $make(CopyWithData data) => Texture(
    uniqueName: data.get(#uniqueName, or: $value.uniqueName),
    textureLocation: data.get(#textureLocation, or: $value.textureLocation),
  );

  @override
  TextureCopyWith<$R2, Texture, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TextureCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

