#!/bin/bash
echo "Enter a number"
read num
echo "Operations on the number"

while true; do
    echo -e "\n1. Odd or even\n2. Reverse\n3. Sum of digits\n4. Exit"
    read choice
    case $choice in 
        1)
            if ((num % 2 == 0)); then
                echo "$num is even"
            else
                echo "$num is odd"
            fi
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
            sum=0
            temp=$num
            while ((temp > 0)); do
                rem=$((temp % 10))
                sum=$((sum + rem))
                temp=$((temp / 10))
            done
            echo "Sum of digits is $sum"
            ;;
        4)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done
