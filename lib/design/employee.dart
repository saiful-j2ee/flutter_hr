

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  String gender="Male";
  @override
  Widget build(BuildContext context) {

    var _dateOfBirthController;
    return Scaffold(
      appBar: AppBar(title: Text("Employee Form",textAlign: TextAlign.center,),
      ),
        body:Form(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    "Employee Form",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,color:Colors.deepOrange
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                 // controller: _usernameController,
                  // controller: _usernameController,
                  decoration: InputDecoration(

                      suffixIcon: Icon(
                        Icons.supervisor_account_sharp,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "First Name"),
                ),
              ),Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                 // controller: _usernameController,
                  // controller: _usernameController,
                  decoration: InputDecoration(

                      suffixIcon: Icon(
                        Icons.supervisor_account_sharp,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Last Name"),
                ),
              ),Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                 // controller: _usernameController,
                  // controller: _usernameController,
                  decoration: InputDecoration(

                      suffixIcon: Icon(
                        Icons.supervisor_account_sharp,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: _dateOfBirthController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () => _selectDate(context),
                      ),
                      border: UnderlineInputBorder(),
                      labelText: "Date of Birth"),
                ),
              ),
              Padding(

                padding: const EdgeInsets.all(8.0),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Gender :",textAlign: TextAlign.justify,),
                    Row(
                      children: [
                        Radio(value: "Male", groupValue: gender, onChanged: (val){
                          gender=val.toString();
                          print(val);
                          setState(() {

                          });
                        }),
                        Text("Male"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: "Female", groupValue: gender, onChanged: (val){
                          gender=val.toString();
                          print(val);
                          setState(() {

                          });
                        }),
                        Text("Female"),
                      ],
                    ),
                  ],
                ),

              ),











              //
              // Padding(
              //   padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              //   child: TextFormField(
              //    // controller: _usernameController,
              //     // controller: _usernameController,
              //     decoration: InputDecoration(
              //
              //         suffixIcon: Icon(
              //           Icons.supervisor_account_sharp,
              //           size: 20.0,
              //         ),
              //         border: OutlineInputBorder(),
              //         labelText: "Username"),
              //   ),
              // ),Padding(
              //   padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              //   child: TextFormField(
              //    // controller: _usernameController,
              //     // controller: _usernameController,
              //     decoration: InputDecoration(
              //
              //         suffixIcon: Icon(
              //           Icons.supervisor_account_sharp,
              //           size: 20.0,
              //         ),
              //         border: OutlineInputBorder(),
              //         labelText: "Username"),
              //   ),
              // ),Padding(
              //   padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              //   child: TextFormField(
              //    // controller: _usernameController,
              //     // controller: _usernameController,
              //     decoration: InputDecoration(
              //
              //         suffixIcon: Icon(
              //           Icons.supervisor_account_sharp,
              //           size: 20.0,
              //         ),
              //         border: OutlineInputBorder(),
              //         labelText: "Username"),
              //   ),
              // ),Padding(
              //   padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              //   child: TextFormField(
              //    // controller: _usernameController,
              //     // controller: _usernameController,
              //     decoration: InputDecoration(
              //
              //         suffixIcon: Icon(
              //           Icons.supervisor_account_sharp,
              //           size: 20.0,
              //         ),
              //         border: OutlineInputBorder(),
              //         labelText: "Username"),
              //   ),
              // ),Padding(
              //   padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              //   child: TextFormField(
              //    // controller: _usernameController,
              //     // controller: _usernameController,
              //     decoration: InputDecoration(
              //
              //         suffixIcon: Icon(
              //           Icons.supervisor_account_sharp,
              //           size: 20.0,
              //         ),
              //         border: OutlineInputBorder(),
              //         labelText: "Username"),
              //   ),
              // ),Padding(
              //   padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              //   child: TextFormField(
              //    // controller: _usernameController,
              //     // controller: _usernameController,
              //     decoration: InputDecoration(
              //
              //         suffixIcon: Icon(
              //           Icons.supervisor_account_sharp,
              //           size: 20.0,
              //         ),
              //         border: OutlineInputBorder(),
              //         labelText: "Username"),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              //   child: TextFormField(
              //    // controller: _emailController,
              //     // controller: _emailController,
              //     decoration: InputDecoration(
              //         suffixIcon: Icon(
              //           Icons.mark_email_read,
              //           size: 20.0,
              //         ),
              //         border: OutlineInputBorder(),
              //         labelText: "Email"),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
              //   child: TextFormField(
              //   //  controller: _passwordController,
              //     // controller: _passwordController,
              //     decoration: InputDecoration(
              //         suffixIcon: Icon(
              //           Icons.password,
              //           size: 20.0,
              //         ),
              //         border: OutlineInputBorder(),
              //         labelText: "Password"),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(30.0),

                child: ElevatedButton(
                    onPressed: () {

                      //employeeForm();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );
                      // save();
                    },
                    child: Text("submit")),
              ),
            ],
          ),
        )
    );
  }

  home() {}
}
