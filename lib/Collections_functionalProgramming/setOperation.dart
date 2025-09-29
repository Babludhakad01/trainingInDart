void main(){
  //Syntax
  Set<int> set = {1,2,3};

  //empty set define
  Set<String> set1 = {};
  Set<String> set2 = <String>{};


  set.add(4);
  set.add(5);
  set.add(6);
  set.remove(4);

  print("set element contains or not 5 ${set.contains(5)}");


  for(var a in set){
    print("set element : ${a}");
  }

  Set<int> num1 = {1,2,3,4,5};
  Set<int> num2 = {2,3,5,9,10};

  Set<int> res = num1.union(num2);
  Set<int> res2 = num1.difference(num2);
  print("After Union ${res}");
  print("After difference ${res2}");

  print(set1.runtimeType);
}