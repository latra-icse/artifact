#!/bin/bash
/tmp/benchmark/smt_benchmarks/bin/z3-e79542c $* < z3-2468.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
