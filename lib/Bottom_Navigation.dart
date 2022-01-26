// ignore: file_names
// ignore_for_file: file_names


import 'package:class_bottom/Home.dart';
import 'package:class_bottom/Login.dart';
import 'package:class_bottom/Menu.dart';
import 'package:flutter/material.dart';

class MyData extends StatefulWidget {
  const MyData({ Key? key }) : super(key: key);

  @override
  _MyDataState createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  @override

  var tabs = [
      // Container(child: Text("Home"),),
      //  Container(child: Text("Loginhgbwhegwgeh"),),
      // Container(child: Text("Main Page"),)
     Home_Page(),
     Login(),
     MenuPage()

  ];//Moduloes

  int currentScreen =1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("djdjj"),
      ),
      body: SingleChildScrollView(
        child: tabs[currentScreen],
        

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        items: [
          BottomNavigationBarItem(
           label: "Home Page", icon: Icon(Icons.home)

          ),
             BottomNavigationBarItem(
           label: "Login Page", icon: Icon(Icons.verified_user)

          ),
             BottomNavigationBarItem(
           label: "Main Page GSGS", icon: Icon(Icons.pages)

          ),
          
        ],
        onTap: (index){
          setState(() {
             currentScreen = index;
            
          });
        },
      ),

    );
  }
}