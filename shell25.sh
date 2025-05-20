#!/bin/bash

echo "Enter number of students:"
read n

echo "Marklist of Students" > marklist.txt
echo "---------------------------------" >> marklist.txt
echo "Name | Total | Percentage | Grade" >> marklist.txt
echo "---------------------------------" >> marklist.txt

for ((i=1; i<=n; i++))
do
    echo "Enter Student Name:"
    read name
    
    total=0
    for ((j=1; j<=3; j++))
    do
        echo "Enter marks for Subject $j (out of 100):"
        read marks
        total=$((total + marks))
    done

    percentage=$((total / 3))

    # Assigning grades based on percentage
    if ((percentage >= 80))
    then
        grade="A"
    elif ((percentage >= 70))
    then
        grade="B"
    elif ((percentage >= 60))
    then
        grade="C"
    else
        grade="D (Failed)"
    fi

    echo "$name | $total | $percentage% | $grade" >> marklist.txt
done

echo "Marklist generated in 'marklist.txt'"
cat marklist.txt
