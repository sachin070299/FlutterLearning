
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/catalouge.dart';

class ItemWidget extends StatelessWidget{
  
  final Item item;

  const ItemWidget({key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title:Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaler: TextScaler.linear(1.5),
        style: TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.w900
        ),),
      ),
    );
  }


}