#!/bin/bash
echo entr the radius of cicrle
read r
echo circumfrence is `expr 2*3.14*$r|bc`
echo area is `expr 3.14*$r*$r| bc`
