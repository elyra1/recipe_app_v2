import 'package:auto_route/auto_route.dart';
import 'package:recipe_app_v2/pages/categories_page.dart';
import 'package:recipe_app_v2/pages/category_recipes_page.dart';
import 'package:recipe_app_v2/pages/favorite_recipes_page.dart';
import 'package:recipe_app_v2/pages/home_page.dart';
import 'package:recipe_app_v2/pages/recipe_page.dart';
import 'package:recipe_app_v2/pages/wiki_page.dart';

import '../pages/instruction_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'categories',
          name: 'CategoriesRouter',
          page: CategoriesPage,
          initial: true,
        ),
        AutoRoute(
          path: 'wiki',
          name: 'WikiRouter',
          page: WikiPage,
        ),
        AutoRoute(
          path: 'favorite',
          name: 'FavoriteRouter',
          page: FavoriteRecipesPage,
        )
      ],
    ),
    AutoRoute(
      page: RecipePage,
    ),
    AutoRoute(
      page: CategoryRecipesPage,
    ),
    AutoRoute(
      page: InstructionPage,
    )
  ],
)
class $AppRouter {}
