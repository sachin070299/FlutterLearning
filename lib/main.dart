// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Material(
        child:Center(
        child:Container(
        child: Text("Its Sachin Parmar"),
      ),
      ),
    ),
    );

  }
}