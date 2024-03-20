// Max Element in an array

void main(List<String> args) {
  var array=[2,5,4,12,6,9,8,10,24,50];
  
  int max = MaxOfArray(array);
  print("the max element in the array is:$max");
  
}

int MaxOfArray(List<int> array)
{
    int max = array[0];
    for (var i = 1; i < array.length; i++) {
        if (max < array[i] ) {
          max = array[i];
        }
    }
    return max;
}