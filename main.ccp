/*  Number Guesser
    Code: 
    Author: Luke Belden
    Pizzaz 1: 
    Pizzaz 2:  
*/


#include <iostream>
#include <stdlib.h>
#include <time.h>
#include <string>

using namespace std;

int main()
{
    string comment;
    int randomNumber;
    int high = 0; 
    int low = 0;
    char range;
    char talk;
    
    cout << "Think of a number between 1-100 then the computer will guess your number" << endl << "h: for higher and l: for lower." << endl;
    cout << endl << "If you're ready then press r then enter. " << endl;
    cin >> talk;

    srand(time(NULL));
    randomNumber=rand()%100+1;


        cout << endl << "Is this number correct: " << randomNumber << endl;
        cin >> comment;
while(comment == "no")        
{
    cout << endl << "Is your number higher or lower" << endl;
    cin >> range;
        if(range == 'h')
	    {
	        cout << "Dang it. It need to be higher";
	        high = high+1;
	        randomNumber = randomNumber+high;
	    }
        if(range == 'l')
	    {
	        cout << "Dang it. It need to be Lower";
	        low = low+1;
	        randomNumber = randomNumber-low;
	    }
	    cout << endl << "Is this correct now? " << randomNumber << endl;
	    cin >> comment;
}
	    if(comment == "yes")
	    {
	        cout << "yay! I got it";
	        return 0;
	    }
}
