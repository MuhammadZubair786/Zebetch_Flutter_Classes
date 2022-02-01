import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class DicApp extends StatefulWidget {
  const DicApp({ Key? key }) : super(key: key);

  @override
  _DicAppState createState() => _DicAppState();
}

class _DicAppState extends State<DicApp> {

  TextEditingController txtdata = TextEditingController();
  var a=[];
  

searchText() async {
  setState(() {
    a=[];
  });
   var url = Uri.parse(
        'https://owlbot.info/api/v4/dictionary/${txtdata.text}');
    var response = await http.get(url, headers: {
      "Authorization": "Token fee1871e9c8b3d3c2e28d7213537294ff6c73519"
    });
    print(json.decode(response.body));
    var data = json.decode(response.body);

    //  print(data["definitions"][0]);
    print(data);

    a.add({
      "Type": data["definitions"][0]["type"],
      "Defination": data["definitions"][0]["definition"],
      "Img": data["definitions"][0]["image_url"],
      "shape": data["definitions"][0]["emoji"]
    });

    print(a);
    setState(() {
      a = a;
    });


}


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Text("Dic App"),
            TextField(
              controller: txtdata,
            ),
            ElevatedButton(onPressed: searchText, child:Text("Click")),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: a.length,
              itemBuilder:(context,ind){
                return Container(
                  child:Card(
                    child: Column(children: [
                      
                    a[ind]["Img"] != null ?   Image.network(a[ind]["Img"],width: 200,height: 100,): Text(""),
                      a[ind]["Defination"] != null ?  Text("Defination "+a[ind]["Defination"]):Text("No Data"),
                      a[ind]["shape"] != null ?  Text(a[ind]["shape"]) : Text("")
                    ],),
                  )
                );
              } )
          ],
        ),
      ),
    );
  }
}