#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Usage $0 <interface>"
	exit 1
fi
airmon-ng check kill
INTERFACE=$1
wifite -i $INTERFACE -p 10 -inf --wpa --pmkid --pmkid-timeout 45 --daemon -ic -pow 30;

