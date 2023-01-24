#!/bin/sh

echo "Enter the numbers and z to finish"
n="0"
pos=0
neg=0
count=0
read n
while [ "$n" != "z" ]
do
	
	count=$(($count+1))
	if [ $n -gt 0 ]
	then 
		pos=$(($pos + 1))
	elif [ $n -lt 0 ]
	then 
		neg=$(($neg + 1))
	fi
	read n
done

echo "Count : $count"
echo "Pos : $pos"
echo "Neg : $neg"
