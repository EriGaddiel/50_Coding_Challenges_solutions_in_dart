// Compose new array from two different arrays

void main(List<String> args) {
  var array1 =[1,2,3,4,5];
  var array2 =[3,4,5,6,7,8];

  List<int> result = ComposeArray(array1, array2);
  print(result);
}

Set<T> symmetricDifference<T>(Set<T> set1, Set<T> set2) {
  Set<T> difference1 = set1.difference(set2);
  Set<T> difference2 = set2.difference(set1);
  return difference1.union(difference2);
}


List<int> ComposeArray(List<int> array1, List<int> array2)
{
    Set<int> set1 = Set.from(array1);
    Set<int> set2 = Set.from(array2);

    Set<int> result = symmetricDifference(set1, set2);

    return result.toList();

}