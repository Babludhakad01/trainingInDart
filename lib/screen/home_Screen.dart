import '../models/Product.dart';

class HomeScreen {
  List<Product> products = [
    Product( "Nike",  1200,  "Running Shoes"),
    Product( "Asian",  1800,  "Casual Shoes"),
  ];

  void showProduct() {
    for (var product in products) {
      print(
        "product details: Product Name - ${product.name} Price - ${product.price} product description ${product.description}",
      );
    }
  }
}
