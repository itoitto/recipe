import 'package:flutter/material.dart';

class RegisterRecipeScreen extends StatefulWidget {
  const RegisterRecipeScreen({Key? key}) : super(key: key);

  @override
  State<RegisterRecipeScreen> createState() => _RegisterRecipeScreenState();
}

class _RegisterRecipeScreenState extends State<RegisterRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("レシピ登録"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // レシピ名
          Container(),
          // 材料
          Container(),
          // 登録ボタン
          ElevatedButton(onPressed: _registerRecipe(), child: const Text("登録する")),
        ],
      ),
    );
  }

  // DBにレシピを登録する
  // 登録後、レシピ一覧画面を表示する
  // 例外エラー時、フラッシュメッセージを表示し、レシピ一覧画面を再描画する
  _registerRecipe() {

  }
}
