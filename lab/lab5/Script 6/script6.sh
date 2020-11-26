#!/bin/sh
mkdir photos
cal=1
while [ $cal -le $1 ]
do 
	wget "https://xkcd.com/$cal"
	url=$(grep -o "http.*jpg" $cal)
	wget $url > "./photos/$cal"
	cal=$((cal+1))
done

eog ./photos
