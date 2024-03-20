 // nth fib of a number using recursion

void main(List<String> args) {
  int num = 10;
  int result = Fib(num);
  print("The fib(${num}) is: $result");
}

int Fib(int num)
{
  if (num <= 1) {
    return num;
  }

  return Fib(num - 1) + Fib(num -2);
}