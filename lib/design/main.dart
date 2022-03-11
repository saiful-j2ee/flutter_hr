import 'package:flutter/material.dart';
import 'package:hr_project/design/home.dart';
import 'package:hr_project/design/login.dart';

import 'employee.dart';
import 'job_info.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  initialRoute: 'home',
    routes: {
      'login':(context)=>MyLogin(),
       'home':(context)=>Home(),
       'employee':(context)=>Employee(),
       'job_info':(context)=>Job(),


  },
  ));
}

