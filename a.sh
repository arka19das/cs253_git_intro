#!/bin/bash

ps -l | grep run.sh > temp.txt

#Parent PIDs 
PPID1=$(sed '1q;d' temp.txt | awk '{print $4}')
PPID2=$(sed '2q;d' temp.txt | awk '{print $4}')
PPID3=$(sed '3q;d' temp.txt | awk '{print $4}')

#timeout IDS
PIDtimeout1=$(ps -eaf | grep $PPID1  | grep "timeout" | awk '{print $2}') 
PIDtimeout2=$(ps -eaf | grep $PPID2 | grep "timeout"  | awk '{print $2}')
PIDtimeout3=$(ps -eaf | grep $PPID3 | grep "timeout" | awk '{print $2}')

#bash IDs
PID1=$(ps -eaf | grep "bash" | grep $PIDtimeout1 | awk '{print $2}') 
PID2=$(ps -eaf | grep "bash" | grep $PIDtimeout2 | awk '{print $2}')
PID3=$(ps -eaf | grep "bash" | grep $PIDtimeout3 | awk '{print $2}')

kill   $PPID1 $PPID2 $PPID3 $PID1 $PID2 $PID3
rm temp.txt
#line addition 