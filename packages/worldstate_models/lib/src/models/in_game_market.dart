import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';

part 'in_game_market.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawInGameMarket with RawInGameMarketMappable {
  RawInGameMarket({required this.landingPage});

  final RawLandingPage landingPage;

  static const fromMap = RawInGameMarketMapper.fromMap;

  InGameMarket toInGameMarket(Dependency deps) => InGameMarket.fromRaw(this, deps);
}

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawLandingPage with RawLandingPageMappable {
  RawLandingPage({required this.categories});

  final List<RawCategory> categories;
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

  Category toCategory(Dependency deps) => Category.fromRaw(this, deps);
}

@MappableClass()
class InGameMarket with InGameMarketMappable {
  InGameMarket({required this.landingPage});

  factory InGameMarket.fromRaw(RawInGameMarket raw, Dependency deps) {
    final rawCategories = raw.landingPage.categories.map((c) => Category.fromRaw(c, deps));

    return InGameMarket(landingPage: LandingPage(categories: rawCategories.toList()));
  }

  final LandingPage landingPage;
}

@MappableClass()
class LandingPage with LandingPageMappable {
  LandingPage({required this.categories});

  final List<Category> categories;
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

  factory Category.fromRaw(RawCategory raw, Dependency deps) {
    final langs = deps.langs;

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
