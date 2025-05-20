#!/bin/bash
echo "Enter the filename $1"
echo "Enter the starting line  $2 "
echo "Enter the  ending line $3"
if [ -e $1 ]
then
if [ $3 -gt $2 ]
then 
head -n $3 $1|tail -n +$2
fi
else
echo file not exist
fi
