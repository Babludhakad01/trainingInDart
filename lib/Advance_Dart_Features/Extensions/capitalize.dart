extension StringExtension on String{
  String capitalizeAll(){
    if(this.isEmpty) return "";
    return this.toUpperCase();
  }
}

extension IntExtension on int{
  bool get isEvenNumber => this%2==0;
}


extension IntPower on int{
  int power(int exponent){
    int result = 1;

    for(int i=1; i<exponent; i++){
      result *= this;

    }
    return result;
  }

}


void main(){
  String name = "bablu";
  print(name.capitalizeAll());

  int n = 7;

  print(n.isEvenNumber);


  int x =  2;
  print(x.power(3)); // 8
}