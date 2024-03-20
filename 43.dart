// Extracting column from the bi-dimensional array to a uni dimensional array


void main(List<String> args) {
  List<List<dynamic>> array = [[1,2],[3,4],[5,6]];
  List<dynamic> column = extratColumn(array, 1);
  print(column);
}


List<dynamic> extratColumn(List<List<dynamic>> array, int columnIndex){

  if (array.isEmpty || columnIndex >= array[0].length) {
    return [];
  }

  List<dynamic> column = [];
  for(List<dynamic> row in array){
    column.add(row[columnIndex]);
  }

  return column;
}