// Distance Between 100 first prime numbers

void main(List<String> args) {
  int totalDistance = 0;
  List<int> primeNum = nPrimeNumbers(100);

  for (int i = 1; i < primeNum.length; i++) {
    totalDistance += primeNum[i] - primeNum[i-1];
  }
  print("Total distance between the 100 first prime numbers is: $totalDistance");
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

List<int> nPrimeNumbers(n){
  List<int> primes = [];
  int count =0, num =2;
  while (count < n) {
    if (isPrime(num)) {
      primes.add(num);
      count++;
    }
    num++;
  }
  return primes;
}
