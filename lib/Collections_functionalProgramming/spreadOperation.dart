void main(){
  List<int> list1 = [1,2,3];
  List<int> list2 = [0,...list1,4];
  List<int> list3 = [...list1,...list2];
  print(list3);

  List<int>?numbers = [1,2,if(true) 3, if(false)4 ];

  List<int> number2 = [0,...?numbers];

  print("List print Numbers2: ${numbers}");
}