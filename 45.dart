// Sum of jagged numbers

void main(List<String> args) {
  List<dynamic> jaggedArray = [2,3,[2,3],5];

  int result = sumOFjaggedArray(jaggedArray);
  print("Sum ot numbers the jagged array is: $result"); 
}

int sumOFjaggedArray(List<dynamic> jaggedArray){

  int sum = 0;
  for (var item in jaggedArray) {
    if (item is int) {
      sum += item;
    }else if(item is List){

      sum += sumOFjaggedArray(item);
    }else{

      throw ArgumentError("Jagged array can only contain numbers or list of numbers.");
    }
  }
  return sum;
}