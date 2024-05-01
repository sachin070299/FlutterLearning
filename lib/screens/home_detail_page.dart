import 'package:firstapp/models/catalouge.dart';
import 'package:firstapp/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetail extends StatelessWidget {
  final Item catalog;

  const HomeDetail({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.cream,
      bottomNavigationBar: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
              "₹ ${catalog.price}".text.bold.xl4.color(Colors.redAccent).make(),
              ElevatedButton(
                
                onPressed: (){},
              style: ButtonStyle(                
                backgroundColor: MaterialStatePropertyAll(
                  MyTheme.deppishblue
                )
              ),
               child: "Buy".text.color(Colors.white).make()).wh(100, 50)
            ],).py32(),
      body: SafeArea(
        child: Column(
          
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image,).h32(context).p16()),
            Expanded(
                child: VxArc(             
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              height: 30.0,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.color(MyTheme.deppishblue).bold.xl4.align(TextAlign.center).make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.align(TextAlign.center).make(),
                  10.heightBox
                ],).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
