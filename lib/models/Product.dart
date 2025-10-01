class Product {
  final String name;
  final double price;
  final String description;

  //Constructor
  Product( this.name,  this.price,  this.description);

  @override
  String toString() {

    return "name: ${name}, price: ${price}, description: ${description}";
  }
}
