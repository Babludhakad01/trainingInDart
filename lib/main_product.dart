import './models/Product.dart';
import './screen/details_screen.dart';
import './screen/home_Screen.dart';

void main() {
  var home = HomeScreen();
  // home.showProduct();

  final selectProduct = home.products[0];
  var productDetails = DetailsScreen(selectProduct);
  productDetails.showDetails();
}
