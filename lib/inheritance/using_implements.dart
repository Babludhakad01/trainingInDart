class Printer {
  void printData() {}
}

class Scanner {
  void scanData() {}
}

class AllInMachine implements Printer, Scanner {
  void printData() {
    print("printer can print data");
  }

  void scanData() {
    print("Scanner can Scan data..");
  }
}

void main() {
  AllInMachine m = AllInMachine();
  m.printData();
  m.scanData();
}
