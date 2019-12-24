import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuts/darktheme/ThemeNotifier.dart';
import 'package:tuts/darktheme/theme.dart';

Widget main() {
  return ChangeNotifierProvider<ThemeNotifier>(
    builder: (_) => ThemeNotifier(darkTheme),
    child: Main(),
  );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      theme: themeNotifier.getTheme(),
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark / Light Theme"),
      ),
      body: Center(
        child: Text("Whaterever "),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          themeNotifier.toggleTheme();
        },
      ),
    );
  }
}
