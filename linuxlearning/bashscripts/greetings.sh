#!/bin/bash

#this is a greetings programs based on hour

HOUR=$(date +%H)

if [ $HOUR -lt 12 ]
then
	echo "Good Morning $USER"
elif [ $HOUR  -ge 12 && $HOUR -lt 17 ]
then
	echo "Good Afternoon $USER"
else
	echo "Good Evening $USER"
fi
