import 'package:flutter/material.dart';
import 'package:tuts/animations/scrollAnimation.dart';

Widget main() {
  return MaterialApp(home: App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollAnimation(),
    );
  }
}
