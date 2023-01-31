#!/bin/bash


counter=2

while true
do
	echo "value of counter is $counter"
	sleep 1
	echo "##############################"
	counter=$(( $counter * 2 ))
done	
