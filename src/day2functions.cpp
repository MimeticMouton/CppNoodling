#include <iostream>
using namespace std;

void HiFunction()
{
    cout << "In Hi! Function\n";
}
int main()
{
    cout << "In main\n";
    HiFunction();
    cout << "Back in main\n";
    return 0;

}
