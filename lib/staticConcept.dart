class Counter {
  static int count = 0; //each object has own count

  void increment() {
    count++;
  }
}

void main() {
  Counter c1 = Counter();
  Counter c2 = Counter();
  c1.increment();
  c2.increment();
  print(
    "c1 object counter value ${Counter.count} or c2 object counter value ${Counter.count}",
  );
}
