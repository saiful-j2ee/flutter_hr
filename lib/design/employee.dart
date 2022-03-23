import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hr_project/helper/constant.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  Dio dio = new Dio();
  var imageFile;
  var image;
  TextEditingController fname= new TextEditingController();
  TextEditingController lname= new TextEditingController();

  TextEditingController email= new TextEditingController();
   TextEditingController dob=new TextEditingController();
  TextEditingController phone= new TextEditingController();
   TextEditingController password= new TextEditingController();
   TextEditingController paddress= new TextEditingController();
   TextEditingController basicsalary= new TextEditingController();
   TextEditingController houserent= new TextEditingController();
   TextEditingController transport= new TextEditingController();
   TextEditingController medical= new TextEditingController();
   TextEditingController salary= new TextEditingController();


  String gender = "Male";
  String date = "";
  //DateTime selectedDate = DateTime.now();

  Uri apiUrl = Uri.parse(addEmployeeApi);

  Future<Map<String, dynamic>?> _uploadImage(
      File image) async {
    setState(() {
      //pr.show();
    });

    final mimeTypeData =
    lookupMimeType(image.path, headerBytes: [0xFF, 0xD8])?.split('/');

    // Intilize the multipart request
    final imageUploadRequest = http.MultipartRequest('POST', apiUrl);

    final file = await http.MultipartFile.fromPath('file', image.path,
        contentType: MediaType(mimeTypeData![0], mimeTypeData[1]));
    imageUploadRequest.files.add(file);
    imageUploadRequest.fields['fname'] = fname.value.text;
    imageUploadRequest.fields['lname'] = lname.value.text;



    try {
      final streamedResponse = await imageUploadRequest.send();
      final response = await http.Response.fromStream(streamedResponse);
      if (response.statusCode != 200) {

        Fluttertoast.showToast(
            msg: "Advertise Successfully published",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0
        );
        return null;
      }
      final Map<String, dynamic> responseData = json.decode(response.body);
      Fluttertoast.showToast(
          msg: "Advertise failed to published",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );

      return responseData;
    } catch (e) {
      print(e);
      final snackBar = SnackBar(
          content: const Text('Yay'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change.
            },
          ));

      return null;
    }
  }
  
  // saveEmployee() async{
  //
  //   var map = new Map<String, dynamic>();
  //   map['fname'] = fname.value.text;
  //
  //   //map['lname'] = lname.value.text;
  //   map['email'] = email.value.text;
  //   map['phone'] = phone.value.text;
  //   map['gender'] = gender;
  //   map['dob'] = dob.value.text;
  //   map['password'] = password;
  //   map['basicsalary'] = salary;
  //   map['houserent'] = houserent;
  //   map['transport'] = transport;
  //   map['medical'] = medical;
  //   map['salary'] = salary;
  //
  //   print(map);
  //   //String _body = model.toJson();
  //   try{
  //     final response = await http.post(Uri.parse(registerApi),
  //       body: map,
  //     );
  //
  //     if (response.statusCode == 200){
  //       Fluttertoast.showToast(
  //           msg: "Advertise successFully published",
  //           toastLength: Toast.LENGTH_LONG,
  //           gravity: ToastGravity.CENTER,
  //           timeInSecForIosWeb: 1,
  //           backgroundColor: Colors.green,
  //           textColor: Colors.white,
  //           fontSize: 16.0
  //       );
  //     }
  //     else{
  //       Fluttertoast.showToast(
  //           msg: "Registration Failed",
  //           toastLength: Toast.LENGTH_LONG,
  //           gravity: ToastGravity.CENTER,
  //           timeInSecForIosWeb: 1,
  //           backgroundColor: Colors.red,
  //           textColor: Colors.white,
  //           fontSize: 16.0
  //       );
  //     }
  //
  //
  //
  //   }catch(e){
  //     log(e.toString());
  //     Fluttertoast.showToast(
  //         msg: "$e",
  //         toastLength: Toast.LENGTH_LONG,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0
  //     );
  //   }
  // }

  void _startUploading() async {
    if (image != null) {
      final Map<String, dynamic>? response =
      await _uploadImage(image);

      // Check if any error occured
      if (response == null) {
        // pr.hide();
        //messageAllert('User details updated successfully', 'Success');

      }
    } else {
      //messageAllert('Please Select a profile photo', 'Profile Photo');
      final snackBar = SnackBar(
          content: const Text('Yay! A SnackBar!'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change.
            },
          ));
    }
  }



  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
  }


  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dob.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    var _dateOfBirthController;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Employee Form",
            textAlign: TextAlign.center,
          ),
        ),
        body: Form(
          child: ListView(
            children: [
              ElevatedButton(
                child: const Text('Select An Image'),
                onPressed: _openImagePicker,
              ),
              const SizedBox(height: 35),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 300,
                color: Colors.grey[300],
                child: image != null
                    ? Image.file(image!, fit: BoxFit.cover)
                    : const Text('Please select an image'),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    "Employee Form",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(

                controller: fname,
                  // controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.supervisor_account_sharp,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "First Name"),
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
                      labelText: "Last Name"),
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
                      labelText: "Email"),
                ),
              ), Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                   controller: phone,
                  // controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone_android_outlined,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Mobile"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Gender :",
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      children: [
                        Radio(
                            value: "Male",
                            groupValue: gender,
                            onChanged: (val) {
                              gender = val.toString();
                              print(val);
                              setState(() {});
                            }),
                        Text("Male"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: "Female",
                            groupValue: gender,
                            onChanged: (val) {
                              gender = val.toString();
                              print(val);
                              setState(() {});
                            }),
                        Text("Female"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: dob,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () => _selectDate(context),
                      ),
                      border: UnderlineInputBorder(),
                      labelText: "Join date "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: phone,
                  // controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone_android_outlined,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: phone,
                  // controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone_android_outlined,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Basic Salary"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: phone,
                  // controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone_android_outlined,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "HouseRent Alowance"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: phone,
                  // controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone_android_outlined,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Transport Alowance"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: phone,
                  // controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone_android_outlined,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Medical Alowance"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 8),
                child: TextFormField(
                  controller: phone,
                  // controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.phone_android_outlined,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(),
                      labelText: "Total Salary"),
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     _selectDate(context);
              //   },
              //   child: Text("date of birth"),
              // ),
              // Text(
              //    controll
              //     "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                    onPressed: () {
                      print(fname.value.text);
                      print(gender);
                      _startUploading();
                      print(this.image);
                      //employeeForm();
                      // Navigator.push(
                      //   context,
                      //   // MaterialPageRoute(builder: (context) => home()),
                      // );
                       //save(Employee employee);
                    },
                    child: Text("submit")),
              ),
            ],
          ),
        ));
  }

  // _selectDate(BuildContext context) async {
  //   final DateTime? selected = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     firstDate: DateTime(2010),
  //     lastDate: DateTime(2025),
  //   );
  //   if (selected != null && selected != selectedDate)
  //     setState(() {
  //       selectedDate = selected;
  //     });
  // }
}
