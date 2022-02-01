import 'package:flutter/material.dart';

import 'app.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar  (  title: Center(child: Text("Api Integration")),),
        body: app_integration(),
      ),
    );
  }
}