class BankAccount {
  String? _owner;
  double? _balance;

  BankAccount(this._owner, this._balance);

  double get checkBalance => _balance ?? 0.0;

  void deposit(double amount) {
    if (amount > 0) {
      _balance = (_balance ?? 0.0) + amount;
      print("Deposited: \$${amount}. New balance :\$${_balance}");
    } else {
      print("deposit amount must be positive ");
    }
  }
}

void main() {
  BankAccount account = BankAccount("Bablu", 0.0);
  account.deposit(100);
  print("Current Balance: \$${account.checkBalance}");
}
