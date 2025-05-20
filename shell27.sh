#!/bin/bash/
echo Enter two integers
read a b
if [ $a -gt $b ]
then
echo `expr $a \* $b`
elif [ $a -lt $b ]
then 
echo `expr $a + $b `
fi

