import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuts/assets.dart';

class Example extends StatelessWidget {
  Widget image(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? Image.asset(
            images["lake"],
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
          )
        : Image.asset(
            images["lake"],
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * .45,
          );
  }

  final Widget headerText = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(bottom: 4),
        child: Text(
          "Oeschinen Lake Campground",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Text(
        "Kandersteg, Switzerland",
        style: TextStyle(color: Colors.grey),
      )
    ],
  );

  final Widget headerStar = CupertinoButton(
    onPressed: () {},
    child: Row(
      children: <Widget>[
        Icon(Icons.star),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text("41"),
        ),
      ],
    ),
  );

  Widget header() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[headerText, headerStar],
      ),
    );
  }

  Widget action({String text, IconData icon, Function onTap}) {
    return Expanded(
      child: CupertinoButton(
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget actionsRow() {
    return Row(
      children: <Widget>[
        action(text: "Call", icon: Icons.call, onTap: () {}),
        action(text: "Route", icon: Icons.near_me, onTap: () {}),
        action(text: "Share", icon: Icons.share, onTap: () {}),
      ],
    );
  }

  final Widget description = Container(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
    child: Text(
      '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.''',
      style: TextStyle(fontSize: 15),
    ),
  );

  Widget _buildVertical(BuildContext context) {
    return Column(
      children: <Widget>[image(context), header(), actionsRow(), description],
    );
  }

  Widget _buildHorizontal(context) {
    return Row(
      children: <Widget>[
        image(context),
        Expanded(
          child: SafeArea(
            left: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[header(), actionsRow(), description],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        Widget child = orientation == Orientation.portrait
            ? _buildVertical(context)
            : _buildHorizontal(context);
        // // return Scaffold(
        //   body: child,
        // );

        return CupertinoPageScaffold(
          navigationBar: null,
          child: child,
        );
      },
    );
  }
}
