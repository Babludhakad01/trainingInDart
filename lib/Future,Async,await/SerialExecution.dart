Future<String> task1() async {
  await Future.delayed(Duration(seconds: 2));
  return "Task 1 Completed";
}

Future<String> task2() async {
  await Future.delayed(Duration(seconds: 3));
  return "Task 2 Completed";
}

Future<String> task3() async {
  await Future.delayed(Duration(seconds: 1));
  return "Task 3 Completed";
}

void main() async {
  // print("Serial Execution =========>");

  // var s1 = await task1();
  // print(s1);
  // var s2 = await task2();
  // print(s2);
  // var s3 = await task3();
  // print(s3);

  print("Parallel Execution");

  var res = await Future.wait([task1(), task2(), task3()]);

  print(res);
  print("parallel completed");
}
