import 'package:flutter/material.dart';
import 'package:recipe/screens/recipe_category_maintenance_screen.dart';
import 'package:recipe/screens/recipe_list_screen.dart';
import 'package:recipe/screens/suggest_recipe_list_screen.dart';
import 'package:recipe/screens/register_recipe_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("今夜のレシピ"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  // TODO レシピ登録件数が0件の場合、非活性にする
                  onPressed: () => _toSuggestRecipeList(context),
                  child: const Text("今週のレシピ一覧"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _toRegisterRecipe(context),
                  child: const Text("レシピ登録"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _toRecipeList(context),
                  child: const Text("レシピ一覧"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _toRecipeCategoryMaintenance(context),
                  child: const Text("レシピカテゴリ管理"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _toSuggestRecipeList(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SuggestRecipeListScreen()),
    );
  }

  _toRegisterRecipe(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterRecipeScreen()),
    );
  }

  _toRecipeList(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RecipeListScreen()),
    );
  }

  _toRecipeCategoryMaintenance(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RecipeCategoryMaintenanceScreen()),
    );
  }
}
