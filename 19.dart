// RetrunPrime numbers in an array greater than its size

void main(List<String> args) {
  var numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23];
  Iterable<int> result = CheckPrime(numbers);
  print(result);
}

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

Iterable<int> CheckPrime(List<int> array) {
  List<int> arr = [];

  for (var i = 0; i < array.length; i++) {
    if (isPrime(array[i])) {
      if (array[i] > array.length) {
        arr.add(array[i]);
      }
    }
  }
  return arr;
}
