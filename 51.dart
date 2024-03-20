// Find the frequency of letters inside a string

void main(List<String> args) {
  String text = "Here are dart developers";
  List<List<int>> result = letterFrequency(text);
  print("Letter frequencies:");
  for (List<int> letterCount in result) {
    String letter = String.fromCharCode(letterCount[0]);
    int count = letterCount[1];
    print(" - $letter: $count");
  }
 }

List<List<int>> letterFrequency(String text){

  text = text.toLowerCase();

  Map<String , int> letterCounts = {};
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    if (RegExp(r'[a-z]').hasMatch(char)) {      
      letterCounts[char] = letterCounts[char] ?? 0 + 1;
    }
  }

  List<List<int>> frequencyList = [];
  letterCounts.forEach((letter, count) => frequencyList.add([letter.codeUnitAt(0), count]));

  return frequencyList;
}