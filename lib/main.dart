import 'package:flutter/material.dart';
import 'package:pokedex/home/home.dart';
import 'package:pokedex/login/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {'/': (context) => Home(), '/home': (context) => Home()},
  ));
}
