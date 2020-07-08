import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterfirebase/models/brew.dart';
import 'package:flutterfirebase/screens/home/UserCard.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {

    final users = Provider.of<List<Brew>>(context) ?? [];

    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return UserCard(brew: users[index]);
        },
    );
  }
}

