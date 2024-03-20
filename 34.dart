// Return an array with words inside a text

void main(List<String> args) {
  String text = " Dart is cool";

  List<String> result = splitTextToWords(text);
  print("The words in $text are: $result");
}

List<String> splitTextToWords(String text){
  if (text.isEmpty) {
    return [];
  }

  List<String> words = text.split(RegExp(r"\s+"));

  return words;
}