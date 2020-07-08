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
        title: Text("Buttons"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(

        // simple button
//        child: RaisedButton(
//          onPressed: (){},
//          child: Text("RaisedButton"),
//          color: Colors.amber,
//        ),

      // button with icon + text
//      child: RaisedButton.icon(
//          onPressed: (){},
//          icon: Icon(
//            Icons.mail,
//          ),
//          label: Text("Mail here")
//      ),

      // adding an icon as a button
      child: IconButton(
        onPressed: (){},
        icon: Icon(
          Icons.account_circle,
          color: Colors.red,
        ),
      ),
      ),
    );
  }
}

