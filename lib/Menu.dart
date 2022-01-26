// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({ Key? key }) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
           Text("Menu Page"),
          Text("Hiast"),

        ],
      ),
      
    );
  }
}