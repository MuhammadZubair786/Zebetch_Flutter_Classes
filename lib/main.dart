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

  // var data = 0;
  // var e = 1;
  // bool blub = true;
  // var e =5;
  // var hour = DateTime.now().hour;
  // var Minute= DateTime.now().minute;
  // var Second = DateTime.now().second;

  List a = [1, 2, 34, 5, 5];

  // void Increment() {

  //   // print(++data); //1  ,0
  //   data = ++data;
  //   e = e + 5; // 1
  //   print(data);
  //   print(e);

  //   setState(() {
  //     data = ++data;
  //     e = e + 5;
  //   });
  // }

  void data() {
    print(a);
    for (var i = 0; i < a.length; i++) {
      var data = a[i] + 1;
      a.add(data);
    }
    print(a);
  }

  Widget build(BuildContext context) {
    // Future.delayed(Duration(milliseconds: 1), () {
    //   setState(() {
    //           hour =DateTime.now().hour;
    //            Minute= DateTime.now().minute;
    //           Second = DateTime.now().second;
    //         });

    // });
    return MaterialApp(
        home: Scaffold(
            body: ElevatedButton(onPressed: data, child: Text("Click"))
            // ListView.builder(
            //   itemCount: a.length,
            //   itemBuilder: (context,index){
            //     print(a[index]);
            //   return(
            //     Text("${a[index]}")
            //   );
            // })
            // Text('$hour : $Minute : $Second')

            // e > 5 ?
            // Text("Complete")
            // :
            // Text("Incomplet"),
            // ElevatedButton(onPressed: (){
            //   setState((){
            //     e = e+1;
            //   });
            // }, child: Text("Change"))

            // blub
            //     ? Icon(
            //         Icons.lightbulb,
            //         color: Colors.yellow,
            //       )
            //     : Icon(
            //         Icons.lightbulb_outline,
            //         color: Colors.black,
            //       ),
            // Row(children: [
            //   ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           blub = !blub;
            //         });
            //       },
            //       child: blub ? Text("Off") : Text("ON")),
            // ])

            // Text("$data"),
            // Text("$e"),
            // Row(children: [
            //   ElevatedButton(onPressed: Increment, child: Text("Increment")),
            //   ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           data = --data;
            //           e = e - 5;
            //         });
            //       },
            //       child: Text("Decrement")),
            //   ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           data = 0;
            //         });
            //       },
            //       child: Text("Reset"))
            )
        // )
        );
  }
}
