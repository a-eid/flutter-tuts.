import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget main() {
  // disable other Orientations. but portraitUp
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
      child: Center(
          child: Row(
        children: <Widget>[
          Container(
            child: Container(),
          ),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      )),
    );
  }
}
