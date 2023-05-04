import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class Recipes extends Table {
  // ID
  IntColumn get id => integer().autoIncrement()();
  // レシピ名
  TextColumn get recipeTitle => text().withLength(max: 100)();
  // カテゴリ(外部キー)
  IntColumn get categoryId => integer().references(RecipeCategories, #id)();

  @override
  // 主キー設定
  Set<Column> get primaryKey => { recipeTitle };
}

class RecipeCategories extends Table {
  // カテゴリID
  IntColumn get id => integer().autoIncrement()();
  // カテゴリ名
  TextColumn get categoryName => text().withLength(max: 100)();
}

class SetRecipeLists extends Table {
  // レシピID
  IntColumn get recipeId => integer().references(Recipes, #id)();
  // レシピ名
  TextColumn get recipeTitle => text().withLength(max: 100)();
}

@DriftDatabase(tables: [Recipes, RecipeCategories, SetRecipeLists])
class RecipeDatabase extends _$RecipeDatabase {
  RecipeDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Recipesテーブルにデータ登録
  Future addRecipeWithCompanion(RecipesCompanion recipe) =>
      into(recipes).insert(recipe);

  // Recipesテーブルから全件データ取得
  Future<List<Recipe>> get selectAllRecipes => select(recipes).get();

  // Recipesテーブルにデータ更新
  Future updateRecipe(Recipe recipe) => update(recipes).replace(recipe);

  // Recipesテーブルのデータ削除
  Future deleteRecipe(Recipe recipe) =>
      (delete(recipes)
        ..where((t) => t.recipeTitle.equals(recipe.recipeTitle))).go();

  // RecipeCategoryテーブルにデータ登録
  Future addRecipeCategoryWithCompanion(RecipeCategoriesCompanion category) =>
      into(recipeCategories).insert(category);

  // RecipeCategoryテーブルから全件データ取得
  Future<List<RecipeCategorie>> get selectAllRecipeCategories =>
      select(recipeCategories).get();

  // RecipeCategoryテーブルにデータ更新
  Future updateRecipeCategory(RecipeCategorie category) =>
      update(recipeCategories).replace(category);

  // RecipeCategoryテーブルのデータ削除
  Future deleteRecipeCategory(RecipeCategorie category) =>
      (delete(recipeCategories)
        ..where((t) => t.id.equals(category.id))).go();

  // SetRecipeLists
  //
  //
  // SetRecipeListsテーブルにデータ登録
  Future addSetRecipeListWithCompanion(SetRecipeListsCompanion recipe) =>
      into(setRecipeLists).insert(recipe);

  // SetRecipeListsテーブルから全件データ取得
  Future<List<SetRecipeList>> get selectAllSetRecipeLists =>
      select(setRecipeLists).get();

  // SetRecipeListsテーブルにデータ更新
  Future updateSetRecipeList(SetRecipeList recipe) =>
      update(setRecipeLists).replace(recipe);

  // SetRecipeListsテーブルの全件データ削除
  Future deleteAllSetRecipeList(SetRecipeList recipe) =>
      delete(setRecipeLists).go();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'Recipes.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
