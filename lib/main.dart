import 'package:flutter/material.dart';
import 'package:hr_project/home.dart';
import 'package:hr_project/login.dart';

import 'employee.dart';
import 'job_info.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  initialRoute: 'login',
    routes: {
      'login':(context)=>MyLogin(),
       'home':(context)=>Home(),
       'employee':(context)=>WellFormed(),
       'job_info':(context)=>Job(),


  },
  ));
}

