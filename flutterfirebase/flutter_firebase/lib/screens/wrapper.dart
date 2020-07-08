import 'package:flutter/material.dart';
import 'package:flutterfirebase/models/user.dart';
import 'package:flutterfirebase/screens/home/authenticate/authentication.dart';
import 'package:flutterfirebase/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return user == null ? Authenticate() : Home();
  }
}
