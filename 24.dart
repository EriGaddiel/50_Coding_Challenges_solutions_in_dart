// Mergung two arrays

void main(List<String> args) {
  var array1 = [1,2,3,4];
  var array2 = [5,6,7,8];

  Iterable<int> result = MergeArray(array1, array2);
  print("Merged array: $result");
}
 
Iterable<int> MergeArray(List<int> array1, List<int> array2)
{
  return array1+array2;
}