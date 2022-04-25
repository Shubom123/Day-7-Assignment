#!/bin/bash -x

n=11

for (( i=1; i<=9; i++ ))
do
	mul=$(($n*$i))
	a[i]=$mul
done

echo ${a[@]}
