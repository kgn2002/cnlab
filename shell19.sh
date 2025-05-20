#!/bin/bash
echo Choice the bank operation
balance=0
while true;
do
echo -e "\n1.Deposit amount\n2.Withdraw\n3.Exit"
read ch
case $ch in 
1)
echo Enter the amount
read a
if [ $a -gt 0 ]
then
balance=$((balance + $a))
echo $a deposited and avail bal $balance
else 
echo enter positive amount only
fi
;;
2)
echo Enter the Withdraw amount
read w
if [ $w -gt 0 -a $w -lt $balance ]
then
balance=$((balance - w))
echo $w debited and avail bal $balance 
else 
echo not possible
fi
;;
3)
echo exit
exit 1
break
;;
*)
echo invalid option
;;
esac
done
