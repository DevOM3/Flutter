import 'package:flutter/material.dart';
import 'package:flutterfirebase/models/brew.dart';

class UserCard extends StatelessWidget {
  final Brew brew;

  UserCard({ this.brew });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 7.1),
      child: Card(
        margin: EdgeInsets.fromLTRB(11.1, 7.0, 11.1, 1.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.1,
            backgroundColor: Colors.brown[brew.strength],
            child: Icon(
              Icons.free_breakfast,
              color: Colors.white,
            ),
          ),
          title: Text(brew.name),
          subtitle: Text('Sugar : ${brew.sugar} cubes'),
        ),
      ),
    );
  }
}

