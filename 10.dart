// Sum of all ellement in the array
void main() {
   var array = [1,2,3,4,5,6,7,8,9,10];

   int result = SumOfELmementsInArray(array);  

   print("THe sum of all elements is: $result");
}


// Fuctio that returns the sum of elements in an array 
int SumOfELmementsInArray(List<int> array)
{
    int i, sum = 0;
    for (i = 0; i < array.length; i++) {
      sum = sum + array[i];
    }

    return sum;
}



