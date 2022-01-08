import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: Scaffold(
        // backgroundColor: Colors.red,
        body: 
           Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(top : 100.0,left: 40),
              child: SafeArea(
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.yellow,
                  child: Text("hello nhdbhdbhsbds shdvhsvd",
                  style: TextStyle(color: Colors.blue,fontSize: 40,backgroundColor: Colors.green),))),
            ),
          ),
        ),
      
    );
  }
}
