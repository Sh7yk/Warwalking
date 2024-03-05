#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Usage $0 <interface>"
	exit 1
fi

INTERFACE=$1

while (true)
do
killall wifite;
wifite -i $INTERFACE -p 10 --wpa --pmkid --pmkid-timeout 45;
sleep 1;
done;
