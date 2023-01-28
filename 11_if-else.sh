#!/bin/bash

read -p "Enter the number: " Num

echo

if [ $Num -gt 100 ]
then 
	echo "number is greater than 100"
else
       echo "number is less than 100"	
fi

echo "script execution is done"
