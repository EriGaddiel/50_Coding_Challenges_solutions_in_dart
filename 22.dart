// Reverse array

void main(List<String> args) {
  var array = [1, 2, 3, 4, 5];
  var reversedArray = ReverseArray(array);
  print("Reversed array: $reversedArray");
}


Iterable<int> ReverseArray(List<int> array)
{
  return array.reversed.toList();
}