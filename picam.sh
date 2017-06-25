#!/bin/bash

DATE=`/bin/date +%Y_%m_%d_%H_%M_%S`

/usr/bin/raspistill -n -vf -hf -o /home/pi/Build/$DATE.jpg 
