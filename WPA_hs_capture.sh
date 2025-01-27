#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Usage $0 <interface>"
	exit 1
fi
airmon-ng check kill
INTERFACE=$1
wifite --kill -i $INTERFACE -inf -p 8 --wpa --random-mac --skip-crack --clients-only --wpadt 2 --wpat 15 --no-pmkid --no-wps --daemon -ic -pow 30;
