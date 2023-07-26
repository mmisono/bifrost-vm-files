#!/bin/bash

WORK_DIR=/root/perf

#$WORK_DIR/vm-perf report --stdio --show-total-period -i $@
$WORK_DIR/vm-perf report -i $@
