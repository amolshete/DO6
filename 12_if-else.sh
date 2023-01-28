#!/bin/bash


value=`ip address show | grep -v LOOPBACK | grep -ic mtu`

if [ $value -eq 1 ]
then
	echo "You have 1 interface"
elif [ $value -gt 1]
then	
	echo "You have multiple interface"
else 
     echo "No active interface"
fi
