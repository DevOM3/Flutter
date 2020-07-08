import 'package:flutter/material.dart';
import 'package:flutterfirebase/services/auth.dart';

class Home extends StatelessWidget {
  final Authservice _auth = Authservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[50],
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0.0,
        // actions helps us to add icons on the AppBar
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              _auth.signOut();
            }, 
            icon: Icon(Icons.person), 
            label: Text("Logout"),
            )
        ],
      ),
    );
  }
}
