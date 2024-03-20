// Sum of even numbers greater then 10n and less than 30

void main()
{
    int sum = 0;
    for (int i = 11; i < 30; i++) {
        if(i%2 == 0)
        {
          sum += i;
        }
    }

    print("The sum of all even number between 10 and 30 is : $sum");
}