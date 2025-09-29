class Person {
  final String name;
  final int age;

  Person(this.name, this.age) {
    print("constructor is called");
  }
}

void main() {
  Person p = Person("kanu", 24);
}
