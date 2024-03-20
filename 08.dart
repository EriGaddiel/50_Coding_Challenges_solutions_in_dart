// Function to convert from Fahrenheit to Celcuis

double convertToFehr(var celcuis){
    return (celcuis * 9/5) + 32;
}

void main()
{
    double c = convertToFehr(500);
    print("temperature in celcius is ,${c}"); 
}