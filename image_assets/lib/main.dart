import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image/Assets"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        // to get image from the web
        child: Image.network('https://picsum.photos/555/1090')

          // to get asset images
          // first change pubspec.yaml file
//          child: Image.asset('assets/img.jpg'),
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {this.build(context);},
        child: Text("+"),
        backgroundColor: Colors.red,
      ),
    );
  }
}
