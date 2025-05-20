#!/bin/bash
echo Enter the number
read num
echo enter the digit to find occurence
read r
count=0
temp=$num
while ((temp > 0))
do
rem=$((temp % 10))
if [ $rem -eq $r ]
then
count=$((count + 1))
fi
temp=$((temp / 10))
done
echo "Count is $count "
