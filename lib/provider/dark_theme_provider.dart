import 'package:flutter/material.dart';
import 'package:news_app/services/dark_theme_prefs.dart';

//changeNotifiee always keep listening
class DarkThemProvider with ChangeNotifier {
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();
  //
  bool _darkTheme = false;
  //getter
  bool get getDarkTheme => _darkTheme;
  //setter
  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePrefs.setDarkTheme(value);
    notifyListeners();
  }
}
