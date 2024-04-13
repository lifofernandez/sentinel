#!/bin/bash
DIR="/Recordings/"
filename=$(ls $DIR | tail -2 | head -1)
echo "processing $filename"
ffmpeg -y -loglevel 0 -f s24le -ar 48k -ac 2 -i $DIR$filename -b:a 192k -filter:a loudnorm "/home/pi/lastfile.mp3"
