import 'package:deliveryapp/theme/dark_mode.dart';
import 'package:deliveryapp/theme/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  // Set a new theme
  void setThemeData(ThemeData newThemeData) {
    if (_themeData != newThemeData) {
      _themeData = newThemeData;
      notifyListeners();
    }
  }

  // Toggle between light and dark themes
  void toggleTheme() {
    setThemeData(_themeData == lightMode ? darkMode : lightMode);
  }
}
