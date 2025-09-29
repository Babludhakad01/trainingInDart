import '../models/Product.dart';

class HomeScreen {
  List<Product> products = [
    Product(name: "Nike", price: 1200, description: "Running Shoes"),
    Product(name: "Asian", price: 1800, description: "Casual Shoes"),
  ];

  void showProduct() {
    for (var product in products) {
      print(
        "product details: Product Name - ${product.name} Price - ${product.price} product description ${product.description}",
      );
    }
  }
}
