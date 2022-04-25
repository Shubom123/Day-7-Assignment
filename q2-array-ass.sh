#!/bin/bash -x

for((i=0; i<10; i++))
do
    a[i]=$((RANDOM%900+100))
done

echo "${a[@]}"

a=($(printf '%d\n' "${a[@]}"|sort -n))

echo "The sorted array is: "
echo "${a[@]}"

echo "The second largest element is ${a[-2]}"
echo "The second smallest element is ${a[1]}"

