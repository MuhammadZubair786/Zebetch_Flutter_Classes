// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({ Key? key }) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
           Text("Home Page"),
          Text("Smit"),

        ],
      ),
      
    );
  }
}