// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:firstapp/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final int days = 30;
  @override

  Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Center(
          child: Container(
            child: Text("Its Sachin Parmar $days"),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}