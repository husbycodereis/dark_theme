import 'package:dark_theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DarkThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Base Screen'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                themeProvider.changeTheme();
              },
              icon: Icon(
                themeProvider.isDarkTheme
                    ? Icons.brightness_3
                    : Icons.brightness_5,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Center(
              child: Text(
                themeProvider.isDarkTheme
                    ? 'It is dark theme'
                    : 'It is light theme',
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
