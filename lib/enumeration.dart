enum PaymentMethod { CreditCard, UPI, PayPal }

class Order {
  PaymentMethod? paymentMethod;

  Order(this.paymentMethod);

  void pay() {
    switch (paymentMethod) {
      case PaymentMethod.UPI:
        print("Upi Payment done");
        break;

      case PaymentMethod.CreditCard:
        print("Credit Card Payment done");
        break;

      case PaymentMethod.PayPal:
        print("PayPal Payment done");
        break;

      case null:
        print("No payment method selected");
        break;
    }
  }
}

void main() {
  Order o = Order(PaymentMethod.UPI);
  o.pay();
}
