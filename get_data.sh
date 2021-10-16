#!/bin/bash

while true
do
	wget https://ch09.challenge-2021.tk/ -O image.exif -Sq -o header
	name=$(grep filename header | cut -d '=' -f 2)
	echo $name 
	mv image.exif datas/$name
done
