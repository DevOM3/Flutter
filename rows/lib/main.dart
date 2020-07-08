import 'package:flutter/material.dart';

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
        title: Text("Rows"),
      ),
      body: Row(
        // mainAxisAlignment allows to tell the axis of the widgets
        // here we have to use MainAxisAlign.property
        mainAxisAlignment: MainAxisAlignment.center,
        // similarly we can use crossAxisAlignment to tell axis of widgets on vertical axis
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Hello from Row"),
          FlatButton(
            onPressed: (){},
            child: Text("Second row"),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(21.1),
            child: Text("Third Row"),
          )
        ],
      ),
    );
  }
}

