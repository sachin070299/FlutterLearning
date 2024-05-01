import 'package:firstapp/models/catalouge.dart';
import 'package:firstapp/screens/home_detail_page.dart';
import 'package:firstapp/widgets/home_widget/catalog_item.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetail(catalog: catalog))),
              child: CatalogItem(catalog: catalog));
        });
  }
}
