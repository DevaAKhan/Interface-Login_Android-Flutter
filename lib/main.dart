import 'dart:ui';

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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Login",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form Login"),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.6, 0.9],
              colors: [
                  Color.fromRGBO(12, 235, 235, 1),
                  Color.fromRGBO(32, 227, 178, 1),
                  Color.fromRGBO(41, 225, 198, 1),
              ],
            ),
          ),
          //
          child: Container(
            //isi child Container
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                //jumlah stop berbanding lurus dengan jumlah warna
                stops: [0.3, 0.6, 0.9],
                colors: [
                  Color.fromRGBO(12, 235, 235, 1),
                  Color.fromRGBO(32, 227, 178, 1),
                  Color.fromRGBO(41, 225, 198, 1),
                ], 
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 18.0,
                  color: Colors.transparent.withOpacity(.5),
                  spreadRadius: 12.5
                ),
              ]
            ),
            margin: EdgeInsets.fromLTRB(40, 36, 40, 50),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 45, top: 15),
                  child: Column(
                    children: <Widget>[
                      // Image.asset('assets/user.png', width: 80, height: 40),
                        Text(
                          "LOGIN",
                          style: TextStyle(
                            // fontFamily: 'PTSans-Regular',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
                  child: Column(
                    children: <Widget>[
                      Text("Email"),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom:8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.message),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28))),
                      )),
                    // 
                      Text("Password"),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom:8),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28))),
                      )),
                      // 
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(30.0)),
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text("Sign In"),
                          onPressed: () {},
                      ),
                      //
                        FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(30.0)),
                          color: Colors.black12,
                          textColor: Colors.white,
                          child: Text("Forgot Password"),
                          onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //child: Container
          ),
        ),
      ),
    );
  }
}


