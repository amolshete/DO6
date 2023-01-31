#!/bin/bash


cat /var/run/httpd/httpd.pid &> /dev/null 
date
if [ $? -eq 0 ]
then
	echo "apache httpd process is running "
else
	echo "httpd is not running"
	echo "starting the httpd process"
	systemctl start httpd
	if [ $? -eq 0 ]
	then
		echo "Process started successfully"
	else
		echo "contact to IT admin there is something wrong with httpd process"
	fi	
fi
echo "######################################################################"
