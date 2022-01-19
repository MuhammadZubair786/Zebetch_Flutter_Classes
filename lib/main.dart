
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List img =[
    "https://png.pngtree.com/thumb_back/fh260/background/20211031/pngtree-abstract-bg-image_914283.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqUtoUwyLGDgg5Z0wpXTQW_pU-mpdxByoO7Q&usqp=CAU",
  
    "https://png.pngtree.com/thumb_back/fh260/background/20211031/pngtree-abstract-bg-image_914283.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqUtoUwyLGDgg5Z0wpXTQW_pU-mpdxByoO7Q&usqp=CAU",];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: CarouselSlider(
        //   options: CarouselOptions(
        //     viewportFraction: 1
        //     // autoPlay: true
        //   ),
        //   items: img.map((e) => Container(
        //     width: 1000,
            
        //     child: Image.network(e,
        //     fit: BoxFit.fill,
        //     ),
           
        //   ) ).toList(),

        // )
        // body: Column(
        //   children: [
        //     Text("Image Data"),
        //     ListView.builder(

        //       shrinkWrap: true, //
        //       physics: NeverScrollableScrollPhysics(), //scroll 

        //       itemCount: img.length,
        //       itemBuilder: (context,index){
        //         return Container(
        //           child: Column(
        //             children: [
        //               Text("${img[index]}"),
        //               SizedBox(height: 20,)
        //             ],
        //           ),

        //         );
        //       },
      
        //     ),
        //   ],
        // ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                // fillColor: Colors.red,
                filled: true,
                prefixIcon: Icon(Icons.email),
                hintText: "Enter Email Value",
                labelText: "Enter MATERIAL"    

              ),
              
              // keyboardType: TextInputType.emailAddress, //Keyborad 
            ),
             TextField(
              decoration: InputDecoration(
                // fillColor: Colors.red,
                filled: true,
                prefixIcon: Icon(Icons.email),
                hintText: "Enter Email Value",
                labelText: "Enter MATERIAL",
                labelStyle: TextStyle(color: Colors.red)

              ),
              
              // keyboardType: TextInputType.emailAddress, //Keyborad 
            )
          ],
        ),

      ),
    );
  }
}