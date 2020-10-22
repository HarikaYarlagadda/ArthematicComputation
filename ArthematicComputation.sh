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

declare -A operations
operations[1]=$operation1
operations[2]=$operation2
operations[3]=$operation3
operations[4]=$operation4
echo ${operations[@]}
variable=${operations[@]}
for values in $variable
do
	array[count]=$values
	count=$(( $count+1 ))
done
echo "array values" ${array[@]}
for (( i=0 ; i < ${#array[@]}; i++ )) 
do
    for (( j=0 ; j < ${#array[@]}; j++ )) 
    do
      if [[ ${array[$j]} -lt  ${array[$i]} ]]
      then
        tmp=${array[$i]}
        array[$i]=${array[$j]}
        array[$j]=${tmp}
      fi
    done
done

for n in "${array[@]}"
do
    echo "$n"
done
