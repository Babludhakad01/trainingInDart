void main() {
  List<int> number = [1, 2, 3, 4];

  var mapped = number.map((n) {
    print("Mapping $n");
    return n * 2;
  });

  print("Iterable ban gya abhi tak kuch execute nhi hua");
  print(mapped);
}
