// Shuffle an array of strings 

void main(List<String> args) {
  List<String> strings = ["Hello world"];
  List<String> result = shuffleStrings(strings);
  print(strings);
  print("Shuffle String: $result");
}


List<String> shuffleStrings(List<String> strings){
  strings.shuffle();
  return strings;
}