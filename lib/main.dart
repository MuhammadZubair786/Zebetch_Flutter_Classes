import 'package:flutter/material.dart';
import 'package:navclass/Data.dart';
import 'package:navclass/tab.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: tabBar(),
      // routes: {
      //   "/Home" : (context)=>MyData()
        
      //         },
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  // var data = -1;
  var email="zubair";
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Welcome App'),
            ),
            // body: Column(children: [
            //   ElevatedButton(
            //         onPressed: () {
            //           Navigator.pushNamed(context, "/Home",arguments: {
            //             "name" :email,
            //             "age":12

            //           });
                    
            //           // Navigator.push(context,
            //           //     MaterialPageRoute(builder: (context) => MyData()));
            //         },
            //         child: Text("Move")),
              
            // ])
            
            ));
  }
}
