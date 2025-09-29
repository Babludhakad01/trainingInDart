import '../models/Product.dart';

class DetailsScreen {
  final Product product;

  DetailsScreen(this.product);

  void showDetails() {
    print("Product Name ${product.name}");
    print("Product price ${product.price}");
    print("Product description ${product.description}");
  }
}
