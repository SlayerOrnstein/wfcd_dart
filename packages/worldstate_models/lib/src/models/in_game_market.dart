import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';

part 'in_game_market.mapper.dart';

@MappableRecord(caseStyle: CaseStyle.pascalCase)
typedef RawLandingPage = ({List<RawCategory> categories});

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawInGameMarket with RawInGameMarketMappable {
  RawInGameMarket({required this.landingPage});

  final RawLandingPage landingPage;

  InGameMarket toInGameMarket([String locale = 'en']) => InGameMarket.fromRaw(this, locale);
}

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawCategory with RawCategoryMappable {
  RawCategory({
    required this.categoryName,
    required this.name,
    required this.icon,
    required this.addToMenu,
    required this.items,
  });

  final String categoryName;
  final String name;
  final String icon;
  final bool? addToMenu;
  final List<String> items;

  Category toCategory([String locale = 'en']) => Category.fromRaw(this, locale);
}

@MappableClass()
class InGameMarket with InGameMarketMappable {
  InGameMarket({required this.landingPage});

  factory InGameMarket.fromRaw(RawInGameMarket raw, String locale) {
    final rawCategories = raw.landingPage.categories.map((c) => Category.fromRaw(c, locale));

    return InGameMarket(landingPage: (categories: rawCategories.toList()));
  }

  final ({List<Category> categories}) landingPage;
}

@MappableClass()
class Category with CategoryMappable {
  Category({
    required this.category,
    required this.name,
    required this.icon,
    required this.addToMenu,
    required this.items,
  });

  factory Category.fromRaw(RawCategory raw, String locale) {
    final langs = languages(locale);

    return Category(
      category: raw.categoryName,
      name: langs.fetchValue(raw.name),
      icon: raw.icon,
      addToMenu: raw.addToMenu ?? false,
      items: raw.items.map(langs.fetchValue).toList(),
    );
  }

  final String category;
  final String name;
  final String icon;
  final bool addToMenu;
  final List<String> items;
}
