class Product {
  String? productName;
  double? price;

  Product(this.productName, this.price);

  void displayInfo() {
    print(
      "Product name ${productName} and price ₹${(price ?? 0).toStringAsFixed(2)}",
    );
  }
}

class DiscountedProduct extends Product {
  double? discount;

  DiscountedProduct(String name, double price, this.discount)
    : super(name, price) {
    print("parent constructor call using super");
  }

  void displayInfo() {
    super.displayInfo();

    double finalPrice = (price ?? 0) - ((price ?? 0) * (discount ?? 0) / 100);

    print("discount ${discount}%");

    print("final price of product ${finalPrice.toStringAsFixed(2)}");
  }
}

void main() {
  DiscountedProduct dp = DiscountedProduct("Acer", 25000.24, 10);
  dp.displayInfo();
}
