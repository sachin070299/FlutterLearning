// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:firstapp/models/catalouge.dart';
import 'package:firstapp/widgets/drawer.dart';
import 'package:firstapp/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final int days = 30;
  @override

  Widget build(BuildContext context) {
    final dummylist = List.generate(20,(index)=>CatalogModel.items[0]);
  return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context,index){
            return ItemWidget(
              item: dummylist[index]);
          },
        ),
        drawer: MyDrawer(),
      );
  }
}