import 'package:flutter/material.dart';

const colorList = [
  Colors.deepPurple,
  Colors.green,
  Colors.blue,
  Colors.red,
  Colors.orange,
  Colors.pink,
  Colors.purple,
  Colors.teal,
  Colors.amber,
  Colors.cyan,
  Colors.indigo,
  Colors.lime,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < colorList.length,
            'Invalid color index');

  ThemeData getTheme() {
    return ThemeData(
        colorSchemeSeed: colorList[selectedColor],
        useMaterial3: true,
        appBarTheme: const AppBarTheme(centerTitle: false));
  }
}
