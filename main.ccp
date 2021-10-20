/*  Number Guesser
    Code: 
    Author: Luke Belden
    Pizzaz 1: Loop (go again) #29
    Pizzaz 2: number assist (the current number on the right side to help you) 
*/

#include <iostream>
#include <stdlib.h>
#include <time.h>
#include <string>

using namespace std;

int main()
{
    string choice;
    string comment;
    int randomNumber;
    int high = 0; 
    int low = 0;
    char range;
    char talk;
    
    //starting
    cout << "Think of a number between 1-100 then the computer will guess your number" << endl << "h: for higher and l: for lower." << endl;
    cout << endl << "If you're ready then press r then enter. " << endl;
    cin >> talk;
    
while(choice != "no")//exit function
{  
    srand(time(NULL)); //randomize number
    randomNumber=rand()%100+1;
    
        cout << "                                                                                          " << randomNumber << endl;
        cout << endl << "Is this number correct: " << randomNumber << endl;
        cin >> comment;
       

    while(comment == "no")//input if the number need to be higher or lower
        {
        cout << endl << "Is your number higher or lower" << endl;
        cout << "                                                                                          " << randomNumber << endl;
        cin >> range;
            
            if(range == 'h')
    	    {
    	        cout << endl << "Dang it. It need to be higher";
    	        high = high+1;
    	        randomNumber = randomNumber+high;
    	    }
    	    
            if(range == 'l')
    	    {
    	        cout << endl << "Dang it. It need to be Lower";
    	        low = low+1;
    	        randomNumber = randomNumber-low;
    	    }
    	    
    	    cout << endl << "Is this correct now? " << randomNumber << endl;
    	    cin >> comment;
            }    
    
    	    if(comment == "yes")//number is correct
    	    {
    	        cout << "yay! I got it";
    	        cout << endl << endl <<"do you want to continue?" << endl;
    	        cin >> choice;//choice to the loop to continue playing
        }
    }
}
