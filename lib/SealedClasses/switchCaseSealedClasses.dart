sealed class Shape{

}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);
}

class Square extends Shape {

  final double side;

  Square(this.side);
}

  void printArea(Shape shape){
    switch(shape){
      case Circle c :
        print("Circle Area ${3.14 * c.radius*c.radius}");
        break;

      case Square s :
        print("Square Area ${s.side * s.side}");
        break;
    }


  }


  void main(){
  printArea(Circle(2));
  }
