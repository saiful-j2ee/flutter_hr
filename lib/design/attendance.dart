import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
              "clock",style: TextStyle(fontSize: 20, ),
          ),
          DigitalClock(
            digitAnimationStyle: Curves.elasticOut,
            is24HourTimeFormat: false,
            areaDecoration: BoxDecoration(
              color: Colors.transparent,
            ),
            hourMinuteDigitTextStyle: TextStyle(color: Colors.blue),
          )


        ],
        )



      ),

    );
  }
}
