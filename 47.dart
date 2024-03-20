// Copy a jagged array in a new array

void main(List<String> args) {
  List<dynamic> jaggedArray = [1,2,[3,5], [4,6], 7];
  List<dynamic> copy = deepCopyJaggedArray(jaggedArray);
 
  print("Original array: $jaggedArray");
  print("Copied array:   $copy");
}

List<dynamic> deepCopyJaggedArray(List<dynamic> jaggedArray){

  List<dynamic> copy = [];
  for (var item in jaggedArray) {
    if (item is num) {
      
      copy.add(item);
    }else if(item is List){

      copy.add(deepCopyJaggedArray(item));
    }else{
      throw ArgumentError("Jagged array can only contain numbers or list of numbers.");
    }
  }

  return copy;
}