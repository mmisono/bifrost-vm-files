#!/bin/bash

cmd=$1

if [[ $cmd == 'clear' ]]; then
    rmmod breakdown
    insmod breakdown.ko cmd=2
elif [[ $cmd == 'enable' ]]; then
    rmmod breakdown
    insmod breakdown.ko cmd=0 arg=1
elif [[ $cmd == 'disable' ]]; then
    rmmod breakdown
    insmod breakdown.ko cmd=0 arg=0
elif [[ $cmd == 'show' ]]; then
    rmmod breakdown
    insmod breakdown.ko cmd=3
    dmesg
fi
