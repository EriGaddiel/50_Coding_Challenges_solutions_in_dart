// Fibonancci of 10

void main(List<String> args) {
      int num1=0,num2=1,count=0;
      print("Fib(10)");
      while(count<=10){
        print("$num1, \t");
          int nth = num1+num2;
          num1 = num2;
          num2 = nth;
          count ++ ;
      }
}

