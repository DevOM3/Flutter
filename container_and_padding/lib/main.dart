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
        title: Text("Container and Padding"),
      ),
      // using container as a body
        // container takes the whole screen if it doesn't contain any child and if it contains child then it wraps its size to the child size
      body: Container(
        // for adding padding we use padding property with EdgeInsets and its functions
        // EdgeInsets.all() takes value to add padding to all sides equally
        // EdgeInsets.symmetric() takes horizontal and vertical parameter to add padding
        // EdgeInsets.fromLTRB() takes input as Left, Top, Right, Bottom as padding pixels from all sides
        padding: EdgeInsets.all(21.1),
        // sae applies to the Margin property also
        margin: EdgeInsets.all(21.1),
        color: Colors.grey[400],
        child: Text("Hello from container"),
      )
      // instead of container we can directly use padding class like
      // body: Padding(
      //  text: "",
      // padding: EdgeInsets.functions()
      // )
    );
  }
}

