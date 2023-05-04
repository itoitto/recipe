import 'package:flutter/material.dart';
import 'package:recipe/screens/home_screen.dart';

void main() => runApp(Recipe());

class Recipe extends StatelessWidget {
  // const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "今夜のレシピ",
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomeScreen(),
    );
  }
}
