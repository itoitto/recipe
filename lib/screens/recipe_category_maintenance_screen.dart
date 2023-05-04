import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RecipeCategoryMaintenanceScreen extends StatefulWidget {
  const RecipeCategoryMaintenanceScreen({Key? key}) : super(key: key);

  @override
  State<RecipeCategoryMaintenanceScreen> createState() =>
      _RecipeCategoryMaintenanceScreenState();
}

class _RecipeCategoryMaintenanceScreenState
    extends State<RecipeCategoryMaintenanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("レシピカテゴリ管理"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Text("仮置き")),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () => _showModalCreateScreen(context),
                child: const Icon(Icons.add),
                tooltip: "レシピカテゴリを追加します",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showModalCreateScreen(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('レシピカテゴリ名'),
                SizedBox(height: 20.0),
                TextField(
                  maxLength: 100,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('登録'),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('キャンセル'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
