import 'package:flutter/material.dart';
import 'package:worldtime/pages/choose_location.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    // specifying what to set as initial route to load up
    initialRoute: '/',
    // routes are ike maps in JS or dictionary in python having key-value pair
    // routes must start with / (forward slash) and must return
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation()
    },
  ));
}
