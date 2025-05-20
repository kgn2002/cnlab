#!/bin/bash

read -p "Enter the limits: " start limit

echo "Prime numbers from $start  up to $limit are:"

for (( num=$start; num<=limit; num++ ))
do
    is_prime=1
    for (( i=2; i*i<=num; i++ ))
    do
        if (( num % i == 0 ))
        then
            is_prime=0
            break
        fi
    done

    if (( is_prime == 1 ))
    then
        echo $num
    fi
done
