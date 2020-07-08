import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
// is wrapper to the window
  ));
}

// to use hot reload we need to use stateless widget
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World!"),
//        centerTitle: true, to centre the title
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          "Hello from Body",
          style: TextStyle(
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.grey[600],
            fontFamily: 'MetalMania',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("+"),
        backgroundColor: Colors.amber,
      ),
    );
  }
}

