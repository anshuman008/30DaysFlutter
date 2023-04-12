import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'dart:convert';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJason =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeDtat = jsonDecode(catalogJason);
    var productData = decodeDtat["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
    // print(productData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('catalog App',
            style: Theme.of(context).appBarTheme.titleTextStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: GridTile(child: Image.network(item.image),
                    header: Container(child: Text(item.name, style: TextStyle(color: Colors.white),), padding: EdgeInsets.all(12), color: Colors.deepPurple,),
                    footer:Container(child: Text(item.price.toString(), style: TextStyle(color: Colors.white),), padding: EdgeInsets.all(12), color: Colors.black,),
                    ));
                },
                itemCount: CatalogModel.items.length, 
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
