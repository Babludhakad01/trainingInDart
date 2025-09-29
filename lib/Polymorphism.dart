import 'dart:io';

abstract class Payment {
  void pay(double amount);
}

class CreditCard extends Payment {
  void pay(double amount) {
    print("Paid amount $amount using Credit Card");
  }
}

class UPIPayment extends Payment {
  void pay(double amount) {
    print("Paid amount $amount Using UPI Method");
  }
}

void main() {
  // List<Payment> payment = [CreditCard(), UPIPayment()];
  print("Enter Your Choice of Payment ");
  final choice = stdin.readLineSync()!.trim().toLowerCase();

  Payment payment;

  if (choice == 'card') {
    payment = CreditCard();
  } else {
    payment = UPIPayment();
  }

  payment.pay(10000.00);

  // for (var p in payment) {
  //   p.pay(100000);
  // }
}
