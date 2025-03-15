#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "tm->getValue" /tmp/benchmark/smt_benchmarks/bin/cvc4-04640a1 --no-nl-ext --no-nl-cad --debug-check-models --lang smt2 $* < issue5348.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
