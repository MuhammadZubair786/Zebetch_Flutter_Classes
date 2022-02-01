import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class app_integration extends StatefulWidget {
  @override
  _app_integrationState createState() => _app_integrationState();
}
 var users = [];

class _app_integrationState extends State<app_integration> {
 getuser() async {
   
    var res =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(res.body);
    // print(jsonData);

  

    for(var i in jsonData){
      UserModel user = UserModel(i['name'],i['username'],i['email'],i['website'],i['company']['name'],i["address"]["zipcode"]);
      users.add(user);
      print(i);
    }
   return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // child: Text("hello"),
        body: FutureBuilder(
            future: getuser(),
            builder: (context, snapshot) {
              print("data  ${snapshot.data}");
              if (snapshot.data == null) {
                return Container(
                  child: Text("No Data"),
                );
              } else {
                  return ListView.builder(
              
              itemCount: snapshot.data.length,
              itemBuilder: (context,i){
                return ListTile(
                  leading: Text("User Name : "+snapshot.data[i]. name),
                  title: Text("User Email : "+snapshot.data[i].Email),
                  subtitle: Text("Company Name:"+snapshot.data[i].company),
                  trailing: Text("Zip code:"+snapshot.data[i].zipcode),
                );
              
                  
                
              });
              }
            }
            ));
  }
}

class UserModel {
  var name;
  var username;
  var Email;
  var website;
  var company;
  var zipcode;

  UserModel(this.name, this.username, this.Email, this.website, this.company,this.zipcode);
}
