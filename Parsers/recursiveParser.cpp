#include <bits/stdc++.h>
#define endmarker '$'
#define error 0
#define success 1
#define print(a) cout << a << endl

using namespace std;

char *input;

void advance()
{
    input++;
}

bool A()
{
    if (*input == 'c')
    {
        advance();
        if (*input == 'd')
            advance();
        return success;
    }
    else
        return error;
}

bool S()
{
    if (*input == 'a')
    {
        advance();

        if (A() != error)
        {
            if (*input == 'b')
            {
                advance();
                if (*input == endmarker)
                    return success;
                else
                    return error;
            }
        }
        else
            return error;
    }
    else
        return error;
}

int main()
{
    freopen("in.txt", "r", stdin);
    string w;
    cin >> w;
    // Append the end marker to string w to be parsed
    w += endmarker;

    // Set the input pointer to the left most token of w
    input = &*w.begin();

    if (S() != error)
        print("Successful Parsing");
    else
        print("Failure");
    return 0;
}