#!/bin/bash

PACKAGE="wget httpd unzip"
SERVICE="httpd"
URL="https://www.tooplate.com/zip-templates/2102_constructive.zip"
ART="2102_constructive"
TEMPDIR="/tmp/webfile"



sudo yum install $PACKAGE -y > /dev/null

sudo systemctl start $SERVICE
sudo systemctl enable $SERVICE

mkdir -p /tmp/webfile

cd $TEMPDIR


wget $URL &> /dev/null
unzip $ART.zip > /dev/null

sudo cp -r $ART/* /var/www/html/

sudo systemctl restart $SERVICE

ls /var/www/html/

sudo systemctl status $SERVICE

rm -rf $TEMPDIR
