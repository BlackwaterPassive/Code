#!/bin/bash

cd /home/pi/

git -C /home/pi/Pics/ add *

if [[ $? != 0 ]]
then 
   mail -s "add failed" darren.ditto@alumni.unbc.ca
   exit 1
fi

git -C /home/pi/Pics/ commit -a -m "timelapse picam auto updater"
if [[ $? != 0 ]]
then 
   mail -s "commit failed" darren.ditto@alumni.unbc.ca
   exit 1
fi

git -C /home/pi/Pics/ push
if [[ $? != 0 ]]
then 
   mail -s "push failed" darren.ditto@alumni.unbc.ca
   exit 1
fi

mail -s "push ok" darren.ditto@alumni.unbc.ca
