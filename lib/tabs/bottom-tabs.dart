import 'dart:math';

import 'package:flutter/material.dart';

class BottomNavigationBarContainer extends StatefulWidget {
  final List<Widget> children;
  final int margin;
  final Function onTap;
  final Color color;
  final Color activeColor;

  const BottomNavigationBarContainer({
    this.children,
    this.margin,
    key,
    this.onTap,
    this.color = Colors.blue,
    this.activeColor = Colors.green,
  }) : super(key: key);

  @override
  _BottomNavigationBarContainerState createState() =>
      _BottomNavigationBarContainerState();
}

class _BottomNavigationBarContainerState
    extends State<BottomNavigationBarContainer> {
  int acitveIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final length = this.widget.children.length;
    final margins = (length + 1) * widget.margin;
    final space = min((width - margins) / length, 70).toDouble();

    final List<Widget> chs = [];

    for (int i = 0; i < widget.children.length; i++) {
      Widget child = Flexible(
        fit: FlexFit.loose,
        child: Container(
          width: space,
          height: space,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(space / 2),
          ),
          margin: EdgeInsets.symmetric(horizontal: widget.margin / 2),
          child: Material(
            color: acitveIndex == i ? widget.activeColor : widget.color,
            borderRadius: BorderRadius.circular(space / 2),
            child: InkWell(
              borderRadius: BorderRadius.circular(space / 2),
              onTap: () {
                setState(() {
                  acitveIndex = i;
                });
                widget.onTap(i);
              },
              child: widget.children[i],
            ),
          ),
        ),
      );

      chs.add(child);
    }

    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: widget.margin / 2),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: chs),
        // render:
      ),
    );
  }
}
