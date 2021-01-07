#!/bin/bash

if [ "$1" == "" ]
then
echo "please include ip address prefix like xxx.xxx.xxx"

else
echo "sweeping..."
for ip in `seq 1 254`; do
ping $1.$ip -c 1 | grep "64 bytes" | cut -d " " -f 4 | sed 's/://' &
done
fi
