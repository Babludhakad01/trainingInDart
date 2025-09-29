class Animal {
  final String type;

  Animal(this.type);
}

class Dog extends Animal {
  final String name;

  Dog(this.name) : super("Dog") {
    print("Dog class constructor");
  }
}

void main() {
  Dog d = Dog("Tommy");
  print("dog ${d.name} type ${d.type}");
}
