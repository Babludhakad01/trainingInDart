class Person {
  String? name;
  int? age;

  //Parameterized Constructor
  Person(this.name, this.age);

  // Redirecting Constructor
  Person.withName(String name) : this(name, 18); // default age user
}

void main() {
  Person p = Person.withName("Bablu");

  print("Person name ${p.name}, age ${p.age}");
}
