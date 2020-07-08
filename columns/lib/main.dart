import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
      ),
      body: Column(
        // as like row we can here also use mainAxisAlignment property and crossAxiAlignment
        // but just in opposite direction
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Row"),
              Text("is also"),
              Text("Possible")
            ],
          ),
          Container(
            padding: EdgeInsets.all(21.1),
            color: Colors.orange,
            child: Text("One"),
          ),
          Container(
            padding: EdgeInsets.all(31.1),
            color: Colors.grey,
            child: Text("Two"),
          ),
          Container(
            padding: EdgeInsets.all(41.1),
            color: Colors.yellow,
            child: Text("Three"),
          ),
          Container(
            padding: EdgeInsets.all(51.1),
            color: Colors.red,
            child: Text("Four"),
          ),
        ],
      ),
    );
  }
}
