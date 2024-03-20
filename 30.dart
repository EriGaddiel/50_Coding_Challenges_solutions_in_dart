// Adding intergers of indefinite size

void main(List<String> args) {
  String num1 = "123456789012345678901234567890";
  String num2 = "987654321098765432109876543210";

  String result = addStrings(num1, num2);

  print("the sum of $num1 and $num2 is: $result");
}

String addStrings(String num1, String num2){

  if(num1.isEmpty || num2.isEmpty){
    throw ArgumentError("Input String cannot be empty.");
  }

  String result = "";
  int carry = 0;
  int digitIndex = 0;

  while (digitIndex < num1.length || digitIndex < num2.length || carry > 0) {
    int digit1 = digitIndex < num1.length ? int.parse(num1[num1.length - 1 -digitIndex]) : 0; 
    int digit2 = digitIndex < num2.length ? int.parse(num2[num1.length - 1 -digitIndex]) : 0;

    int sum = digit1 + digit2 + carry;
    carry = sum ~/ 10;
    result = (sum % 10).toString() + result;

    digitIndex ++; 
  }
  return result;
}