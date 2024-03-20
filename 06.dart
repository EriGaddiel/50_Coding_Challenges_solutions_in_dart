//  Factorial of 10!

void main()
{
  int fact = 1;

  for (int i = 1; i <= 10; i++) {
      fact *= i;
  }

  print("10! = $fact");
}