// Bubble sort fofr Arrays of numbers


void main(List<String> args) {
  List<int> numbers = [1,3,0,4,7,6,5,8,9,2];
  bubbleSort(numbers);
  print(numbers);
}


void bubbleSort(List<int> numbers){
  if (numbers.isEmpty || numbers.length == 1) {
    return;
  }

  for (int i = 0; i < numbers.length; i++) {
    bool swapped = false;

    for (int j = 0; j < numbers.length - 1 - i; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j+1];
        numbers[j+1] = temp;
        swapped = true;
      }
    }

    if (!swapped) {
      break;
    }
  }
}