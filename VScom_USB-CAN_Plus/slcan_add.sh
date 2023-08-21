#!/bin/sh

sleep 1
slcand -o -c -f -s8 -t hw -S 3000000 /dev/ttyUSB$1 slcan$1
sleep 1
ifconfig slcan$1 up
