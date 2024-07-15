#!/bin/bash

echo "Starting Countdown"



#for i in {30..1}; d
i=5
while [ $i -ge 0 ] ; do 
  echo -n "sleeping for $i \033[0K\r" ; sleep 1 ; i=$((i-1))
done






