#!/bin/bash


counter=0

while [ $counter -lt 5 ]
do
	echo "value of counter is $counter"
	sleep 1
	echo "##############################"
	counter=$(( $counter + 1 ))
done	
