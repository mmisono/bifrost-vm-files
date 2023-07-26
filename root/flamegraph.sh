#!/bin/bash

WORK_DIR=/root/perf/

#$WORK_DIR/vm-perf inject -v -s -i $WORK_DIR/perf.data.raw -o $WORK_DIR/perf.data

$WORK_DIR/vm-perf script -i $WORK_DIR/perf.data > $WORK_DIR/in-fb.perf
#$WORK_DIR/vm-perf script -F comm,pid,tid,cpu,time,period,event,ip,sym,dso,trace \
#	-i $WORK_DIR/perf.data > $WORK_DIR/in-fb.perf

scp $WORK_DIR/in-fb.perf ldj@10.1.1.200:~/sev/profile/
#scp $WORK_DIR/perf.data ldj@10.1.1.200:~/sev/profile/
