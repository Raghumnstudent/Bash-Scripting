#!/bin/bash
#Author: Raghu M N
#Vesrion: 
#Purpose: Understanding the case statement
#Created date: Monday 03 July 2023 09:09:02 AM IST
#Modified date: 


<<details

syntax:

case value_to_be_checke in
actual_value_1)
block of code execution for actual value 1 satisfaction
;;
actual_value_2)
block of code execution for actual value 2 satisfaction
;;
actual_value_3)
block of code execution for actual value 3 satisfaction
;;
actual_value_4)
block of code execution for actual value 4 satisfaction
;;
*)
  echo "invalid option"
;;
esac

details

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
echo "Available juices in Apple are a1 a2 a3"
;;
banana | Banana | BANANA)
echo "you entered fruit is banana"
echo "Available juices in Banana are b1 b2 b3"
;;
orange | Orange | ORANGE)
echo "you entered fruit is orange"
echo "Available juices in Orange are o1 o2 o3"
;;
graps | Graps | GRAPS)
echo "you entered fruit is graps"
echo "Available juices in Grap are g1 g2 g3"
;;
*)
echo "unknow fruit"
;;
esac

