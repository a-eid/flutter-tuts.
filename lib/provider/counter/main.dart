import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget main() {
  return MaterialApp(
    home: ChangeNotifierProvider<Counter>(
      child: Example(),
      create: (BuildContext context) {
        return Counter();
      },
    ),
  );
}

class Counter with ChangeNotifier {
  int _count = 0;

  void increment() {
    _count += 1;
    notifyListeners();
  }
}

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider 1"),
      ),
      body: Center(
        child: Consumer(
          // rebuild only thisn little tiny widget.
          builder: (BuildContext ctx, Counter counter, Widget child) {
            return Text(counter._count.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
      ),
    );
  }
}
