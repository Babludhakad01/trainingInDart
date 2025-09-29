abstract class Payment {
  void pay(double amount); //  abstract method
}

class PayPalPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid $amount using PayPal !");
  }
}

class CreditCardPayment extends Payment {
  void pay(double amount) {
    print("Paid $amount using Credit Card !");
  }
}

class PaymentMethod implements PayPalPayment, CreditCardPayment {
  void pay(double amount) {
    print("paid amount $amount using payment method");
  }
}

void main() {
  var cp = CreditCardPayment();
  cp.pay(800);

  var pp = PaymentMethod();
  pp.pay(1000);
}
