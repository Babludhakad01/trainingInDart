class Person {
  String? name;
  int? age;

  //default Constructor
  // Person() {
  //   print("Default Constructor is called");
  // }

  // Named Constructor With Parameter
  // Person.withValue(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  Person(this.name, this.age);

  Person.guest() : name = "guest", age = 0;
}

void main() {
  Person p1 = Person("Bablu", 24);
  Person p2 = Person.guest();
  print("Person Name ${p2.name}");
}
