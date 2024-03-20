// Rotation of array to right

void main(List<String> args) {
  var array = [1,2,3];
  Iterable<int> result = RotateToRight(array);

  print("Rotation To right is: $result");
 }

Iterable<int> RotateToRight(List<int> array)
{
  int k = array.length;
  int temp = array[0];

  for (var i = 0; i < k-1; i++) {
    array[i] = array[i+1];
  }
  array[k - 1] = temp;
  return array;
} 