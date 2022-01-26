import 'package:flutter/material.dart';
import 'package:navclass/Data.dart';

class tabBar extends StatefulWidget {
  const tabBar({Key? key}) : super(key: key);

  @override
  _tabBarState createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
       child: Scaffold(
         appBar: AppBar(
           title: Text("Tab Bar"),
           // ignore: prefer_const_constructors
           bottom: TabBar(
             labelColor: Colors.red,
             unselectedLabelColor: Colors.yellow,
             indicatorColor: Colors.yellow,
             indicatorWeight: 5,
             tabs: [
               Tab(
                 child: Text("data "),
               ),
               Tab(
                 child: Text("Login"),
               ),
                 Tab(
                 child: Text("Call"),
               ),



             ],
           ),
         ),
         body: TabBarView(
           children: [
             Text("HELLO"),
            MyData(),
          Text("hsvvsvdh")
            

           ],
         ),
         

       )
       
       );
  }
}
