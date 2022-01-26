import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer Class"),

        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                     width: 300.0,
              height: 1000.0,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/img2.jpeg"))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Drawer Head"),
                        Text("Drawer Head"),
                    ],
                  ),
                ),
                
              ),
              
            ],

          ),
        ),
      ),
      
    );
  }
}