Future<String> fetchUserName() async {
  await Future.delayed(Duration(seconds: 2));
  return "Bablu Dhakad";
}

void main() async {
  try {
    print("start");
    String name = await fetchUserName();
    print("User name $name");
    print("End");
  } catch (e) {
    print("Error in api $e");
  }
}
