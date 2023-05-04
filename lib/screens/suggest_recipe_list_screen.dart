import 'package:flutter/material.dart';
import 'package:recipe/utils/date.dart';

class SuggestRecipeListScreen extends StatefulWidget {
  const SuggestRecipeListScreen({Key? key}) : super(key: key);

  @override
  State<SuggestRecipeListScreen> createState() =>
    _SuggestRecipeListScreenState();
}

class _SuggestRecipeListScreenState extends State<SuggestRecipeListScreen> {
  Map<String, String> weekSchedule = {};

  @override
  void initState() {
    super.initState();
    // 一週間分の日付と曜日のListを取得する
    weekSchedule = getWeekSchedule();
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("今週のレシピ一覧"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          cardWidget(deviceHeight, ["月曜日", "火曜日"]),
          cardWidget(deviceHeight, ["水曜日", "木曜日"]),
          cardWidget(deviceHeight, ["金曜日", "土曜日"]),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                dayOfWeekWidget(deviceHeight, "日曜日"),
                Expanded(flex: 1, child: Container(height: deviceHeight,)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardWidget(double deviceHeight, List<String> dayOfWeek) {
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          dayOfWeekWidget(deviceHeight, dayOfWeek[0]),
          dayOfWeekWidget(deviceHeight, dayOfWeek[1]),
        ],
      ),
    );
  }

  Widget dayOfWeekWidget(double deviceHeight, String dayOfWeek) {
    return Expanded(
      flex: 1,
      child: Card(
        child: Container(
          height: deviceHeight,
          child: Column(
            children: [
              Text("${weekSchedule[dayOfWeek]} $dayOfWeek"),
              Text("レシピ"),
            ],
          ),
        ),
      ),
    );
  }
}
