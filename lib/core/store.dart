import 'package:catalog_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/cart.dart';

class MyStore extends VxStore{

CatalogModel catalog = CatalogModel();
CartModel cart = CartModel();

MyStore(){
catalog = CatalogModel();
cart = CartModel();
cart.catalog = catalog;
}

}