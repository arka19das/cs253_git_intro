#!/bin/bash
#PID of all script processes
ScPID1=$(ps -ef | grep script | sed -n 1p | awk '{print $2}')
ScPID2=$(ps -ef | grep script | sed -n 2p | awk '{print $2}')
ScPID3=$(ps -ef | grep script | sed -n 3p | awk '{print $2}')

#PID of all timeout processes
TPID1=$(ps -f --ppid $ScPID1 | sed -n 2p | awk '{print $2}')
TPID2=$(ps -f --ppid $ScPID2 | sed -n 2p | awk '{print $2}')
TPID3=$(ps -f --ppid $ScPID3 | sed -n 2p | awk '{print $2}')

#PID of all child bash processes
BPID1=$(ps -f --ppid $TPID1  | sed -n 2p | awk '{print $2}')
BPID2=$(ps -f --ppid $TPID2  | sed -n 2p | awk '{print $2}')
BPID3=$(ps -f --ppid $TPID3  | sed -n 2p | awk '{print $2}')

kill -9 $ScPID1 $ScPID2 $ScPID3 $TPID1 $TPID2 $TPID3 $BPID1 $BPID2 $BPID3