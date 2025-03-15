#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "d_substitutions.find" /tmp/benchmark/smt_benchmarks/bin/cvc4-865d1ee -i --check-models --dump-models --lang smt2 $* < issue5540.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
