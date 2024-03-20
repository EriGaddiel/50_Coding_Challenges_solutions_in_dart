// Print first 100 prime numbers
void main() {
  int count = 0;
  int number = 2;

  while (count < 100) {
    if (isPrime(number)) {
      print(number);
      count++;
    }
    number++;
  }
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
