// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:convert';

import 'package:firstapp/models/catalouge.dart';
import 'package:firstapp/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage2 extends StatefulWidget {
  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: GridTile(
                            header: Container(
                              padding: const EdgeInsets.all(12),
                              decoration:
                                  BoxDecoration(color: Colors.blueAccent),
                              child: Text(
                                item.name,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            footer: Text("\$${item.price}"),
                            child: Image.network(item.image),
                          )));
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(child: CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
    );
  }
}
