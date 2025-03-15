#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "produced core was satisfiable" /tmp/benchmark/smt_benchmarks/bin/cvc4-83a502c --check-unsat-cores --lang smt2 $* < issue5461-1.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
