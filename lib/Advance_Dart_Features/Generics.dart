class Box<T>{
  T content;

  Box(this.content);
  
  void show(){
    print("Box contains ${content}");
  }


}

T getFirst<T>(List<T> items){
  return items[0];

}

void main(){
  Box<int> intBox = Box(121);
  intBox.show();


  Box<String> stringBox = Box("Bablu");
  stringBox.show();
  
  List<int>list = [10,20,30,40];
  print(getFirst(list));


  List<String> list2 = ["Bablu", "kanu", "ankit"];
  print(getFirst(list2));
}