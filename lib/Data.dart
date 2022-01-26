// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
class MyData extends StatefulWidget {


  @override
  _MyDataState createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {

  @override
  Widget build(BuildContext context) {
    // var  data = ModalRoute.of(context)!.settings.arguments as Map;
    // print(data);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text("fxfd fdf"),
          Text("sjbjbsd"
          )
        ],
      
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Class Nav"),
    //   ),
    //   body: Container(
    //     child: Text(data["name"]),
    //   ),

    // );
    

  }
}