import 'package:flutter/material.dart';

Widget main() {
  return MaterialApp(
    home: App(),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chart(),
    );
  }
}

class Chart extends StatefulWidget {
  Chart({Key key}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(),
    );
  }
}
