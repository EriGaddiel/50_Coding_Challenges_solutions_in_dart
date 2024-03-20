// Converting to an array of characters

void main(List<String> args) {
  String str = "HelloWorld";

  List<String> result = stringToCharArray(str);
  print(result);
}


List<String> stringToCharArray(String str){

  List<int> runes = str.runes.toList();

  return runes.map((rune) => String .fromCharCode(rune)).toList();
}

