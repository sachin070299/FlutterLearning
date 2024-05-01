// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:convert';

import 'package:firstapp/models/catalouge.dart';
import 'package:firstapp/widgets/drawer.dart';
import 'package:firstapp/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage3 extends StatefulWidget {
  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  final int days = 30;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogjson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
        setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items.isNotEmpty)? ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: CatalogModel.items[index]);
          },
        ):Center(child:CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
    );
  }
}
