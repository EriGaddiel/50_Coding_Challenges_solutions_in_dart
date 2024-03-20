// Converting string containing binary numbers into numbers


void main(List<String> args) {
  String binaryString = "011011101";

  int result = binaryToNumber(binaryString);
  print("$binaryString -> $result");
}


int binaryToNumber(String binaryString){
  if (!RegExp(r'^[01]+$').hasMatch(binaryString)) {
    throw FormatException("Invalide binary string: , $binaryString");
  }

  return int.parse(binaryString, radix: 2);
}