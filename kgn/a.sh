#!/bin/bash
echo "enter the number";
read a;
echo "enter the 2nd number";
read b;
c=` expr $a+$b|bc `;
echo "Sum is =$c";
