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
  void Data() {
    print("Call Function");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  //  default Blue
                  onPressed: Data,
                  onLongPress: () {
                    print("double click");
                  },
                  // onPressed:
                  // (){print("");
                  // },  //Function Call
                  child: Container(
                    width: 100,
                    child: Row(
                      children: [
                        Icon(Icons.star),
                        Text("Click me"),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      //Style changing
                      onPrimary: Colors
                          .black, // onprimary properties =>text color change
                      primary: Colors
                          .red, //primary change color ElevatedButton Change bg
                      // elevation: 100,
                      shadowColor: Colors.cyanAccent,
                      side: BorderSide(
                        //side Button Border
                        width: 1,
                        color: Colors.blue,
                      ),
                      shape: RoundedRectangleBorder(
                          //border Radius set
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit_sharp),
                label: Text("kdjdkdkkdk")),
            IconButton(
              //bedefault color =>no
              icon: Container(
                  color: Colors.red,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              onPressed: () {},
            ),
            TextButton(
                //bg color , text blue

                onPressed: () {},
                 style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.pink;
                }
                  if (states.contains(MaterialState.hovered)) {
                  return Colors.green;
                }
                return Colors.brown; // Defer to the widget's default.
              })),
                child: Text("Click"))
          ],
        ),
      ),
    );
  }
}
