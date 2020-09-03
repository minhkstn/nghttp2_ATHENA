// Example program
#include <iostream>
#include <string>

int main()
{
  int a[6] = {0, 1, 2, 3, 4, 5};
  int b[40] = {0};
  
  int I = 3;  
  int J = 2; //# columns
  int X = 6;
  int Y = 4; //# columns

  for (int n = 0; n < I*J; n ++){
    b[(n/J)*2*Y + (n%J)*2] = a[n];
    b[(n/J)*2*Y + (n%J)*2+1] = a[n];
    b[((n/J)*2+1)*Y + (n%J)*2] = a[n];
    b[((n/J)*2+1)*Y + (n%J)*2+1] = a[n];
  }

  std::cout << "Input: \n";

  for (int i = 0; i < I; i++){
      
      for (int j = 0; j < J; j++){
          std::cout << a[i*J+j] << '\t';
      }
      std::cout << '\n';
  }

  std::cout << "\n Output: \n";

  for (int i = 0; i < X; i++){
      
      for (int j = 0; j < Y; j++){
          std::cout << b[i*Y+j] << '\t';
      }
      std::cout << '\n';
  }

  return 0;
}
