import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override  //one page to second 
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 List a =["asad","omer","ali"];
 List img =["https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGhvdG9ncmFwaGVyfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
 ,"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrKHPsvNDJHY9tWpkHrfkfo8Dkf0LvZU3Hdg&usqp=CAU",
 "https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"];
  

  @override
  Widget build(BuildContext context) {
   
    return  MaterialApp(
      
      home: Scaffold(
       
        body: ListView.builder(
          itemCount: a.length,
          itemBuilder: (context,i){
            return ListTile(
              leading: Image.network(img[i]),
              title: Text(a[i]),
              subtitle: Text(a[i]),
              
            );

          }),
      ),
    );
  }
   
}