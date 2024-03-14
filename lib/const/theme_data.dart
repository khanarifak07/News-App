import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
        scaffoldBackgroundColor:
            isDarkTheme ? const Color(0xff00001a) : const Color(0xffffffff),
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.dark(
            secondary:
                isDarkTheme ? const Color(0xff1a1f3c) : const Color(0xffe8fdfd),
            brightness: isDarkTheme ? Brightness.dark : Brightness.light),
        cardColor:
            isDarkTheme ? const Color(0xff0a0d2c) : const Color(0xfff2fdfd),
        canvasColor: isDarkTheme ? Colors.black : Colors.green[50],
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme
                ? const ColorScheme.dark()
                : const ColorScheme.light()));
  }
}
