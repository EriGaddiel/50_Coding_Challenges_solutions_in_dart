// Fib( 500 )

void main(List<String> args) {
  BigInt fib = fibonanci(500);
  print("fib(500): $fib");
}


BigInt fibonanci(int n){
  if (n < 0) {
    throw ArgumentError("n must be nin-negative");
  }

  if (n <= 1) {
    return BigInt.one;
  }

  BigInt result = BigInt.one;
  for (var i = 0; i < n; i++) {
    result = BigInt.from(n -1) + BigInt.from(n- 2);
  }

  return result;
}