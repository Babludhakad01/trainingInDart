mixin Login {
  void log(String msg) {
    print("log ${msg}");
  }
}

mixin Cache {
  String? token;

  void saveToken(String t) {
    token = t;
    print("token saved ${t}");
  }
}

class AuthService with Login, Cache {
  void login(String user) {
    log("User $user is logged in..");
    saveToken("123ABC");
  }
}

void main() {
  var auth = AuthService();
  auth.login("Bablu");
}
