#!/bin/sh

echo "Enter n"
read n

k=1
while [ $k -le $(($n - 1)) ]
do
	for i in $(seq 1 $(($n-$k)))
	do
		echo " \c"
	done
	for j in $(seq 1 $(($k * 2-1)))
	do
		echo "*\c"
	done
	echo ""
	k=$(($k + 1))

done
while [ $k -gt 0 ]
do
        for i in $(seq 1 $(($n-$k)))
        do
                echo " \c"
        done
        for j in $(seq 1 $(($k * 2-1)))
        do
                echo "*\c"
        done
        echo ""
        k=$(($k - 1))

done
