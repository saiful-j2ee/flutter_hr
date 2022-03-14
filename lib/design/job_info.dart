import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Job extends StatelessWidget {
  const Job({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("hello "),),
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
                        onChanged: (val){
                          print(val);


                        },
                        // controller: _usernameController,
                        // controller: _usernameController,
                        decoration: InputDecoration(

                            suffixIcon: Icon(
                              Icons.perm_identity,
                              size: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "User Id"),
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
                            labelText: "Username"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                      child: TextFormField(
                        // controller: _emailController,
                        // controller: _emailController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.mark_email_read,
                              size: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Email"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                      child: TextFormField(
                        //  controller: _passwordController,
                        // controller: _passwordController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.mobile_friendly_outlined,
                              size: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Mobile"),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                      child: TextFormField(
                        //  controller: _passwordController,
                        // controller: _passwordController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.money_off,
                              size: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "basic salary"),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                      child: TextFormField(
                        //  controller: _passwordController,
                        // controller: _passwordController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.home,
                              size: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "House Rent"),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                      child: TextFormField(
                        //  controller: _passwordController,
                        // controller: _passwordController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.emoji_transportation,
                              size: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Transport "),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                      child: TextFormField(
                        //  controller: _passwordController,
                        // controller: _passwordController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.medical_services,
                              size: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Medical allowance"),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                      child: TextFormField(
                        //  controller: _passwordController,
                        // controller: _passwordController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.monetization_on_outlined,
                              size: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "bonus"),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                      child: TextFormField(
                        //  controller: _passwordController,
                        // controller: _passwordController,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.monetization_on_outlined,
                              size: 20.0,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Total"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),

                      child: ElevatedButton(
                          onPressed: () {

                            //employeeForm();
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => job()),
                            // );
                            // save();
                          },
                          child: Text("submit")),
                    ),
                  ],
                ),
              )

          ),
        ),

    );
  }
}
