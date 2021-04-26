#!/bin/bash

# Get Parent PIDs 
PPID1=$(ps -eaf | grep "runScript" | sed '1q;d' | awk '{print $2}')
PPID2=$(ps -eaf | grep "runScript" | sed '2q;d' | awk '{print $2}')
PPID3=$(ps -eaf | grep "runScript" | sed '3q;d' | awk '{print $2}')

# Get Timeout Script PIDs

TPID1=$(ps -eaf | grep "timeout" | grep $PPID1 | awk '{print $2}')
TPID2=$(ps -eaf | grep "timeout" | grep $PPID2 | awk '{print $2}')
TPID3=$(ps -eaf | grep "timeout" | grep $PPID3 | awk '{print $2}')

# Get Script PIDs

PID1=$(ps -eaf | grep "bash" | grep $TPID1 | awk '{print $2}')
PID2=$(ps -eaf | grep "bash" | grep $TPID2 | awk '{print $2}')
PID3=$(ps -eaf | grep "bash" | grep $TPID3 | awk '{print $2}')

# Kill

kill $PID1 $PID2 $PID3 $PPID1 $PPID2 $PPID3
echo "6 scripts killed"