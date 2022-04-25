#!/bin/bash -x

read -p "Enter number:" num

if [ $num -le 100 ]
then
	for (( i=2; i<=$num; i++ ))
	do
		div=$(($num%$i))

		if [ $div -eq 0 ]
		then
			prime=$i
			a[$i]=$prime
		fi
	done

	echo ${a[@]}
else
	echo wrong number
fi
