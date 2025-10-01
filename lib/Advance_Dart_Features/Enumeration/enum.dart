// enum Day{
//   Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
// }




// Enhanced Enum (With Properties/ Methods)

enum Status {
  success(200),
  error(500),
  notFound(404);

  final int code;

  const Status(this.code);

  void describe() {
    print("Status $name with code $code");
  }
}


  void main() {
    var s = Status.success;
    s.describe(); // Status success with code 200
}


