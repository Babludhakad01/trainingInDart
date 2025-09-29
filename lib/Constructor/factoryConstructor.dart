class Database {
  static Database? _instance; // cached object

  Database._internal() {
    print("database created");
  }

  factory Database() {
    _instance ??= Database._internal();
    return _instance!;
  }
}

void main() {
  var d = Database();
  var d2 = Database();
  print(identical(d, d2));
}
