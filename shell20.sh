#!/bin/bash
echo Enter the number to check prime or not
read num
c=0
for ((i=1; i<=num;i++))
do
if ((num % i == 0))
then
c=$((c + 1))
fi
done
if [ $c -eq 2 ]
then
echo $num is prime
else
echo $num is not prime
fi
