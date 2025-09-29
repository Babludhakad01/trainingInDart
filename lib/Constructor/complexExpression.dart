class Circle {
  final double radius;
  final double area;

  Circle(this.radius) : area = 3.14 * radius * radius {
    print("Circle created !");
  }
}

void main() {
  Circle c = Circle(2);
  print(c.area);
}
