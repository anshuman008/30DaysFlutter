import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:catalog_app/pages/catalog_image.dart';
import 'package:catalog_app/pages/home_detail_page.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (contesxt, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(
                          catalog: catalog,
                        ))),
            child: CatalogItems(catalog: catalog));
        },
        itemCount: CatalogModel.items.length);
  }
}

class CatalogItems extends StatelessWidget {
  final Item catalog;

  const CatalogItems({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
       Hero(
        tag: Key(catalog.id.toString()),
        child: CatalogImage(image: catalog.image)),
       Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          catalog.name.text.lg.color(Theme.of(context).hoverColor).bold.make(),
          catalog.desc.text.textStyle(context.captionStyle).make(),
          10.heightBox,
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).hintColor),
                    shape: MaterialStateProperty.all(StadiumBorder())),
                child: "Add to cart".text.make(),
              )
            ],
          ).pOnly(right: 8.0)
        ],
       ))
      ],
    )).color(context.cardColor).rounded.square(150).make().py(16);
  }
}