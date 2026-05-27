import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  Color _seedColor = Colors.teal;

  ThemeMode get themeMode => _themeMode;
  Color get seedColor => _seedColor;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void changeSeedColor(Color color) {
    _seedColor = color;
    notifyListeners();
  }
}