// Return n unique random numbers


import 'dart:math';

void main(List<String> args) {
  List<int> result = geneateRandomNumbers(10);
  print(result);
}


List<int> geneateRandomNumbers(int n){
  if (n <= 0) {
    throw ArgumentError("n most be a positive interger");
  }

  List<int> randomNumbers = [];

  Set<int> uniqueNumbers = {};

  while (uniqueNumbers.length < n) {
    int randomNumber = Random().nextInt(n) + 1;
    uniqueNumbers.add(randomNumber);
  }

  randomNumbers.addAll(uniqueNumbers);
  return randomNumbers;
}