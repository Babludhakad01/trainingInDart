import 'package:flutter_project/models/Product.dart';

class ItemList<T>{
  List<T> items;

  ItemList(this.items);

  void showAll(){
    for(var item in items){
      print(item);
    }
  }
}

void main(){
  //Product List
  ItemList<Product> products = ItemList([Product("Dell", 450000, "Normal Laptop"), Product("HP", 450000, "Heavy Task Laptop")]);
  products.showAll();
}