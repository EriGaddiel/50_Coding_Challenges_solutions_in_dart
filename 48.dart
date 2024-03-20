// Return the longest word in the sentence


void main(List<String> args) {
  String str = "I am a mobile app developer";
  String longestWord = findLongestWord(str);
  print("Longest word in [$str] is: $longestWord");
}

String findLongestWord(String str){

  if (str.isEmpty) {
    return "";
  }

  List<String> words = str.split(' ');
  String longestWord = words[0];

  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }

  return longestWord;
}