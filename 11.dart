// Average of Elements in array

void main(List<String> args) {
    var array = [1,2,3,4,5,6,7,8,9,10];

    double result = AverageOfElementInArray(array);

    print("The avarage of elements in here is : $result");
}

double AverageOfElementInArray(List<int> array)
{
    int sum = 0;

    for (var i = 0; i < array.length; i++) {
        sum += array[i];
    }
    return sum/array.length;
}