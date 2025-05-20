#!/bin/bash
echo Enter a number
read num
while true;
do 
echo -e "\n1.Sum of digits\n2.Reverse of number\n3.Palindrome\n4.Exit"
read ch
case $ch in 
1)
   sum=0
   temp=$num
   while ((temp > 0)); do
     rem=$((temp % 10))
     sum=$((sum + rem))
     temp=$((temp / 10))
    done
   echo "Sum of digits is $sum"
 ;;
 2)
 rev=0
 temp=$num
 while ((temp > 0)); do
    rem=$((temp % 10))
    rev=$((rev * 10 + rem))
    temp=$((temp / 10))
 done
 echo "Reversed number is $rev"
 ;; 
 3)
  rev=0
 temp=$num
 while ((temp > 0)); do
    rem=$((temp % 10))
    rev=$((rev * 10 + rem))
    temp=$((temp / 10))
 done 
 if [ $rev -eq $num ]
 then
 echo $num is palindrome
 else
 echo $num is not palindrome
 fi 
 ;;
 4)
 echo Exiting
 exit 1
 break
 ;; 
 *)
 echo invalid choice
 ;;
 esac
 done
 
