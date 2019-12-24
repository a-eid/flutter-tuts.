import 'package:flutter/material.dart';
import 'package:tuts/darktheme/theme.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);
  getTheme() => _themeData;

  toggleTheme() async {
    _themeData = _themeData == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }
}
