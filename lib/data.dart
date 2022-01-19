import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var data = true;

  TextEditingController inputdata = TextEditingController(); //input value get
  TextEditingController password = TextEditingController();

// Used For SubMit Button
  void Submit() {
    // print("Input 1:"+inputdata.text);
    // print("Input 2: "+password.text);
    var email = inputdata.text;
    var pass1 = password.text;
    if( email ==""){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Empty Value"),
          content: Text("Enter Email Value"),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text("Ok"),)
          ],
        );

      });
    }

    
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [



            Container(
              margin: EdgeInsets.only(top: 70), //
              width: 200, 
              height: 100,
              child: TextField(
                controller: inputdata, //get value 
                keyboardType: TextInputType.number,
                // obscureText: data == true ? true : false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue,
                  prefix: Icon(Icons.email),
                  suffix: IconButton(
                    onPressed: () {
                      print("djjdj");
                      setState(() {
                        data = !data;
                      });
                    },
                    icon: Icon(Icons.code_outlined),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  // First Time Styling : enabledBorder
                ),
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 10),
              width: 200,
              height: 100,
              child: TextField(
                controller: password, //get data
                obscureText: data == true ? true : false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue,
                  prefix: Icon(Icons.email),
                  suffix: IconButton(
                    onPressed: () {
                      print("djjdj");
                      setState(() {
                        data = !data;
                      });
                    },
                    icon: Icon(Icons.code_outlined),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  // First Time Styling : enabledBorder
                ),
              ),
            ),


            ElevatedButton(
              onPressed: Submit,
              child: Text("Submit data"),
            )
          ],
        ),
      ),
    );
  }
}
