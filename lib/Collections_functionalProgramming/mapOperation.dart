void main(){
  List<int> list = [1,2,8,4,5,6];

  List<String> names = ["Bablu", "ankit", "rahul", "manish", "yash"];


  var sum = list.reduce((value, e)=> value+e);
  var useFold = list.fold(10, (value, el)=> value+el);
  print("Sum of all Element ${sum}");
  print("Max Value in list ${sum}");
  print("Fold value for intial value give and add : ${useFold}");
  names.forEach((name){
    print("name of Person: $name");
  });


  List<int> squared = list.map((element)=> element*2).toList();

  List<int> evenNumber =  list.where((v)=> v%2==0).toList();


 bool hasEven =  list.any((n){
    print("checking $n");
    return n%2==0;
  });

 print("Use any() Method output:  $hasEven");

 bool hasEvent = list.every((n){
   print("Checking $n");
   return n%2 ==0;
 });

 print("Use every() method output: $hasEvent ");

  // for(var v in evenNumber){
  //   print(v);
  // }
}