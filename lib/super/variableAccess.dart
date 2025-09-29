class Animal {
  void sound() {
    print("animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
    super.sound(); // Method Access
  }
}

void main() {
  Dog d = Dog();
  d.sound();
}
