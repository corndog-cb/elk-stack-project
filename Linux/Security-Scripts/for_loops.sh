#!/bin/bash

numList=(0 1 2 3 4 5 6 7 8 9)

stateList=('Georgia' 'California' "North Carolina" "New York" 'Florida')

lsOutput="$(ls)"

echo $lsOutput

echo ${numList[@]}

echo ${stateList[3]}

for i in ${numList[@]};
do
	if [ $i -eq 3 ] || [ $i -eq 5 ] || [ $i -eq 7 ];
	then 
		echo $i
	fi
done


for s in "${stateList[@]}";
do
	if [ "$s" = "New York" ];
	then
		echo $s
		echo "New York is the best!"
	else 
		echo $s
		echo "I'm not fond of New York"
	fi

done


for list in $lsOutput;
do
	echo $list
done
