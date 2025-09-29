class Car {
  String? model;
  String? name;
  int? year;
  int? speed;
  double? _price; // Encapsulated Variable (Private)

  Car(this.model, this.name, this.year, this.speed, this._price);

  // for getting price
  // safe return if price null then 0 return
  String get checkPrice => (_price ?? 0).toStringAsFixed(2);

  //setter for car price
  set setPrice(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    }
  }

  void carDetails() {
    print("Car Name ${name}, Car Model : ${model}  speed : ${speed}");
  }
}

void main() {
  Car c1 = Car("xuv700", "Mahindra", 2025, 150, 2200000);
  Car c2 = Car("Nexon", "TATA", 2024, 150, 1200000);

  c1.carDetails();
  print("car price of xuv ${c1.checkPrice}");
  c1.setPrice = 23000000.649634664;
  print("car updated price of xuv ${c1.checkPrice}");
}
