// Rotate Array to left postion

void main(List<String> args) {
  
  var array = [1,2,3];

  Iterable<int> result = RotateToLeft(array);
  print("Rotation to Left is: $result");

}

Iterable<int> RotateToLeft(List<int> array)
{
  int k = array.length;
  int temp = array[k-1];
  for (var i = k - 1; i > 0; i--) {
    array[i] = array[i - 1];
  }
  array[0] = temp;
  return array;
}