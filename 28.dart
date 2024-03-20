// Sum of the first 100 prime numbers

void main(List<String> args) {
    int result = sum_of_first_n_prime_numbers(100);

    print("The sum of the first prime numbers: ${result}");
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


int sum_of_first_n_prime_numbers(int n){
  int sum = 0, count = 0;
  int num = 2;

  while (count < n) {
    if (isPrime(num)) {
      sum += num;
      num ++;
      count ++;
    }else{
      num++;
    }
  }
  return sum;
}
