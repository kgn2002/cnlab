#!/bin/bash
echo Enter the number of files to read
read n
for ((i=1;i<=n;i++))
do
echo enter the file name
read a
if [ -e $a ]
then
echo $a >> t.txt
else
echo $a >> u.txt
fi
done
sort t.txt -o t.txt
sort u.txt -o u.txt
cat t.txt u.txt
ls a*|wc -l 
