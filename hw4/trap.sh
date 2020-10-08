#!/bin/bash
#trap "cp /var/run/trap.pid /var/run/trapid.txt;rm /var/run/trap.pid; echo $(sh endTerm.sh)" TERM

trap "echo Traped, Signal Detected! >> /root/trap.log" INT QUIT TERM HUP USR1 USR2
trap "rm /var/run/trap.pid && exit 0;" TERM
echo $$ > /var/run/trap.pid
while true
do
echo "time tick ... $0 $$ $(date)" >> /root/trap.log
sleep 10
done

exit 0