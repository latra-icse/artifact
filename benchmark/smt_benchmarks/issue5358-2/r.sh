#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "No variable should be assigned a witness term if we get here." /tmp/benchmark/smt_benchmarks/bin/cvc4-e456766 --lang smt2 $* < issue5358-2.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
