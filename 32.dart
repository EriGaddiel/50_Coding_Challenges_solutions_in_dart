// Capitalize first letter in a text


void main(List<String> args) {
  String text = "Dart is reallly cool";

  String result = capitalizeFirstLetters(text);
  print(result);
}

String capitalizeFirstLetters(String text){
  if (text.isEmpty) {
    return text;
  }

  List<String> words = text.split(' ');
  words = words.map((word) => word[0].toUpperCase() + word.substring(1)).toList();

  return words.join(' ');
}