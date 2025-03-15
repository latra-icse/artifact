#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "is_finite_type" /tmp/benchmark/smt_benchmarks/bin/yices-0f9e45f $* < yices-287.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
