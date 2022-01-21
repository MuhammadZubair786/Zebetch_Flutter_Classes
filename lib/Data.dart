import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {



  List a = ["Smit", "Zebtech"]; //make list 


  String output = "";

  TextEditingController data = TextEditingController();

  void Add() {
    var email = data.text;

    print(a);
    setState(() { //Add new DATA
      a.add(email); //.AAD METHOD``
    });
    data.text = ""; //input empty 
  }

  void Delete(var e) {
    print(e);
    a.removeAt(e); //REMOVE AT INDEX 
    print(a);
    setState(() {}); //ui build
  }

  void  Edit(var d1) {
    print(a[d1]);
   
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Edit Value"),
            content: TextField(
              controller: TextEditingController()..text = a[d1],
              onChanged: (v) {
                print(v);
                if (v != "") {
                  output = v;
                }
              },
            ),
            actions: [
              ElevatedButton.icon(
                  onPressed: () {
                    print(output);
                    setState(() {
                      a[d1] = output;
                    });
                    Navigator.of(context).pop(); //pop close
                  },
                  icon: Icon(Icons.update),
                  label: Text(""))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Todo App"),
            ),
            body: Column(
              children: [

                // TextField & Add Buton
              
                Container(
                    color: Colors.red,
                    child: Row(
                      children: [
                        Container(
                            width: 300,
                            child: TextField(
                              controller: data, //data save
                              decoration: InputDecoration(
                                  fillColor: Colors.yellow, filled: true),
                            )),
                        ElevatedButton.icon(
                            onPressed: Add,
                            icon: Icon(Icons.add),
                            label: Text("")
                            
                            )
                      ],
                    )),
                
                //Rending List

                ListView.builder(
                  shrinkWrap: true, 
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: a.length,
                  itemBuilder: (context, ind) {
                    return Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Container(width: 100, child: Text(a[ind])),
                          SizedBox(
                            width: 40,
                          ),

                          ElevatedButton.icon(
                            onPressed: () {
                              Edit(ind);
                            },
                            icon: Icon(Icons.edit),
                            label: Text(""),
                          ),

                          SizedBox(
                            width: 40,
                          ),

                          ElevatedButton.icon(
                            onPressed: () {
                              Delete(ind);
                            },
                            icon: Icon(Icons.delete),
                            label: Text(""),
                          )
                        ],
                      ),
                    );
                  },
                ),



              ],
            )));
  }
}



