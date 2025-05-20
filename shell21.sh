#!/bin/bash

echo "Enter number of students:"
read n

echo "Marklist of Students" > marklist.txt
echo "---------------------------------" >> marklist.txt
echo "Name | RegNo | Total | Percentage | Grade" >> marklist.txt
echo "---------------------------------" >> marklist.txt

for ((i=1; i<=n; i++))
do
    echo "Enter Name:"
    read name
    echo "Enter Registration Number:"
    read regno
    
    total=0
    for ((j=1; j<=5; j++))
    do
        echo "Enter marks for Subject $j:"
        read marks
        total=$((total + marks))
    done

    percentage=$((total / 5))

    if ((percentage >= 90))
    then
        grade="A+"
    elif ((percentage >= 80))
    then
        grade="A"
    elif ((percentage >= 70))
    then
        grade="B"
    elif ((percentage >= 60))
    then
        grade="C"
    elif ((percentage >= 50))
    then
        grade="D"
    else
        grade="F"
    fi

    echo "$name | $regno | $total | $percentage% | $grade" >> marklist.txt
done

echo "Marklist generated is "
cat marklist.txt
