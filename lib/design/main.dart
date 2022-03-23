// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:hr_project/design/home.dart';
import 'package:hr_project/design/login.dart';

import 'attendance.dart';
import 'employee.dart';
import 'employeetable.dart';
import 'job_info.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  initialRoute: 'employee',
    routes: {
      'login':(context)=>MyLogin(),
       'home':(context)=>Home(),
       'employee':(context)=>Employee(),
       'job_info':(context)=>Job(),
      'employeetable':(context)=>EmployeeTable(),
      'attendance':(context)=>Attendance()


  },
  ));
}

