//  Converting a string to and array of ASCII codes of characters

void main(List<String> args) {
  String str = "HelloWorld";

  List<int> result = stringToAsciiCodes(str);
  print(result);
}

List<int> stringToAsciiCodes(String str)
{
  List<int>  runes = str.runes.toList();

  return runes.where((rune) => rune <= 127).toList();
}