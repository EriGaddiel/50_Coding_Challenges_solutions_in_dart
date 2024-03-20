// Sum of digit of a positve number interger

void main(List<String> args) {
  int sum = 0, num = 210, digit = 0;

  while( num != 0){
    digit = num%10;
    sum += digit;
    num ~/= 10;
}
print("Sum of digit in $num is: $sum");
}