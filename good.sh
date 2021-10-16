#!/bin/bash

for i in $(seq 99)
do
    artiste=$(exif datas/$i.jpg | grep Artiste | cut -d '|' -f 2)
    if [ "$artiste" != "Tm9wZQ==" ]
    then

        echo $artiste
    fi
done