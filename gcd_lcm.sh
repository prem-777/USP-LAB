#!/bin/sh

if [ $1 -lt $2 ]
then 
	n=$1
	m=$2
else
	n=$2
	m=$1
fi
gcd=0
for i in $(seq 1 $n)
do
#	echo $i
	if [ $(($n % $i)) -eq 0 ] && [ $(($m % $i)) -eq 0 ]
	then
		gcd=$i
	fi
done

for j in $(seq $m $(($m * $n)))
do
        if [ $(($j % $n)) -eq 0 ] && [ $(($j % $m)) -eq 0 ]
	then 
		echo "LCM : $j"
		break
	fi
done

echo "GCD : $gcd"
