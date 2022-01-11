import 'dart:ui';

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

    var a =10;
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.dashboard)],
           elevation: 100.0,
           leading: Icon(Icons.menu),
        ),
        body:Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.dashboard),
              //  Image.network("")
             
               
               title: Container(
                 color: Colors.yellowAccent,
                 child: Text("Assignmnet")),
               subtitle: Row(
                 children: [
                   Icon(Icons.star,color: Colors.red,size: 20,),
                   Text("djdjdjdjjdj ")

                 ],
               ),
               trailing: Text(r"Zubair  $ 10"),
            ),
             ListTile(
              leading: Icon(Icons.date_range),
              //  Image.network("")
             
               
               title: Container(
                 color: Colors.yellowAccent,
                 child: Text("Assignmnet")),
               subtitle: Row(
                 children: [
                   Icon(Icons.star,color: Colors.pink,size: 20,),
                   Text("djdjdjdjjdj "+r"10")

                 ],
               ),
               trailing: Text(r"$10"),
            ),
            

          ],
        )
        ,
        // child: Column(
        //   children: [
        //     Text("djdjjdj",style: TextStyle(fontSize: 40,fontFamily: "Algerian")),
        //  Text("djdjjdj",style: TextStyle(fontFamily: "Data",fontSize: 40)),

        //   ],
        // ),

      )
      
    )
      )
    );
    // return Container(
    //   child: Text("djdjjdj",style: TextStyle(fontFamily: " TextStyle"))
      
    // );
  }
}