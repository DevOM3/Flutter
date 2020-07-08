import 'package:flutter/material.dart';
import 'package:flutterfirebase/models/brew.dart';
import 'package:flutterfirebase/screens/home/SettingPanel.dart';
import 'package:flutterfirebase/screens/home/UserList.dart';
import 'package:flutterfirebase/services/auth.dart';
import 'package:flutterfirebase/services/database.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final Authservice _auth = Authservice();

  @override
  Widget build(BuildContext context) {

    void _showSettings() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 21.1, horizontal: 51.1),
              child: SettingPanel(),
            );
          }
      );
    }

    return StreamProvider<List<Brew>>.value(
      value: Database().data,
      child: Scaffold(
        backgroundColor: Colors.deepOrangeAccent[50],
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.deepOrange,
          elevation: 0.0,
          // actions helps us to add icons on the AppBar
          actions: <Widget>[
            FlatButton.icon(
              onPressed: () async {
                _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text("Logout"),
              ),
            FlatButton.icon(
                onPressed: () => _showSettings(),
                icon: Icon(
                  Icons.settings
                ),
                label: Text("Settings"),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            )
          ),
            child: UserList()
        ),
      ),
    );
  }
}
