#!/bin/bash
/tmp/benchmark/smt_benchmarks/bin/z3-79734f2 $* < z3-4737.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
