// Return the element in first array not found in second array

void main(List<String> args) {
  var array1 =[1,2,3,4,5];
  var array2 =[3,4,5,6,7,8];

  List<int> result = elements_in_first_array_but_not_second(array1, array2);
  print(result);
}

Set<T> FoundElementNotInSecond<T>(Set<T> set1, Set<T> set2) {
  return set1.difference(set2);
}



List<int> elements_in_first_array_but_not_second(List<int> array1, List<int> array2)
{
    Set<int> set1 = Set.from(array1);
    Set<int> set2 = Set.from(array2);

    Set<int> result = FoundElementNotInSecond(set1, set2);
    return result.toList();

}