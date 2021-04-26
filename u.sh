#!/bin/bash
ps -eaf | grep script.sh > temp.txt 
PPID1=$(sed '1q;d' temp.txt | awk '{print $2}')
PPID2=$(sed '2q;d' temp.txt | awk '{print $2}')
PPID3=$(sed '3q;d' temp.txt | awk '{print $2}')
PIDt1=$(ps -eaf | grep "timeout" | grep $PPID1 |awk '{print $2}')
PIDt2=$(ps -eaf | grep "timeout" | grep $PPID2 |awk '{print $2}')
PIDt3=$(ps -eaf | grep "timeout" | grep $PPID3 |awk '{print $2}')
PID1=$(ps -eaf | grep "bash" | grep $PIDt1 |awk '{print $2}')
PID2=$(ps -eaf | grep "bash" | grep $PIDt2 |awk '{print $2}')
PID3=$(ps -eaf | grep "bash" | grep $PIDt3 |awk '{print $2}')
kill -9 $PID1 $PID2 $PID3 $PPID1 $PPID2 $PPID3
rm temp.txt
echo "KILLED!!"