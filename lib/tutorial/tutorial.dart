import 'package:flutter/material.dart';
import 'package:tuts/assets.dart';

class Example extends StatelessWidget {
  Widget image(BuildContext context) => Image.asset(
        images["lake"],
        fit: BoxFit.cover,
      );

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

  final Widget headerStar = InkWell(
    onTap: () {},
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
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            image(context),
            header(),
            actionsRow(),
            description
          ],
        ),
      ),
    );
  }
}
