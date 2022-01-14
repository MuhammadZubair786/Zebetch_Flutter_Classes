import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Column(children: [
      NewData(Colors.yellow,Icons.ac_unit,Colors.deepPurple,"Container 1"),
     SizedBox(height: 20,),
      NewData(Colors.blue,Icons.accessibility_rounded,Colors.amberAccent,"Container 2"), 
         SizedBox(height: 20,),
        NewData(Colors.pink,Icons.zoom_in_sharp,Colors.blue,"Container 3"),
       
      SizedBox(height: 20,),
      NewData(Colors.red,Icons.batch_prediction,Colors.brown,"Container 4"),
      
      ])));
  }

  Container NewData(var bg,Ico,iconcol,Text1) {
   return  Container(
      color: bg,
      height: 100,
      width: 200,
      child: Column(
        children: [
          Icon(
            Ico,
            color: iconcol,
          ),
          Text(Text1)
        ],
      ),
    );
  }
}
