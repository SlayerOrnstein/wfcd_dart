import 'package:dart_mappable/dart_mappable.dart';

part 'texture.mapper.dart';

@MappableClass()
class Texture with TextureMappable {
  Texture({required this.uniqueName, required this.textureLocation});

  factory Texture.fromJson(String json) => TextureMapper.fromJson(json);

  factory Texture.fromMap(Map<String, dynamic> map) => TextureMapper.fromMap(map);

  final String uniqueName;
  final String textureLocation;

  String get ext => RegExp(r'\.(\w+)!').firstMatch(textureLocation)!.group(1)!;
}
