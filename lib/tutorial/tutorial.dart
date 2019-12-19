import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  final Widget image = Image.asset('assets/images/lake.jpeg');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[image],
        ),
      ),
    );
  }
}
