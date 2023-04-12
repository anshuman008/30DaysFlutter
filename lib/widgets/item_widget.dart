import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {
final Item item;

  // const ItemWidget({ assert super.key, required this.item });
  const ItemWidget({ Key? key, required this.item }) : assert(item != null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text("\$${item.price}", style: TextStyle(
       fontSize: 20.0,
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
      ),),
      ),
    );
  }
}