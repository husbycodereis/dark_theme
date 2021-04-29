import 'package:flutter/material.dart';

final ThemeData themeDataLight = new ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.orange,
    primaryColor: Colors.orange[500],
    primaryColorBrightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[200],
    accentColor: Colors.purple[500],
    accentColorBrightness: Brightness.light);

final ThemeData themeDataDark = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.red,
  primaryColorBrightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.grey[850],
  accentColor: Colors.blue[500],
  accentColorBrightness: Brightness.dark,
);
