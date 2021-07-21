#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Hi Please Enter Your Count as per your Guess?"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Good Try! Your Guess is Less than the Actual Count"
        elif [ $number -gt $true_ans ]
        then
            echo "Going Well! Your Guess is Greater than the Actual Count"
        else
            echo " Many Congratulations!!! You have Guessed Correct Count!"
        break;
        fi
    done
}
echo "Hi There! Welcome to the Game! How Many Files are there in Current Directory??"
guess

