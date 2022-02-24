

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySingUp extends StatefulWidget {
  const MySingUp({Key? key}) : super(key: key);

  @override
  _MySingUpState createState() => _MySingUpState();
}

class _MySingUpState extends State<MySingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body:Form(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Text(
                  "Registration Form",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                     ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              child: TextFormField(
               // controller: _usernameController,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.supervisor_account_sharp,
                      size: 20.0,
                    ),
                    border: UnderlineInputBorder(),
                    labelText: "Username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              child: TextFormField(
               // controller: _emailController,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.mark_email_read,
                      size: 20.0,
                    ),
                    border: UnderlineInputBorder(),
                    labelText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              child: TextFormField(
               // controller: _passwordController,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.password,
                      size: 20.0,
                    ),
                    border: UnderlineInputBorder(),
                    labelText: "Password"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),

              child: ElevatedButton(
                  onPressed: () {
                   // save();
                  },
                  child: Text("submit")),
            ),
          ],
        ),
      ));

  }
}





















// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
// class MySingUp extends StatefulWidget {
//   const MySingUp({Key? key}) : super(key: key);
//
//
//
//   @override
//   _MySingUpState createState() => _MySingUpState();
// }
//
// class _MySingUpState extends State<MySingUp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//       ),
//
//       body: Center(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 25.0),
//               child: Text(
//                 "Login Here",
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     labelText: 'username',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                     labelText: 'password',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: ElevatedButton(
//                 onPressed: () {
//
//                 },
//                 child: Text("Submit"),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 60.0),
//               child: Row(
//                 children: [
//                   Text('Does not have account?'),
//                   TextButton(
//                       onPressed: () {
//                         // Navigator.of(context).push(MaterialPageRoute(
//                         //     builder: (context) => MySingUp()));
//                       },
//                       child: Text("registration here")),
//                 ],
//               ),
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }

























//       Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/login.jpg'),fit: BoxFit.cover)),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//       ),
//
//       );
//       body: Stack(
//         children: [
//           Container(
//             padding: EdgeInsets.only(left: 35,top: 180),
//             child: Text('welcome Signup Page',style:TextStyle(color: Colors.blue,fontSize: 33),),
//
//           ),
//           Container(
//             padding: EdgeInsets.only( top: MediaQuery.of(context).size.height*0.4,
//                 right: 35,left: 35),
//             child: Column(
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                       hintText: 'Email',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10)
//                       )
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                       hintText: 'Password',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10)
//                       )
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 // TextButton(onPressed: () {
//                 //   Navigator.of(context).push(MaterialPageRoute(
//                 //       builder: (context) => signup()));
//                 // }, child: tx),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Row(
//                   children: [
//                     TextButton(
//                       child: const Text(
//                         'login',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                       onPressed: () {
//                         //signup screen
//
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => MyLogin()),
//                         );
//                       },
//                     )
//
//                   ],
//                 ),
//
//               ],
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
//
