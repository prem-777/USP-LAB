#!/bin/sh

echo "Enter number"

read n


z=0
sum=0
	c=$(($n-1))
	while [ $c -gt 0 ]
	do 
		k=2
		count=0
		while [ $k -lt $c ]
		do 
			if [ $(($c % $k)) -eq 0 ]
			then
				count=$(($count + 1))
			fi
			k=$(($k + 1))
		done
		if [ $count -eq 0 ]
		then
			z=$(($z +1))
			sum=$(($sum + $c))
		fi
		c=$(($c - 1))
	if [ $z -eq 2 ]
	then 
		break
	fi 
	n=$c
	done

echo "Sum is : $sum"
