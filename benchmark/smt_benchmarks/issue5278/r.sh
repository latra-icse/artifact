#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_err.py 2 "d_rewriteStack->find" /tmp/benchmark/smt_benchmarks/bin/cvc4-ae8e63d --ext-rewrite-quant --lang smt2 $* < issue5278.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
