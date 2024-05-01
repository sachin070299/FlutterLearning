import 'package:firstapp/models/catalouge.dart';
import 'package:firstapp/widgets/home_widget/catalog_image.dart';
import 'package:firstapp/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  
  final Item catalog;
  const CatalogItem({super.key, required this.catalog});
@override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.bold.lg.color(MyTheme.deppishblue).make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
              "₹ ${catalog.price}".text.bold.lg.make(),
              ElevatedButton(
                
                onPressed: (){},
              style: ButtonStyle(                
                backgroundColor: MaterialStatePropertyAll(
                  MyTheme.deppishblue
                )
              ),
               child: "Buy".text.color(Colors.white).make())
            ],).pOnly(right: 8)
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}
