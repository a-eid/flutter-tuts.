import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bottom-tabs.dart';

Widget main() {
  return App();
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarContainer(
        margin: 20,
        color: Colors.red,
        activeColor: Colors.blue,
        onTap: (index) {
          print('tapped $index');
        },
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "Test",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "Test",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "Test",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "Test",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Padding(
          //       padding: EdgeInsets.all(2),
          //       child: Icon(
          //         Icons.ac_unit,
          //         color: Colors.white,
          //       ),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.all(2),
          //       child: Text(
          //         "Test",
          //         style: TextStyle(color: Colors.white),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
