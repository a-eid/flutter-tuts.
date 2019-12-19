import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MasterSlave extends StatefulWidget {
  @override
  _MasterSlaveState createState() => _MasterSlaveState();
}

class _MasterSlaveState extends State<MasterSlave> {
  int index;

  Widget masterSlave() {
    return Container(
      color: Colors.blue,
      child: Row(
        children: <Widget>[
          Expanded(flex: 2, child: MasterWidget(onItemTap: toDetails)),
          Container(
            color: Colors.grey,
            child:
                SizedBox(width: 8, height: MediaQuery.of(context).size.height),
          ),
          Expanded(
              flex: 3,
              child:
                  DetailsWidget(index: index == null ? null : index.toString()))
        ],
      ),
    );
  }

  void toDetails(i) {
    setState(() {
      index = i;
    });
  }

  void navigateToDetails(index) {
    Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext ctx) {
      return DetailsWidget(index: index.toString());
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return constraints.maxWidth > 600
              ? masterSlave()
              : MasterWidget(
                  onItemTap: navigateToDetails,
                );
        },
      ),
    );
  }
}

class MasterWidget extends StatelessWidget {
  final Function onItemTap;
  const MasterWidget({this.onItemTap});

  masterItem({int index, Function onTap}) {
    return ListTile(
      title: Text(
        "$index",
        style: TextStyle(fontSize: 20),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Master Widget"),
      ),
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext ctx, int index) {
          return masterItem(
            index: index,
            onTap: () {
              onItemTap(index);
            },
          );
        },
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  final String index;
  const DetailsWidget({this.index});

  @override
  Widget build(BuildContext context) {
    final navigationBar =
        index != null ? CupertinoNavigationBar(middle: Text(index)) : null;

    return CupertinoPageScaffold(
      navigationBar: navigationBar,
      child: Center(
        child: index == null ? Text("No Item Selected") : Text(index),
      ),
    );
  }
}
