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
    return MaterialApp(
      
      home  :  Scaffold(
        body: Container(
            margin: EdgeInsets.only(top: 20),
              height: 1200,
              color: Colors.yellow,
              child:SingleChildScrollView(
                child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/download.jfif"),
                        Image.asset("download1.jfif")

                          // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC0C6TQQhjWKQFykZXpMyCN8R8BPku6PJeUA&usqp=CAU")
                      //  Image.network("https://www.lifewire.com/thmb/oI3kX3xXncn2QiOIzJvjG138Npk=/1500x1000/filters:no_upscale():max_bytes(150000):strip_icc()/WhatisaPCledephoto-b22a81997d83442eac276834e935922f.jpg",height: 300,width: 100,)
                       

                      ],

                    ),
              ),
              ),
              ),
        );

          
        
      

    // );
  }
}