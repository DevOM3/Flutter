import 'package:flutter/material.dart';
import 'package:flutterfirebase/models/user.dart';
import 'package:flutterfirebase/services/database.dart';
import 'package:flutterfirebase/shared/loading.dart';
import 'package:provider/provider.dart';

class SettingPanel extends StatefulWidget {
  @override
  _SettingPanelState createState() => _SettingPanelState();
}

class _SettingPanelState extends State<SettingPanel> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4', '5'];

  String _currentName;
  String _currentSugar;
  int _currentStrength;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return StreamBuilder<UserData>(
      stream: Database(uid: user.uid).userData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          UserData userData = snapshot.data;
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                    "Update your Preferences",
                    style: TextStyle(
                        fontSize: 18.1
                    )
                ),
                SizedBox(height: 21.1),
                TextFormField(
                  initialValue: userData.name,
                  decoration: InputDecoration(
                      hintText: "Name"
                  ),
                  validator: (val) =>
                  val.isEmpty
                      ? 'Please enter a Name'
                      : null,
                  onChanged: (val) => setState(() => _currentName = val),
                ),
                SizedBox(height: 21.1,),

                // using dropdown button form field for drop down
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black, width: 2.1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent, width: 2.1)
                    ),
                  ),
                  value: _currentSugar ?? userData.sugar,
                  items: sugars.map((sugar) {
                    return DropdownMenuItem(
                      value: sugar,
                      child: Text('$sugar sugar cube(s)'),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _currentSugar = val;
                    });
                  },
                ),

                // making a slider
                Slider(
                  value: (_currentStrength ?? userData.strength).toDouble(),
                  min: 100.0,
                  max: 900.0,
                  divisions: 8,
                  onChanged: (val) =>
                      setState(() => _currentStrength = val.round()),
                  activeColor: Colors.brown[_currentStrength ?? userData.strength],
                  inactiveColor: Colors.brown[_currentStrength ?? userData.strength],
                ),

                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text(
                    "Update",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () async {
                    if(_formKey.currentState.validate()){
                      await Database(uid: user.uid).updateUserData(
                          _currentSugar ?? userData.sugar,
                          _currentName ?? userData.name,
                          _currentStrength ?? userData.strength
                      );
                      Navigator.pop(context);
                    }
                  },
                )
              ],
            ),
          );
        } else{
          return Loading();
        }
      }
    );
  }
}
