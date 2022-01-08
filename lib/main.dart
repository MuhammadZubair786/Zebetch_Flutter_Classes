import 'package:flutter/material.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hello World")),
      ),
      body: SingleChildScrollView(
        child: Container( // Widgets
        color: Colors.black,
        margin: EdgeInsets.only(left : 100,right:40,top:400 ),//Outside space
        padding: EdgeInsets.only(left: 100,top: 400),
        width:400,
        // padding: 20,//inside space
           child: Text(
              "Hello",
              style: TextStyle(color: Colors.pink, fontSize: 40,fontFamily: "Arial"),
            )
    ),
      )
    ));
  }
}
