// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Employee extends StatelessWidget {
//   // MyCardWidget({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//           width: 300,
//           height: 200,
//           padding: new EdgeInsets.all(10.0),
//           child: Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15.0),
//             ),
//             color: Colors.red,
//             elevation: 10,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 const ListTile(
//                   leading: Icon(Icons.album, size: 60),
//                   title: Text(
//                       'Sonu Nigam',
//                       style: TextStyle(fontSize: 30.0)
//                   ),
//                   subtitle: Text(
//                       'Best of Sonu Nigam Music.',
//                       style: TextStyle(fontSize: 18.0)
//                   ),
//                 ),
//                 ButtonBar(
//                   children: <Widget>[
//                     RaisedButton(
//                       child: const Text('Play'),
//                       onPressed: () {/* ... */},
//                     ),
//                     RaisedButton(
//                       child: const Text('Pause'),
//                       onPressed: () {/* ... */},
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }

// import 'dart:math';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hr_project/helper/http_helper.dart';
// import 'package:hr_project/login.dart';
// import 'package:hr_project/model/employee.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
//
// class Employee extends StatefulWidget {
//   const Employee({Key? key}) : super(key: key);
//
//   @override
//   _MySingUpState createState() => _MySingUpState();
// }
//
// class _MySingUpState extends State<Employee> {
//   final _imageController=Uri.file("");
//   final _usernameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//
//   signup() async {
//
//     String username = _usernameController.value.text;
//     String email = _emailController.value.text;
//     String password = _passwordController.value.text;
//
//     var employee = Employee(
//         image:image,
//         username: username,
//         email: email,
//         password: password);
//
//     print(employee);
//
//
//
//
//     signUp(employee).then((res) {
//       print(res.body);
//     });
//
//     try {} catch (e) {
//
//       Fluttertoast.showToast(
//           msg: "$e",
//           toastLength: Toast.LENGTH_LONG,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           fontSize: 16.0);
//     }
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Signup page"),
//         ),
//         body:Form(
//           child: ListView(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Center(
//                   child: Text(
//                     "Registration Form",
//                     style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
//                 child: TextFormField(
//                   controller: _usernameController,
//                   // controller: _usernameController,
//                   decoration: InputDecoration(
//                       suffixIcon: Icon(
//                         Icons.supervisor_account_sharp,
//                         size: 20.0,
//                       ),
//                       border: UnderlineInputBorder(),
//                       labelText: "Username"),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
//                 child: TextFormField(
//                   controller: _emailController,
//                   // controller: _emailController,
//                   decoration: InputDecoration(
//                       suffixIcon: Icon(
//                         Icons.mark_email_read,
//                         size: 20.0,
//                       ),
//                       border: UnderlineInputBorder(),
//                       labelText: "Email"),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
//                 child: TextFormField(
//                   controller: _passwordController,
//                   // controller: _passwordController,
//                   decoration: InputDecoration(
//                       suffixIcon: Icon(
//                         Icons.password,
//                         size: 20.0,
//                       ),
//                       border: UnderlineInputBorder(),
//                       labelText: "Password"),
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.all(30.0),
//
//                 child: ElevatedButton(
//                     onPressed: () {
//
//                       signup();
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) =>  MyLogin()),
//                       );
//                       // save();
//                     },
//                     child: Text("submit")),
//               ),
//             ],
//           ),
//         ));
//
//   }
// }



















