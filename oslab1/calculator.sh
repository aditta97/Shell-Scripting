#!/bin/bash
echo "Simple Calculator using Switch case"
sum=0
i="y"
echo "Enter first number"
read num1
echo "Enter second number"
read num2
while [ $i = "y" ]
do
	echo "1. Addition"
	echo "2. Subtraction"
	echo "3. Multiplication"
	echo "4. Division"
	echo "Enter your choice: "
	read choice

	case $choice in
		1)sum=$(($num1+$num2))
			echo "Addition is : " $sum;;
		2)sub=$(($num1-$num2))
			echo "Subtraction is : " $sub;;
		3)mul=$(($num1*$num2))
			echo "Multiplication is : " $mul;;
		4)div=$(($num1/$num2))
			echo "Division is : " $div;;
		*)echo "Invalid Choice"
	esac
	echo "Do you want to continue?"
	read i
	if [ $i != "y" ]
	then
		exit
	fi
done