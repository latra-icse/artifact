#!/bin/bash
/tmp/benchmark/smt_benchmarks/stuff/match_out.py 2 "constructBestConditional" /tmp/benchmark/smt_benchmarks/bin/cvc4-afc70ac --lang sygus $* < issue2935.sy
RET=$?
if [ $RET -eq 0 ]; then
    exit 1
elif [ $RET -eq 1 ]; then
    exit 0
else
    exit 2
fi
