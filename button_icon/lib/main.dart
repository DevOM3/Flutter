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
        title: Text("Icon and Buttons"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Icon(
          Icons.ac_unit,
          color: Colors.black,
          size: 51.1,
        ),
      ),

    );
  }
}

