#!/bin/bash/
while true;
do
echo -e "\n1.Read two numbers\n2.Swap numbers\n3.Exit"
read i
case $i in 
1)
echo Enter two integers
read a b
echo a=$a b=$b 
;;
2)
temp=$a
a=$b
b=$temp
echo a=$a b=$b 
;;
3)
echo exiting
break
;;
*)
echo invalid choice
esac
done
if [ $a -gt $b ]
then
echo `expr $a \* $b`
elif [ $a -lt $b ]
then 
echo `expr $a + $b `
fi

