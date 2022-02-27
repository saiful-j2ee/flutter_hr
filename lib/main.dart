import 'package:flutter/material.dart';
import 'package:hr_project/home.dart';
import 'package:hr_project/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  initialRoute: 'home',
    routes: {
      'login':(context)=>MyLogin(),
      'home':(context)=>Home(),

    },
  ));
}

