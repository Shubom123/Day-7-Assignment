#!/bin/bash -x

array[0]="2"
array[1]="3"
array[2]="-8"
array[3]="4"
array[4]="1"
array[5]="5"
array[6]="-1"

for (( i=o; i<=4; i++ ))
do
	echo ${array[i]}
	
	for (( j=$((i+1)); j<=5; j++ ))
	do
		echo ${array[j]}

		for (( k=$((j+1)); k<=6; k++ ))
		do
			sum=$((${array[i]}+${array[j]}+${array[k]}))

			if [ $sum -eq 0 ]
			then
				echo ${array[i]}, ${array[j]}, ${array[k]}
				
				exit 0
			fi
		done
	done
done

