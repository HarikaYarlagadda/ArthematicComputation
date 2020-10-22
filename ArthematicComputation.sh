#!/bin/bash
read -p "enter first number:" number1
read -p "enter second number:" number2
read -p "enter third number:" number3
operation1=$(( $number1+$number2*$number3 ))
echo $operation1
operation2=$(( $number1*$number2+$number3 ))
echo $operation2
operation3=$(( $number3+$number1/$number2 ))
echo $operation3
operation4=$(( $number1%$number2+$number3 ))
echo $operation4
