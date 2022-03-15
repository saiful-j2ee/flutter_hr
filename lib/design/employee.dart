import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  late File imageFile;
  File? _image;

  String gender = "Male";
  String date = "";
  DateTime selectedDate = DateTime.now();

  final _picker = ImagePicker();

  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
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
                child: _image != null
                    ? Image.file(_image!, fit: BoxFit.cover)
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
              ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                },
                child: Text("date of birth"),
              ),
              Text(
                  "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                    onPressed: () {
                      //employeeForm();
                      // Navigator.push(
                      //   context,
                      //   // MaterialPageRoute(builder: (context) => home()),
                      // );
                      // save();
                    },
                    child: Text("submit")),
              ),
            ],
          ),
        ));
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}
