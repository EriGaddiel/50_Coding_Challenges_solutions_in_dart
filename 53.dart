// 70! with high precision (all digit)


void main(List<String> args) {
  BigInt result = fibonanci(70);
  print(result);
}


BigInt fibonanci(int n){
  if (n < 0) {
    throw ArgumentError("n must be nin-negative");
  }

  if (n <= 1) {
    return BigInt.one;
  }

  BigInt result = BigInt.one;
  for (int i = 2; i <= n; i++) {
    result *= BigInt.from(i);
  }
  return result;
}