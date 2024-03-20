// Return a distinct element

void main() {
  List<int> originalArray = [1, 2, 3, 2, 4, 1, 5];
  List<int> distinctArray = getDistinctElements(originalArray);
  print(distinctArray);
}


List<int> getDistinctElements(List<int> inputArray) {
  return inputArray.toSet().toList();
}
