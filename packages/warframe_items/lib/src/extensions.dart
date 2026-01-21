import 'package:warframe_items/src/enums.dart';
import 'package:warframe_items/src/models/i18n_data.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

extension WarframeItemMap on Map<String, dynamic> {
  String get uniqueName => this['uniqueName'] as String;

  // Some items have no name, so use the resource name from uniqueName on null
  String get name => this['name'] as String? ?? normalizeResourceName(uniqueName);

  // Sometimes description is a list
  String? get description {
    final description = this['description'];
    if (description is List) return description.join();

    return this['description'] as String?;
  }

  int? get masteryReq => this['masteryReq'] as int?;

  String? get productCategory => this['productCategory'] as String?;

  String? get imageName => this['imageName'] as String?;

  bool get excludeFromCodex => this['excludeFromCodex'] as bool? ?? false;

  Map<String, I18nData>? get i18n => this['i18n'] as Map<String, I18nData>?;

  String nameIn(Languages lang) => i18n?[lang.code]?.name ?? name;
}
