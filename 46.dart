// Finding the maximum  of a jagged array of numbers or array of numbers
import 'dart:math' as math;

void main(List<String> args) {
  List<dynamic> jaggedArray = [10, 13, [45,32,[67]], 4, [97, 54], 0,12];

  num maximumValue = findMaxInJaggedArray(jaggedArray);
  print("Max element in $jaggedArray is $maximumValue");
}


num findMaxInJaggedArray(List<dynamic> jaggedArray){
  num currentMax = double.negativeInfinity;

  for (var item in jaggedArray) {
    if (item is num) {
      currentMax = math.max(currentMax, item);
    }else if(item is List){
      num maxInInnerList = findMaxInJaggedArray(item);
      currentMax = math.max(currentMax, maxInInnerList);
    }else{

      throw ArgumentError("Jagged array can only contain numbers or lists of numbers.");
    }
 }
 return currentMax;
}