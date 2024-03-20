// Return Boolen if prime or not

void main(List<String> args) {
  int num =7;
  bool result = isPrime(num);
  print("Is prime? Ans: $result");
}


bool isPrime(int num)
{
  int count = 0;

  for (int i = 1; i <= num/2; i++) {
    if(num % i == 0){
      count ++;
    }
  }

  if(count == 1)
  { 
    return true;
  }else{
    return false;
  }
}