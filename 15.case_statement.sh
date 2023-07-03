#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the case statement
#Created date: Monday 03 July 2023 09:09:02 AM IST
#Modified date: 

read -p "Enter a number: " a
read -p "Enter another number: " b

echo "Enter 1 if you want to do the Addition of above numbers: "
echo "Enter 2 if you want to do the Subtraction of above numbers: " 
echo "Enter 3 if you want to do the Multiplication of above numbers: "
echo "Enter 4 if you want to do the Divition of above numbers: "
echo "Enter 5 if you want to do the module divition: " 

read -p "Enter the value: " v

case $v in
1)
echo "The sum is $(($a+$b))"
;;
2)
echo "The subtraction is $(($a-$b))"
;;
3)
echo "The multiplication is $(($a*$b))"
;;
4)
echo "The divition is $(($a/$b))"
;;
5)
echo "The module divition is $(($a%$b))"
;;
*)
echo "Invalid option"
;;
esac

read -p "Enter the name of fruit: " fruit

case $fruit in
apple | Apple | APPLE)
echo "you entered fruit is apple"
;;
banana | Banana | BANANA)
echo "you entered fruit is banana"
;;
orange | Orange | ORANGE)
echo "you entered fruit is orange"
;;
graps | Graps | GRAPS)
echo "you entered fruit is graps"
;;
*)
echo "unknow fruit"
;;
esac

