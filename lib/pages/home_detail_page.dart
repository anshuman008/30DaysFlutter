import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme().creamColor,
      bottomNavigationBar:           Container(
        color: Colors.white,
        child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl4.red800.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          MyTheme().darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Add to cart".text.make(),
                ).wh(120, 50)
              ],
            ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)).h40(context),
              Expanded(child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                       catalog.name.text.xl4.color(MyTheme().darkBluishColor).bold.make(),
                      catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                         10.heightBox,
                        //  "Tempor. Eirmod sanctus .".text.textStyle(context.captionStyle).make().,
                    ],
                  ).py64(),
                ),
              ))
          ],
        ),
      ),
    );
  }
}
