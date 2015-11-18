#!/bin/bash

pid=$(ps axo pid,command | grep "[A]crobat" | awk '{print $1}')

echo "Pid is: "$pid

if [ "$pid" ]
    then
        echo "Acrobat is Running"
        echo "Killing Acrobat pid"
            kill $pid
        echo "Pid killed"
    else
        echo "Acrobat not running"
    fi
 
