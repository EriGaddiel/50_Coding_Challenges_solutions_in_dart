// REturn the number of words to a text 


void main(List<String> args) {
  String text = " DART IS COOL BRO";

  int result = countWords(text);
  print("The number of words in $text is: $result");
}


int countWords(String text){
  if (text.isEmpty) {
    return 0;
  }

  List<String> words = text.split(RegExp(r"\s+"));

  return words.length - 1;
}