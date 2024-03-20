// /fucntion to convert from Celcuis to Fahrenheit

void main() {
  double result = convertToCel(32);
  print("Temperature in farhenheit: $result");
}

double convertToCel(var fahrenheit)
{
    return (fahrenheit-32)*(5/9);
}