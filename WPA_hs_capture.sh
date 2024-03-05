#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Usage $0 <interface>"
	exit 1
fi

INTERFACE=$1

while (true)
do
killall wifite;
wifite --kill -i $INTERFACE -p 8 --wpa --random-mac --skip-crack --clients-only -ic --wpadt 2 --wpat 15 --no-pmkid --no-wps;
sleep 1;
done;
