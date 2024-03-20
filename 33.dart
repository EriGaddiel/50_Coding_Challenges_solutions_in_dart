// Sum of numbers in a comma delimited string

void main(List<String> args) {
  String CommaSeperatedString = "1,2,3,4,5,6,7,8,9,0";
  int result = sumCommaSeparateedNumbers(CommaSeperatedString);
  print("Sum of numbers in this string [$CommaSeperatedString] is : $result");
}

int sumCommaSeparateedNumbers(String CommaSeperatedString){
  if (CommaSeperatedString.isEmpty) {
    return 0;
  }

  List<String> numbers = CommaSeperatedString.split(",");

  int sum = 0;
  for (String numberStr in numbers) {
    try {
      sum += int.parse(numberStr.trim()); 
    } on FormatException{
      print("Error parsing number: $numberStr");
    }
  }

  return sum;
}