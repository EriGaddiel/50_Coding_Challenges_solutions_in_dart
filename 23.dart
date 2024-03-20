// Reverse string

void main(List<String> args) {
  String string = "Hello";

  String result = ReverseString(string);
  print("The reversed string is: $result");
}

String ReverseString(String string)
{
    return string.split('').reversed.join('');
}