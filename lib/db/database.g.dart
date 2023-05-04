// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $RecipeCategoriesTable extends RecipeCategories
    with TableInfo<$RecipeCategoriesTable, RecipeCategorie> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipeCategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _categoryNameMeta =
      const VerificationMeta('categoryName');
  @override
  late final GeneratedColumn<String> categoryName = GeneratedColumn<String>(
      'category_name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, categoryName];
  @override
  String get aliasedName => _alias ?? 'recipe_categories';
  @override
  String get actualTableName => 'recipe_categories';
  @override
  VerificationContext validateIntegrity(Insertable<RecipeCategorie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('category_name')) {
      context.handle(
          _categoryNameMeta,
          categoryName.isAcceptableOrUnknown(
              data['category_name']!, _categoryNameMeta));
    } else if (isInserting) {
      context.missing(_categoryNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecipeCategorie map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecipeCategorie(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      categoryName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_name'])!,
    );
  }

  @override
  $RecipeCategoriesTable createAlias(String alias) {
    return $RecipeCategoriesTable(attachedDatabase, alias);
  }
}

class RecipeCategorie extends DataClass implements Insertable<RecipeCategorie> {
  final int id;
  final String categoryName;
  const RecipeCategorie({required this.id, required this.categoryName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['category_name'] = Variable<String>(categoryName);
    return map;
  }

  RecipeCategoriesCompanion toCompanion(bool nullToAbsent) {
    return RecipeCategoriesCompanion(
      id: Value(id),
      categoryName: Value(categoryName),
    );
  }

  factory RecipeCategorie.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecipeCategorie(
      id: serializer.fromJson<int>(json['id']),
      categoryName: serializer.fromJson<String>(json['categoryName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'categoryName': serializer.toJson<String>(categoryName),
    };
  }

  RecipeCategorie copyWith({int? id, String? categoryName}) => RecipeCategorie(
        id: id ?? this.id,
        categoryName: categoryName ?? this.categoryName,
      );
  @override
  String toString() {
    return (StringBuffer('RecipeCategorie(')
          ..write('id: $id, ')
          ..write('categoryName: $categoryName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, categoryName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecipeCategorie &&
          other.id == this.id &&
          other.categoryName == this.categoryName);
}

class RecipeCategoriesCompanion extends UpdateCompanion<RecipeCategorie> {
  final Value<int> id;
  final Value<String> categoryName;
  const RecipeCategoriesCompanion({
    this.id = const Value.absent(),
    this.categoryName = const Value.absent(),
  });
  RecipeCategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String categoryName,
  }) : categoryName = Value(categoryName);
  static Insertable<RecipeCategorie> custom({
    Expression<int>? id,
    Expression<String>? categoryName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryName != null) 'category_name': categoryName,
    });
  }

  RecipeCategoriesCompanion copyWith(
      {Value<int>? id, Value<String>? categoryName}) {
    return RecipeCategoriesCompanion(
      id: id ?? this.id,
      categoryName: categoryName ?? this.categoryName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (categoryName.present) {
      map['category_name'] = Variable<String>(categoryName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipeCategoriesCompanion(')
          ..write('id: $id, ')
          ..write('categoryName: $categoryName')
          ..write(')'))
        .toString();
  }
}

class $RecipesTable extends Recipes with TableInfo<$RecipesTable, Recipe> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _recipeTitleMeta =
      const VerificationMeta('recipeTitle');
  @override
  late final GeneratedColumn<String> recipeTitle = GeneratedColumn<String>(
      'recipe_title', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES recipe_categories (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, recipeTitle, categoryId];
  @override
  String get aliasedName => _alias ?? 'recipes';
  @override
  String get actualTableName => 'recipes';
  @override
  VerificationContext validateIntegrity(Insertable<Recipe> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('recipe_title')) {
      context.handle(
          _recipeTitleMeta,
          recipeTitle.isAcceptableOrUnknown(
              data['recipe_title']!, _recipeTitleMeta));
    } else if (isInserting) {
      context.missing(_recipeTitleMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {recipeTitle};
  @override
  Recipe map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Recipe(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recipeTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}recipe_title'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
    );
  }

  @override
  $RecipesTable createAlias(String alias) {
    return $RecipesTable(attachedDatabase, alias);
  }
}

class Recipe extends DataClass implements Insertable<Recipe> {
  final int id;
  final String recipeTitle;
  final int categoryId;
  const Recipe(
      {required this.id, required this.recipeTitle, required this.categoryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['recipe_title'] = Variable<String>(recipeTitle);
    map['category_id'] = Variable<int>(categoryId);
    return map;
  }

  RecipesCompanion toCompanion(bool nullToAbsent) {
    return RecipesCompanion(
      id: Value(id),
      recipeTitle: Value(recipeTitle),
      categoryId: Value(categoryId),
    );
  }

  factory Recipe.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Recipe(
      id: serializer.fromJson<int>(json['id']),
      recipeTitle: serializer.fromJson<String>(json['recipeTitle']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recipeTitle': serializer.toJson<String>(recipeTitle),
      'categoryId': serializer.toJson<int>(categoryId),
    };
  }

  Recipe copyWith({int? id, String? recipeTitle, int? categoryId}) => Recipe(
        id: id ?? this.id,
        recipeTitle: recipeTitle ?? this.recipeTitle,
        categoryId: categoryId ?? this.categoryId,
      );
  @override
  String toString() {
    return (StringBuffer('Recipe(')
          ..write('id: $id, ')
          ..write('recipeTitle: $recipeTitle, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recipeTitle, categoryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Recipe &&
          other.id == this.id &&
          other.recipeTitle == this.recipeTitle &&
          other.categoryId == this.categoryId);
}

class RecipesCompanion extends UpdateCompanion<Recipe> {
  final Value<int> id;
  final Value<String> recipeTitle;
  final Value<int> categoryId;
  final Value<int> rowid;
  const RecipesCompanion({
    this.id = const Value.absent(),
    this.recipeTitle = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecipesCompanion.insert({
    required int id,
    required String recipeTitle,
    required int categoryId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        recipeTitle = Value(recipeTitle),
        categoryId = Value(categoryId);
  static Insertable<Recipe> custom({
    Expression<int>? id,
    Expression<String>? recipeTitle,
    Expression<int>? categoryId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeTitle != null) 'recipe_title': recipeTitle,
      if (categoryId != null) 'category_id': categoryId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecipesCompanion copyWith(
      {Value<int>? id,
      Value<String>? recipeTitle,
      Value<int>? categoryId,
      Value<int>? rowid}) {
    return RecipesCompanion(
      id: id ?? this.id,
      recipeTitle: recipeTitle ?? this.recipeTitle,
      categoryId: categoryId ?? this.categoryId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recipeTitle.present) {
      map['recipe_title'] = Variable<String>(recipeTitle.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipesCompanion(')
          ..write('id: $id, ')
          ..write('recipeTitle: $recipeTitle, ')
          ..write('categoryId: $categoryId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SetRecipeListsTable extends SetRecipeLists
    with TableInfo<$SetRecipeListsTable, SetRecipeList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SetRecipeListsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _recipeIdMeta =
      const VerificationMeta('recipeId');
  @override
  late final GeneratedColumn<int> recipeId = GeneratedColumn<int>(
      'recipe_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES recipes (id)'));
  static const VerificationMeta _recipeTitleMeta =
      const VerificationMeta('recipeTitle');
  @override
  late final GeneratedColumn<String> recipeTitle = GeneratedColumn<String>(
      'recipe_title', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [recipeId, recipeTitle];
  @override
  String get aliasedName => _alias ?? 'set_recipe_lists';
  @override
  String get actualTableName => 'set_recipe_lists';
  @override
  VerificationContext validateIntegrity(Insertable<SetRecipeList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('recipe_id')) {
      context.handle(_recipeIdMeta,
          recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta));
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('recipe_title')) {
      context.handle(
          _recipeTitleMeta,
          recipeTitle.isAcceptableOrUnknown(
              data['recipe_title']!, _recipeTitleMeta));
    } else if (isInserting) {
      context.missing(_recipeTitleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SetRecipeList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SetRecipeList(
      recipeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}recipe_id'])!,
      recipeTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}recipe_title'])!,
    );
  }

  @override
  $SetRecipeListsTable createAlias(String alias) {
    return $SetRecipeListsTable(attachedDatabase, alias);
  }
}

class SetRecipeList extends DataClass implements Insertable<SetRecipeList> {
  final int recipeId;
  final String recipeTitle;
  const SetRecipeList({required this.recipeId, required this.recipeTitle});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['recipe_id'] = Variable<int>(recipeId);
    map['recipe_title'] = Variable<String>(recipeTitle);
    return map;
  }

  SetRecipeListsCompanion toCompanion(bool nullToAbsent) {
    return SetRecipeListsCompanion(
      recipeId: Value(recipeId),
      recipeTitle: Value(recipeTitle),
    );
  }

  factory SetRecipeList.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SetRecipeList(
      recipeId: serializer.fromJson<int>(json['recipeId']),
      recipeTitle: serializer.fromJson<String>(json['recipeTitle']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'recipeId': serializer.toJson<int>(recipeId),
      'recipeTitle': serializer.toJson<String>(recipeTitle),
    };
  }

  SetRecipeList copyWith({int? recipeId, String? recipeTitle}) => SetRecipeList(
        recipeId: recipeId ?? this.recipeId,
        recipeTitle: recipeTitle ?? this.recipeTitle,
      );
  @override
  String toString() {
    return (StringBuffer('SetRecipeList(')
          ..write('recipeId: $recipeId, ')
          ..write('recipeTitle: $recipeTitle')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(recipeId, recipeTitle);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SetRecipeList &&
          other.recipeId == this.recipeId &&
          other.recipeTitle == this.recipeTitle);
}

class SetRecipeListsCompanion extends UpdateCompanion<SetRecipeList> {
  final Value<int> recipeId;
  final Value<String> recipeTitle;
  final Value<int> rowid;
  const SetRecipeListsCompanion({
    this.recipeId = const Value.absent(),
    this.recipeTitle = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SetRecipeListsCompanion.insert({
    required int recipeId,
    required String recipeTitle,
    this.rowid = const Value.absent(),
  })  : recipeId = Value(recipeId),
        recipeTitle = Value(recipeTitle);
  static Insertable<SetRecipeList> custom({
    Expression<int>? recipeId,
    Expression<String>? recipeTitle,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (recipeId != null) 'recipe_id': recipeId,
      if (recipeTitle != null) 'recipe_title': recipeTitle,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SetRecipeListsCompanion copyWith(
      {Value<int>? recipeId, Value<String>? recipeTitle, Value<int>? rowid}) {
    return SetRecipeListsCompanion(
      recipeId: recipeId ?? this.recipeId,
      recipeTitle: recipeTitle ?? this.recipeTitle,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (recipeId.present) {
      map['recipe_id'] = Variable<int>(recipeId.value);
    }
    if (recipeTitle.present) {
      map['recipe_title'] = Variable<String>(recipeTitle.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SetRecipeListsCompanion(')
          ..write('recipeId: $recipeId, ')
          ..write('recipeTitle: $recipeTitle, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$RecipeDatabase extends GeneratedDatabase {
  _$RecipeDatabase(QueryExecutor e) : super(e);
  late final $RecipeCategoriesTable recipeCategories =
      $RecipeCategoriesTable(this);
  late final $RecipesTable recipes = $RecipesTable(this);
  late final $SetRecipeListsTable setRecipeLists = $SetRecipeListsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [recipeCategories, recipes, setRecipeLists];
}
