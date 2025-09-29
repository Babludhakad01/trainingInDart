Stream<int> numberStream() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() {
  numberStream().listen(
    (value) {
      print("number $value");
    },
    onError: (e) {
      print("Error in $e");
    },
    onDone: () {
      print("Stream finished");
    },
  );
}
