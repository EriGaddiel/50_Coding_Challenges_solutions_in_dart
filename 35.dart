// Convert a CSV text to a bi-dimensional array

void main(List<String> args) {
  String csvText = "John, London\nMary, NewYork\nAdrien, Sengapore";

  List<List<String>> data = parseCSv(csvText);
  print(data);
}


List<List<String>> parseCSv(String csvText){
  if (csvText.isEmpty) {
    return [];
  }

  List<String> lines = csvText.split('\n');

  List<List<String>> data = [];

  for (String line in lines) {
    List<String> cells = line.split(",");

    cells = cells.map((cell) => cell.trim()).toList();

    data.add(cells);
  }

  return data;
}