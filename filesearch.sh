#!/bin/sh


echo "Enter word"
read word
flag=0
for file in $*
do
	grep $word $file
	if [ $? -eq 0 ]
	then 
		flag=1
		echo "Word found in $file"
		break
	fi
done
if [ $flag -eq 0 ]
then
	echo "Not found"
fi
