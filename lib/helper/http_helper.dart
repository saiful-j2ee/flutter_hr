import 'dart:convert';

import 'package:hr_project/model/employee.dart';
import 'package:hr_project/model/employee_payload.dart';

 import 'package:http/http.dart' as http;


import '../model/employee.dart';
import 'constant.dart';

Map<String, String> requestHeaders = {
  'Content-type': 'application/json',
};

 Future<http.Response> signUp(Employee employee) async {
   final response = await http.post(Uri.parse(registerApi),
       headers: requestHeaders, body: jsonEncode(employee.toMap()));

  return response;

 }

Future<http.Response> signIn(EmployeePayload employee) async {
  final response = await http.post(Uri.parse(loginApi),
      headers: requestHeaders, body: jsonEncode(employee.toMap()));
  return response;

}

Future<http.Response> save(Employee employee) async {
  final response = await http.post(Uri.parse(registerApi),
      headers: requestHeaders, body: jsonEncode(employee.toMap()));

  return response;

}


// Future<http.Response> getTotalInfo() async {
//   final response = await http.get(Uri.parse(totalInfoApi),
//       headers: requestHeaders);
//   return response;
//
// }