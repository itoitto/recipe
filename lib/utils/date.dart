import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime getDate() {
  return DateTime.now();
}

const Map<int, String> definedWeekend = {
  1: "月曜日",
  2: "火曜日",
  3: "水曜日",
  4: "木曜日",
  5: "金曜日",
  6: "土曜日",
  7: "日曜日",
};

Map<String, String> getWeekSchedule() {
  // 現在日時取得
  DateTime nowDateTime = DateTime.now();

  // 月曜日の日付を求める
  // Map<String, String> dateMap =
  Map<String, String> dateMap = {};

  for (var i = 0; i < 7; i++) {
    dateMap.addEntries(_convertDatetimeToDate(nowDateTime, i).entries);
  }

  return dateMap;
}

// 4/1のフォーマットで返却
Map<String, String> _convertDatetimeToDate(DateTime nowDateTime, int addDay) {
  DateTime date = nowDateTime.add(Duration(days: addDay));
  String monthDay = "${date.month}/${date.day}";

  return {"${definedWeekend[date.weekday]}": monthDay};
}
