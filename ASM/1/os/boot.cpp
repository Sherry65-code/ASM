#include<iostream>
using namespace std;
int main()
{
    char al;
    al = 'A';
    while (true){
        cout << al;
        al+=32;
        cout << al;
        al+=1;
        al-=32;
        if (al == 'Z'+1){
            break;
        }
    }
    cout << endl;
}