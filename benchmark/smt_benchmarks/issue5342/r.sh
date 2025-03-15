#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "ERRORS SATISFYING" /tmp/benchmark/smt_benchmarks/bin/cvc4-0a4ee1a --sets-ext --check-models --lang smt2 $* < issue5342.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
