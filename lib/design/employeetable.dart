import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {runApp(EmployeeTable());}

class EmployeeTable extends StatefulWidget {
  @override
  _DataTableExample createState() => _DataTableExample();
}

class _DataTableExample extends State<EmployeeTable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter DataTable Example'),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(children: <Widget>[
              Center(
                  child: Text(
                    'People-Chart',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
              DataTable(
                columns:[
                  DataColumn(label: Text(
                      'ID',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  )),
                  DataColumn(label: Text(
                      'First Name',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  )),
                  DataColumn(label: Text(
                      'Last name',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  )),
                  DataColumn(label: Text(
                      'Email',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  )),
                  DataColumn(label: Text(
                      'Mobile',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  )),
                  DataColumn(label: Text(
                      'Gender',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  )),
                  DataColumn(label: Text(
                      'Date of Birth',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  )),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('Stephen')),
                    DataCell(Text('Actor')),
                    DataCell(Text('Actor')),
                    DataCell(Text('Actor')),
                    DataCell(Text('Actor')),
                    DataCell(Text('Actor')),


                  ]),


                ],
              ),
            ]),
          )
      ),
    );
  }
}