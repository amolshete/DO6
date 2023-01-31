#!/bin/bash

users="tarun siddhartha srikrishna"

for USR in $users
do 
	echo "adding user $USR"
	adduser $USR
	id $USR
done
