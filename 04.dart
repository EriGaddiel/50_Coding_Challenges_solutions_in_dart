// All Multiplication table from 1 to 10

void main()
{
    for (int i = 1; i <= 10; i++) {
        for (int j = 1; j < 10; j++) {
            print("$j * $i = ${i*j}");
        }
        print("\n");
    }
}