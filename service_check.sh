#!/bin/bash

status=`systemctl status jenkins.service | awk NR==3 | cut -d ":" -f 2 | cut -d "(" -f 1`

#echo $status

if [[ $status="active" ]]; then
 echo "jenkins is running!"

else
    echo "jenkis is not running!"
    echo "_______________________"
    echo "starting jenkins service now!!"
    systemctl start jenkins.service

fi