import 'package:flutter/material.dart';

class ScrollAnimation extends StatefulWidget {
  @override
  _ScrollAnimationState createState() => _ScrollAnimationState();
}

class _ScrollAnimationState extends State<ScrollAnimation> {
  ScrollController _controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        offset = _controller.offset;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          ListView.builder(
            controller: _controller,
            itemCount: 100,
            itemBuilder: (ctx, index) => Card(),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Transform.rotate(
              angle: offset / 100,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.green,
      margin: EdgeInsets.all(10),
    );
  }
}
