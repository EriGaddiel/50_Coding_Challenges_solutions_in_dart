// Converting ASCII codes to their coresponding array of characters

void main(List<String> args) {
  List<int> asciiCodes = [72, 101, 108, 108, 111, 87, 111, 114, 108, 100];

  String result = asciiCodeToString(asciiCodes);
  print(result);
}

String asciiCodeToString(List<int> asciiCodes){
  if (asciiCodes.any((code) => code < 0 || code > 127)) {
    throw ArgumentError("Input list containing invalide ASCII codes (outside range 0-127)");
  }

  return String.fromCharCodes(asciiCodes);
}