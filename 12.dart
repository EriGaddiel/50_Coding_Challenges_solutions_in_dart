// Return only positive numbers from an array

void main(List<String> args) {
  var array = [-1,2,3,-5,4,6,10,20,28];

  print("The positive elelments are : ${PositiveNumbers(array)} ");
}

Iterable<int> PositiveNumbers(List<int> array)
{
    var arr = array.where((element) => element >= 0);
    return arr;
}