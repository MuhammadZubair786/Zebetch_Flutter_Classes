// ignore: file_names
// ignore_for_file: file_names

import 'package:authapp_firebase/New.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final keys = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseDatabase db = FirebaseDatabase.instance;

  TextEditingController name = TextEditingController();
  TextEditingController contact = TextEditingController();


  Future<void> SignUp() async {
    print(email.text);
    print(password.text);
    print(name.text);
    print(contact.text);
    var username = name.text;

    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      print(user.user!.displayName);
      print(user.user!.uid);

      DatabaseReference useRef= FirebaseDatabase.instance.reference().child("/Product").child("/Hardware");

      var object = {
        "email":email.text,
        "Name":name.text,
        "password":password.text,
        "Contact": contact.text

      };

      // ignore: await_only_futures
      await useRef.child(user.user!.uid).set(object);



      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Center(child: Text("Account Created ")),
            content: Text("Account Created"),
            actions: [
              TextButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          );
        },
      );
    } catch (err) {
      print(err);
      Widget okButton = TextButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          });

      AlertDialog alert = AlertDialog(
        title: Center(child: Text("SignUp Error ")),
        content: Text("${err}"),
        actions: [
          okButton,
        ],
      );

      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  }

  void SignIn() async {
    print(email.text);
    print(password.text);

    try {
      UserCredential user = await auth.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      print(user.user!.uid);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Newpage()));
    } catch (err) {
      print(err);
      Widget okButton = TextButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          });

      AlertDialog alert = AlertDialog(
        title: Center(child: Text("SignUp Error ")),
        content: Text("${err}"),
        actions: [
          okButton,
        ],
      );

      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("signup")),
        ),
        body: Center(
            child: Form(
          key: keys,
          child: Column(
            children: [
              TextFormField(
                controller: name,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: "Enter User Name*",
                    labelText: "Name",
                    prefixIcon: Icon(Icons.verified_user)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "             Please Fill The Data";
                  }
                  return null;
                },
              ),
              
              TextFormField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: "Enter User Email*",
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "             Please Fill The Data";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: password,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.pink, fontSize: 25),
                    prefixIcon: Icon(Icons.lock)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "                  Please Fill The Data";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: contact,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: "Enter Your Contact *",
                    labelText: "Contact",
                    prefixIcon: Icon(Icons.phone)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "             Please Fill The Data";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (keys.currentState!.validate()) {
                    SignUp();
                  }
                },
                child: Text("click"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (keys.currentState!.validate()) {
                    SignIn();
                  }
                },
                child: Text("Sign In"),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
