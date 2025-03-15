#!/bin/bash
/tmp/benchmark/smt_benchmarks/bin/z3-6f2b569 $* < z3-3293.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
