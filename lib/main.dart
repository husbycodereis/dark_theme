import 'package:dark_theme/dark_theme_page.dart';
import 'package:dark_theme/theme_data.dart';
import 'package:dark_theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

bool isDarkTeme = true;
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: themeProvider.isDarkTheme ? themeDataDark : themeDataLight,
          home: DarkThemePage(),
        ),
      ),
    );
  }
}
