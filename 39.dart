// Implementation of the Caeser cypher


void main(List<String> args) {
  String originalText = "Hello, World"; 

  // Encryting with a shift of 3 (positive encryption)
  String encryptText = caeserCypher(originalText, 3, true);
  print("Encrypted Text: $encryptText");

  String dencryptText = caeserCypher(encryptText, -3, false);
  print("Encrypted Text: $dencryptText");
}

String caeserCypher(String text, int shift, bool encrypt){
  if(text.isEmpty){
    return text;
  }

  final alphabet = 'abcdefghijklmnopqrstuvwxyz';
  final upperAlphabet = alphabet.toUpperCase();

  String result = '';
  for (var i = 0; i < text.length; i++) {
    int charCode = text.codeUnitAt(i);

    if (charCode >= 65 && charCode <= 90) {
      int newIndex = (charCode - 65 + shift) % 26;
      result += upperAlphabet[newIndex];
    }else if(charCode >= 97 && charCode <= 122){
      int newIndex = (charCode -  97 + shift) % 26;
      result += alphabet[newIndex];
    }else{
      result += String.fromCharCode(charCode);
    }
  }

  return result;
}