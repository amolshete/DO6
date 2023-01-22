#!/bin/bash

sudo yum install wget httpd unzip -y > /dev/null

sudo systemctl start httpd
sudo systemctl enable httpd

mkdir -p /tmp/webfile

cd /tmp/webfile


wget https://www.tooplate.com/zip-templates/2102_constructive.zip &> /dev/null
unzip 2102_constructive.zip > /dev/null

sudo cp -r 2102_constructive/* /var/www/html/

sudo systemctl restart httpd

ls /var/www/html/

sudo systemctl status httpd

rm -rf /tmp/webfile
