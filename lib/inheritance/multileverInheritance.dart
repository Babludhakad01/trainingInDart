class A {
  void sound() {
    print("class A");
  }
}

class B extends A {
  void sound() {
    print("class B");
  }
}

class C extends B {
  void sound() {
    print("class C");
  }
}

void main() {
  A c = B();
  c.sound();
}
