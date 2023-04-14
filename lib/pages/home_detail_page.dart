import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/home_widgets/add_to_cart.dart';
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
      backgroundColor: context.canvasColor,
      bottomNavigationBar:           Container(
        color: context.cardColor,
        child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl4.red800.make(),
               AddToCart(catalog: catalog,).wh(120, 50)
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
                  color: context.cardColor,
                  child: Column(
                    children: [
                       catalog.name.text.xl4.color(Theme.of(context).hoverColor).bold.make(),
                      catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                         10.heightBox,
                      " Sed takimata clita sit nonumy aliquyam gubergren dolor eirmod consetetur. Gubergren dolor rebum et invidunt, no ipsum duo kasd et elitr consetetur. Gubergren dolores labore eos justo nonumy ipsum. Dolor lorem ea dolor rebum ipsum. Lorem at sed aliquyam eirmod. Eos sed takimata lorem dolores et eirmod, kasd kasd sed.".text.textStyle(context.captionStyle).make().p16(),
                    ],
                  ).py32(),
                ),
              ))
          ],
        ),
      ),
    );
  }
}
