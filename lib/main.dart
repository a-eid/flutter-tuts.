// git clone --branch x --single-branch --depth 1 url
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuts/master-slave.dart';
// import 'tutorial/tutorial.dart';
// import 'chart/main.dart' as chart;
// import 'animations/main.dart' as animation;
// import 'misc/stateless-flutter.dart' as stless;
// import 'provider/counter/main.dart' as counter;
// import './data-backend/main.dart' as dataBackend;
// import 'darktheme/main.dart' as theme;
import 'tabs/main.dart' as tabs;

// void main() => theme.main();
void main() => runApp(tabs.main());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      // home: Home(),
      // home: Example(),
      home: MasterSlave(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world!!"),
      ),
    );
  }
}
