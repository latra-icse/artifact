#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "i >= 0" /tmp/benchmark/smt_benchmarks/bin/cvc4-42fe4ae --strings-exp --lang smt2 $* < issue5378.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
