import 'package:dart_mappable/dart_mappable.dart';

part 'i18n_data.mapper.dart';

@MappableClass()
class I18nData with I18nDataMappable {
  I18nData({required this.name, this.description});

  factory I18nData.fromMap(Map<String, dynamic> map) => I18nDataMapper.fromMap(map);

  final String name;
  final String? description;
}
