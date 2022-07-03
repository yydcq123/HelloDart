#include<bits/stdc++.h> 

using namespace std;

int main( )
{
    int a;
      for (int i = 1; i <= 1000; i++) {
         a = 0;
         for (int j = 1; j < i; j++)
            if (i % j == 0)
               a = a + j;
         if (a == i)
            cout<<i << " ";
    return 0;
}