#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/result_differs_unknown.py /tmp/benchmark/smt_benchmarks/bin/cvc4-b212e645 -q --full-saturate-quant --full-saturate-quant-limit=1 --lang smt2 $* < andy-1.smt2
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
