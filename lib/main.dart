import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}


class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title: Text("Class Assigment"),),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.yellow,
                    child: Center(child: Text("Row 1")),
                  ),
                  // SizedBox(width: 20), //space
                   Container(
                    height: 200,
                    width: 180,
                    color: Colors.blue,
                    child: Icon(Icons.star)
                    // child: Text("Row 2"),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    color: Colors.black,
                    width: 360,
                    height: 200,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://img.freepik.com/free-photo/abstract-grunge-decorative-relief-navy-blue-stucco-wall-texture-wide-angle-rough-colored-background_1258-28311.jpg?size=626&ext=jpg"),
                      // radius: 10,
                     
                    ),
                  
                  )]
              ),

              Row(
                 children: [
                  Container(
                    height: 200,
                    width: 180,
                    color: Colors.purple,
                  ),
                   Container(
                    height: 200,
                    width: 180,
                    color: Colors.green,
                  )
                ],
              ),

            ],
          ),
        ) ,
      ),
    

    );
  
  }
}
