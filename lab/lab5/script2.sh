#!/bin/sh

#echo "please enter your first_number : number1"
read -p "please enter your first_number :" number1
#echo "please enter your second_number : number2"
read -p "please enter your second_number :" number2


if [ $number1 -lt $number2 ]
then
        echo "number1 is less than number2"

elif [ $number1 -gt $number2 ]
then
        echo "number1 is greater then number2 "

else
                echo "number1 is equal to the number2 "
        fi

