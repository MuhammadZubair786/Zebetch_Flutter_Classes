import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var gender = "";
  var radiovalue = 2;
  var hobbies1 = false; //Check
  var hobbies2 = false;
  var dropdown;
  var A = ['App', 'Bpp', 'C', 'D'];

  void Data(valu) {
    setState(() {
      radiovalue = valu;
    });
    print(radiovalue);
    switch (radiovalue) {
      case 0:
        // print("Male");
        setState(() {
          gender = "Male";
        });
        print(gender);

        break;
      case 1:
        print("Female");
        setState(() {
          gender = "Female";
        });
        print(gender);
        break;

        break;
      default:
    }
  }

  void DChkBtn(var e) {
    print(e);
    if (hobbies1 == false && hobbies2 == false) {
      print("Select One Hobbies ");
    } else if (hobbies1 == true && hobbies2 == true) {
      print("Programming");
      print("Reading");
    } else if (hobbies1 == true) {
      print("Programming");
    } else if (hobbies2 == true) {
      print("Reading");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Text("Radio Button"),
                Row(
                  children: [
                    Radio(
                      value: 0, //male
                      groupValue: radiovalue,
                      onChanged: Data,
                    ),
                    Text("Male"),
                    Radio(
                      value: 1, //1 female
                      groupValue: radiovalue,
                      onChanged: Data,
                    ),
                    Text("Female"),
                  ],
                ),
                Row(children: [
                  Checkbox(
                      value: hobbies1, //check
                      onChanged: (data) {
                        print(data);
                        setState(() {
                          hobbies1 = data;
                        });
                      }),
                  Text("Programming")
                ]),
                Row(children: [
                  Checkbox(
                      value: hobbies2, //check
                      onChanged: (data) {
                        print(data);
                        setState(() {
                          hobbies2 = data;
                        });
                      }),
                  Text("Reading")
                ]),
                ElevatedButton(
                    onPressed: () {
                      DChkBtn("asad");
                    },
                    child: Text("Click")),
                DropdownButton(
                  isExpanded: true,
                  
                  value: dropdown,
                  items: A.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      dropdown = value;
                    });
                  },
                ),
              ],
            )),
      ])),
    );
  }
}
