#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "expr::hasFreeVar" /tmp/benchmark/smt_benchmarks/bin/cvc4-f2ed7b1 -i --lang smt2 $* < issue5483.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
