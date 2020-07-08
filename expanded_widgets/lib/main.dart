import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widgets"),
      ),
      body: Row(
        children: <Widget>[
          // Expanded widgets are used as flexbox in css because they can neatly arrange row or column contents
          Expanded(
            // flex property can also be added to give them the share
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(21.1),
              color: Colors.orange,
              child: Text("1"),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(21.1),
              color: Colors.greenAccent,
              child: Text("2"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(21.1),
              color: Colors.yellowAccent,
              child: Text("3"),
            ),
          ),
        ],
      ),
    );
  }
}
