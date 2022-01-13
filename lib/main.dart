import 'package:class_five/data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   var data;
//   List a1 = ["omer","asad",""];

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: ListView( //Get Every Child full Row
//           children :[
//           RedContainer("Red Data","data"), //widgets  a => b
//           SizedBox(height: 10,),

//            PinkContainer(data = "Pink data 2"),
//           SizedBox(height: 10,),

          
//            BrownContainer(),  //Widgets Type  =>User Defined Widgets
//           SizedBox(height: 10,),
//            PinkContainer(data = "Pink Data"),

       
          
//           ]
        
//         )
//       )
//     );
//   }
 

//   Container BrownContainer() {
//     return Container(
//           color: Colors.brown,
//           height: 100,
//           width: 0,
//           child: Text("Class 5"),
        
//         );
//   }

//   Container PinkContainer(String  e1) {
//     return Container(
//           color: Colors.pink,
//           height: 100,
//           width: 0,
//           child: Text(e1),
        
//         );
//   }

//   Container RedContainer(var e,data2) {
//     return Container(
//           color: Colors.red,
//           height: 100,
//           width: 0,
//           child:SingleChildScrollView(
//             child: Container(
//               child: Column(
//                 children: [
//                   Column(
//                     children: [
                      
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(e),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(28.0),
//                     child: Text(data2),
//                   )
//                 ],

//               ),
//             ),
//           )
          
        
//         );
//   }
// }