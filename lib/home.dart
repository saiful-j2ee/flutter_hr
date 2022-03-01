
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("drawer demo"),
        backgroundColor: Colors.deepOrange,
      ),
      drawer:Drawer(
        child:ListView(
        children:<Widget> [
          DrawerHeader(
              decoration:BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.deepOrange,Colors.orangeAccent

              ])
              ),

              child:Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      child: Padding(padding: EdgeInsets.all(0.0),
                       child: Image.asset("assets/human1.png",height: 100,width: 100,),),

                    ),
                    Text("Hr Management")
                  ],
                ),
              ) ),

          Custom(Icons.person, "Employee profile", (){}),
          Custom(Icons.info, "Job information", (){}),
          Custom(Icons.access_alarm, "Attendance", (){}),
          Custom(Icons.money, "Salary", (){}),
          Custom(Icons.logout, "Logout", (){}),







        ],
          
        ) ,) ,
    );
  }
}

class Custom extends StatelessWidget {
  IconData icons;
  String text;
  Function onTap;


  Custom(this.icons, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))
        ),
        child: InkWell(
          splashColor:Colors.deepOrange ,
          onTap: (){},
          child: Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
               Row(
                 children: <Widget>[
                   Icon(icons),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(text,style: TextStyle(fontSize: 16),),
                   ),

                 ]
               ),
                Icon(Icons.arrow_right)

              ],
            ),
          ),
        ),
      ),
    );
  }
}























// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Home extends StatefulWidget {
//  // const Home({Key? key}) : super(key: key);
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         title: const Text('Drawer Demo'),
//
//     ),
//
//       drawer: Drawer(
//         child: ListView(
//
//           padding: EdgeInsets.zero,
//           children:  <Widget>[
//             ima
//
//
//
//
//
//             DrawerHeader(
//
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.message),
//               title: Text('Employee'),
//             ),
//             ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text('salary'),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('attendance'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class D extends StatelessWidget {
//   const D({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
// // Important: Remove any padding from the ListView.
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Header',
//              // style: textTheme.headline6,
//             ),
//           ),
//           Divider(
//             height: 1,
//             thickness: 1,
//           ),
//           ListTile(
//             leading: Icon(Icons.favorite),
//             title: Text('Item 1'),
//             //selected: _selectedDestination == 0,
//             //onTap: () => selectDestination(0),
//           ),
//           ListTile(
//             leading: Icon(Icons.delete),
//             title: Text('Item 2'),
//            // selected: _selectedDestination == 1,
//             //onTap: () => selectDestination(1),
//           ),
//           ListTile(
//             leading: Icon(Icons.label),
//             title: Text('Item 3'),
//            // selected: _selectedDestination == 2,
//            // onTap: () => selectDestination(2),
//           ),
//           Divider(
//             height: 1,
//             thickness: 1,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Label',
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.bookmark),
//             title: Text('Item A'),
//            // selected: _selectedDestination == 3,
//             //onTap: () => selectDestination(3),
//           ),
//         ],
//       ),
//     );
//   }
// }


