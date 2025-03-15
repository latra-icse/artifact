#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "r2.d_node == response.d_node" /tmp/benchmark/smt_benchmarks/bin/cvc4-3b50dfe --preprocess-only --lang smt2 $* < cvc4-regress1.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
